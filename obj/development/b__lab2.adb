pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__lab2.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__lab2.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;

package body ada_main is

   E109 : Short_Integer; pragma Import (Ada, E109, "ada__tags_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__strings__text_buffers_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "system__bb__timing_events_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "ada__exceptions_E");
   E044 : Short_Integer; pragma Import (Ada, E044, "system__soft_links_E");
   E042 : Short_Integer; pragma Import (Ada, E042, "system__exception_table_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "ada__streams_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "system__finalization_root_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "ada__finalization_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "system__storage_pools_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "system__finalization_masters_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__real_time_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "system__pool_global_E");
   E204 : Short_Integer; pragma Import (Ada, E204, "system__tasking__protected_objects_E");
   E210 : Short_Integer; pragma Import (Ada, E210, "system__tasking__protected_objects__multiprocessors_E");
   E223 : Short_Integer; pragma Import (Ada, E223, "system__tasking__restricted__stages_E");
   E228 : Short_Integer; pragma Import (Ada, E228, "hal__audio_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "hal__bitmap_E");
   E153 : Short_Integer; pragma Import (Ada, E153, "hal__framebuffer_E");
   E188 : Short_Integer; pragma Import (Ada, E188, "hal__gpio_E");
   E200 : Short_Integer; pragma Import (Ada, E200, "hal__i2c_E");
   E232 : Short_Integer; pragma Import (Ada, E232, "hal__real_time_clock_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "hal__spi_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "hal__time_E");
   E288 : Short_Integer; pragma Import (Ada, E288, "hal__touch_panel_E");
   E247 : Short_Integer; pragma Import (Ada, E247, "hal__uart_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "bitmap_color_conversion_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "bmp_fonts_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "hershey_fonts_E");
   E148 : Short_Integer; pragma Import (Ada, E148, "bitmapped_drawing_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "ili9341_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "l3gd20_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "ravenscar_time_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "soft_drawing_bitmap_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "memory_mapped_bitmap_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "stm32__adc_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "stm32__dac_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "stm32__dma__interrupts_E");
   E260 : Short_Integer; pragma Import (Ada, E260, "stm32__dma2d_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "stm32__dma2d__interrupt_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "stm32__dma2d__polling_E");
   E267 : Short_Integer; pragma Import (Ada, E267, "stm32__dma2d_bitmap_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "stm32__exti_E");
   E252 : Short_Integer; pragma Import (Ada, E252, "stm32__fmc_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "stm32__i2s_E");
   E234 : Short_Integer; pragma Import (Ada, E234, "stm32__power_control_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "stm32__rtc_E");
   E250 : Short_Integer; pragma Import (Ada, E250, "stm32__sdram_E");
   E239 : Short_Integer; pragma Import (Ada, E239, "stm32__spi_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "stm32__spi__dma_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "stm32__gpio_E");
   E197 : Short_Integer; pragma Import (Ada, E197, "stm32__i2c_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "stm32__i2c__dma_E");
   E182 : Short_Integer; pragma Import (Ada, E182, "stm32__syscfg_E");
   E245 : Short_Integer; pragma Import (Ada, E245, "stm32__usarts_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "stm32__device_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "stm32__ltdc_E");
   E258 : Short_Integer; pragma Import (Ada, E258, "framebuffer_ltdc_E");
   E290 : Short_Integer; pragma Import (Ada, E290, "stmpe811_E");
   E256 : Short_Integer; pragma Import (Ada, E256, "framebuffer_ili9341_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "touch_panel_stmpe811_E");
   E162 : Short_Integer; pragma Import (Ada, E162, "stm32__board_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Exception_Tracebacks_Symbolic : Integer;
      pragma Import (C, Exception_Tracebacks_Symbolic, "__gl_exception_tracebacks_symbolic");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := 0;
      WC_Encoding := 'b';
      Locking_Policy := 'C';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := 'F';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, True, True, False, False, False, False, True, 
           False, False, False, False, False, False, False, False, 
           True, True, True, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, True, True, False, False, True, True, 
           False, False, False, True, False, False, False, False, 
           True, False, True, True, False, False, False, False, 
           False, True, True, True, True, True, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, True, False, False, False, False, False, False, 
           False, False, False, False, True, True, False, True, 
           False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, False, True, True, False, False, 
           False, False, False, True, True, True, True, False, 
           False, False, False, True, False, False, True, True, 
           False, True, True, False, True, True, True, True, 
           False, False, False, False, False, True, False, False, 
           True, False, False, False, True, True, False, True, 
           False, True, False, False, False, True, False, False, 
           False, False, False, False, False, False, False, False, 
           False, True, True, True, False, False, True, False, 
           True, True, True, False, True, True, False, False, 
           True, True, True, False, False, False, False, False, 
           False, False, False, True, False, False, False, False, 
           True, False),
         Count => (0, 0, 0, 1, 0, 0, 0, 0, 4, 0),
         Unknown => (False, False, False, False, False, False, False, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Exception_Tracebacks_Symbolic := 1;
      Detect_Blocking := 1;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Ada.Strings.Text_Buffers'Elab_Spec;
      E100 := E100 + 1;
      System.Bb.Timing_Events'Elab_Spec;
      E098 := E098 + 1;
      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      Ada.Tags'Elab_Body;
      E109 := E109 + 1;
      System.Exception_Table'Elab_Body;
      E042 := E042 + 1;
      E044 := E044 + 1;
      E016 := E016 + 1;
      Ada.Streams'Elab_Spec;
      E134 := E134 + 1;
      System.Finalization_Root'Elab_Spec;
      E140 := E140 + 1;
      Ada.Finalization'Elab_Spec;
      E138 := E138 + 1;
      System.Storage_Pools'Elab_Spec;
      E142 := E142 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E137 := E137 + 1;
      Ada.Real_Time'Elab_Body;
      E006 := E006 + 1;
      System.Pool_Global'Elab_Spec;
      E144 := E144 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E204 := E204 + 1;
      System.Tasking.Protected_Objects.Multiprocessors'Elab_Body;
      E210 := E210 + 1;
      System.Tasking.Restricted.Stages'Elab_Body;
      E223 := E223 + 1;
      HAL.AUDIO'ELAB_SPEC;
      E228 := E228 + 1;
      HAL.BITMAP'ELAB_SPEC;
      E132 := E132 + 1;
      HAL.FRAMEBUFFER'ELAB_SPEC;
      E153 := E153 + 1;
      HAL.GPIO'ELAB_SPEC;
      E188 := E188 + 1;
      HAL.I2C'ELAB_SPEC;
      E200 := E200 + 1;
      HAL.REAL_TIME_CLOCK'ELAB_SPEC;
      E232 := E232 + 1;
      HAL.SPI'ELAB_SPEC;
      E163 := E163 + 1;
      HAL.TIME'ELAB_SPEC;
      E281 := E281 + 1;
      HAL.TOUCH_PANEL'ELAB_SPEC;
      E288 := E288 + 1;
      HAL.UART'ELAB_SPEC;
      E247 := E247 + 1;
      E130 := E130 + 1;
      E150 := E150 + 1;
      E152 := E152 + 1;
      E148 := E148 + 1;
      ILI9341'ELAB_SPEC;
      ILI9341'ELAB_BODY;
      E279 := E279 + 1;
      L3GD20'ELAB_SPEC;
      L3GD20'ELAB_BODY;
      E285 := E285 + 1;
      Ravenscar_Time'Elab_Spec;
      Ravenscar_Time'Elab_Body;
      E283 := E283 + 1;
      Soft_Drawing_Bitmap'Elab_Spec;
      Soft_Drawing_Bitmap'Elab_Body;
      E274 := E274 + 1;
      Memory_Mapped_Bitmap'Elab_Spec;
      Memory_Mapped_Bitmap'Elab_Body;
      E272 := E272 + 1;
      STM32.ADC'ELAB_SPEC;
      E156 := E156 + 1;
      E171 := E171 + 1;
      E216 := E216 + 1;
      E260 := E260 + 1;
      STM32.DMA2D.INTERRUPT'ELAB_BODY;
      E263 := E263 + 1;
      E265 := E265 + 1;
      STM32.DMA2D_BITMAP'ELAB_SPEC;
      STM32.DMA2D_BITMAP'ELAB_BODY;
      E267 := E267 + 1;
      E184 := E184 + 1;
      E252 := E252 + 1;
      STM32.I2S'ELAB_SPEC;
      STM32.I2S'ELAB_BODY;
      E227 := E227 + 1;
      E234 := E234 + 1;
      STM32.RTC'ELAB_SPEC;
      STM32.RTC'ELAB_BODY;
      E231 := E231 + 1;
      E250 := E250 + 1;
      STM32.SPI'ELAB_SPEC;
      STM32.SPI'ELAB_BODY;
      E239 := E239 + 1;
      STM32.SPI.DMA'ELAB_SPEC;
      STM32.SPI.DMA'ELAB_BODY;
      E241 := E241 + 1;
      STM32.GPIO'ELAB_SPEC;
      STM32.I2C'ELAB_SPEC;
      STM32.I2C.DMA'ELAB_SPEC;
      E182 := E182 + 1;
      STM32.GPIO'ELAB_BODY;
      E177 := E177 + 1;
      STM32.USARTS'ELAB_SPEC;
      STM32.DEVICE'ELAB_SPEC;
      E165 := E165 + 1;
      STM32.I2C'ELAB_BODY;
      E197 := E197 + 1;
      STM32.I2C.DMA'ELAB_BODY;
      E202 := E202 + 1;
      STM32.USARTS'ELAB_BODY;
      E245 := E245 + 1;
      STM32.LTDC'ELAB_BODY;
      E276 := E276 + 1;
      Framebuffer_Ltdc'Elab_Spec;
      Framebuffer_Ltdc'Elab_Body;
      E258 := E258 + 1;
      STMPE811'ELAB_SPEC;
      STMPE811'ELAB_BODY;
      E290 := E290 + 1;
      Framebuffer_Ili9341'Elab_Spec;
      Touch_Panel_Stmpe811'Elab_Spec;
      STM32.BOARD'ELAB_SPEC;
      STM32.BOARD'ELAB_BODY;
      E162 := E162 + 1;
      Framebuffer_Ili9341'Elab_Body;
      E256 := E256 + 1;
      Touch_Panel_Stmpe811'Elab_Body;
      E287 := E287 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_lab2");

   procedure main is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
   end;

--  BEGIN Object file/option list
   --   /home/sabermaster/lab2/obj/development/lab2.o
   --   -L/home/sabermaster/lab2/obj/development/
   --   -L/home/sabermaster/lab2/obj/development/
   --   -L/home/sabermaster/lab2/alire/cache/dependencies/stm32_gui_0.1.0_e2e5c9d4/lib/
   --   -L/home/sabermaster/lab2/alire/cache/dependencies/adl_middleware_0.2.0_623c6913/lib/
   --   -L/home/sabermaster/lab2/alire/cache/dependencies/hal_0.3.0_095ae514/lib/
   --   -L/home/sabermaster/lab2/alire/cache/dependencies/stm32_hal_0.1.0_e9150be9/lib/
   --   -L/home/sabermaster/lab2/alire/cache/dependencies/cortex_m_0.5.0_39667d15/lib/
   --   -L/home/sabermaster/lab2/alire/cache/dependencies/stm32f429disco_0.1.0_3c54b8f0/lib/
   --   -L/home/sabermaster/lab2/alire/cache/dependencies/embedded_components_0.2.0_37c39b23/lib/
   --   -L/home/sabermaster/.config/alire/cache/dependencies/gnat_arm_elf_12.2.1_9be2ca0e/arm-eabi/lib/gnat/embedded-stm32f429disco/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
--  END Object file/option list   

end ada_main;
