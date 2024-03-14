with STM32.Device; use STM32.Device;
with STM32.GPIO;   use STM32.GPIO;
with Interfaces; use Interfaces;

with STM32.Board; use STM32.Board;
with HAL.Bitmap;  use HAL.Bitmap;
with BMP_Fonts;
with STM32.ADC;   use STM32.ADC;
with Ada.Text_IO;
with Interfaces;  use Interfaces;

with Ada.Real_Time; use Ada.Real_Time;

with Bitmapped_Drawing;
with Bitmap_Color_Conversion; use Bitmap_Color_Conversion;

with HAL.Framebuffer;

procedure Lab2 is

   Converter     : Analog_To_Digital_Converter renames ADC_2;
   Input_Channel : constant Analog_Input_Channel := 13;
   Input         : constant GPIO_Point           := PC3;

   --  See the mapping of channels to GPIO pins at the top of the ADC package.
   --  Also see the board's User Manual for which GPIO pins are available.
   --  For example, on the F429 Discovery board, PA5 is not used by some
   --  other device, and maps to ADC channel 5.

   All_Regular_Conversions : constant Regular_Channel_Conversions :=
     (1 => (Channel => Input_Channel, Sample_Time => Sample_144_Cycles));

   Successful : Boolean;

   function Read_Group return Unsigned_32 is
   begin

      Start_Conversion (Converter);
      Poll_For_Status
        (Converter, Regular_Channel_Conversion_Complete, Successful);
      return
        (Unsigned_32 (Conversion_Value (Converter))) * ADC_Supply_Voltage /
        16#FFF#;

   end Read_Group;

   procedure Init_ADC is

      procedure Configure_Analog_Input is
      begin
         Enable_Clock (Input);
         Configure_IO (Input, (Mode => Mode_Analog, Resistors => Floating));
      end Configure_Analog_Input;

   begin
      Configure_Analog_Input;

      Enable_Clock (Converter);

      Reset_All_ADC_Units;

      Configure_Common_Properties
        (Mode => Independent, Prescalar => PCLK2_Div_2, DMA_Mode => Disabled,
         Sampling_Delay => Sampling_Delay_5_Cycles);

      Configure_Unit
        (Converter, Resolution => ADC_Resolution_12_Bits,
         Alignment             => Right_Aligned);

      Configure_Regular_Conversions
        (Converter, Continuous => False, Trigger => Software_Triggered,
         Enable_EOC => True, Conversions => All_Regular_Conversions);

      Enable (Converter);
   end Init_ADC;

   procedure Print_To_LCD (Str : String) is
      BG : constant Bitmap_Color := (Alpha => 255, others => 64);
      FG : constant Bitmap_Color := (Alpha => 255, others => 255);
   begin
      Display.Hidden_Buffer (1).Set_Source (BG);
      Display.Hidden_Buffer (1).Fill;

      Bitmapped_Drawing.Draw_String
        (Display.Hidden_Buffer (1).all, Start => (0, 0), Msg => Str,
         Font => BMP_Fonts.Font8x8, Foreground => FG, Background => BG);

      Display.Update_Layer (1, Copy_Back => True);
   end Print_To_LCD;
   voltage : Unsigned_32 := 0;
begin
   Init_ADC;
   Display.Initialize;
   Display.Initialize_Layer (1, ARGB_8888);
   loop
      voltage := Read_Group;
      Print_To_LCD ("voltage: " & voltage'Image);
      delay 0.1;
   end loop;
end Lab2;

