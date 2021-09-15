
_look:

;vm.c,19 :: 		char look(int a)
;vm.c,21 :: 		switch(a)
	GOTO       L_look0
;vm.c,23 :: 		case 0:
L_look2:
;vm.c,24 :: 		return '0';
	MOVLW      48
	MOVWF      R0+0
	RETURN
;vm.c,25 :: 		case 1:
L_look3:
;vm.c,26 :: 		return '1';
	MOVLW      49
	MOVWF      R0+0
	RETURN
;vm.c,27 :: 		case 2:
L_look4:
;vm.c,28 :: 		return '2';
	MOVLW      50
	MOVWF      R0+0
	RETURN
;vm.c,29 :: 		case 3:
L_look5:
;vm.c,30 :: 		return '3';
	MOVLW      51
	MOVWF      R0+0
	RETURN
;vm.c,31 :: 		case 4:
L_look6:
;vm.c,32 :: 		return '4';
	MOVLW      52
	MOVWF      R0+0
	RETURN
;vm.c,33 :: 		case 5:
L_look7:
;vm.c,34 :: 		return '5';
	MOVLW      53
	MOVWF      R0+0
	RETURN
;vm.c,35 :: 		case 6:
L_look8:
;vm.c,36 :: 		return '6';
	MOVLW      54
	MOVWF      R0+0
	RETURN
;vm.c,37 :: 		case 7:
L_look9:
;vm.c,38 :: 		return '7';
	MOVLW      55
	MOVWF      R0+0
	RETURN
;vm.c,39 :: 		case 8:
L_look10:
;vm.c,40 :: 		return '8';
	MOVLW      56
	MOVWF      R0+0
	RETURN
;vm.c,41 :: 		case 9:
L_look11:
;vm.c,42 :: 		return '9';
	MOVLW      57
	MOVWF      R0+0
	RETURN
;vm.c,43 :: 		default:
L_look12:
;vm.c,44 :: 		return '.';
	MOVLW      46
	MOVWF      R0+0
	RETURN
;vm.c,45 :: 		}
L_look0:
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look21
	MOVLW      0
	XORWF      FARG_look_a+0, 0
L__look21:
	BTFSC      STATUS+0, 2
	GOTO       L_look2
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look22
	MOVLW      1
	XORWF      FARG_look_a+0, 0
L__look22:
	BTFSC      STATUS+0, 2
	GOTO       L_look3
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look23
	MOVLW      2
	XORWF      FARG_look_a+0, 0
L__look23:
	BTFSC      STATUS+0, 2
	GOTO       L_look4
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look24
	MOVLW      3
	XORWF      FARG_look_a+0, 0
L__look24:
	BTFSC      STATUS+0, 2
	GOTO       L_look5
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look25
	MOVLW      4
	XORWF      FARG_look_a+0, 0
L__look25:
	BTFSC      STATUS+0, 2
	GOTO       L_look6
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look26
	MOVLW      5
	XORWF      FARG_look_a+0, 0
L__look26:
	BTFSC      STATUS+0, 2
	GOTO       L_look7
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look27
	MOVLW      6
	XORWF      FARG_look_a+0, 0
L__look27:
	BTFSC      STATUS+0, 2
	GOTO       L_look8
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look28
	MOVLW      7
	XORWF      FARG_look_a+0, 0
L__look28:
	BTFSC      STATUS+0, 2
	GOTO       L_look9
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look29
	MOVLW      8
	XORWF      FARG_look_a+0, 0
L__look29:
	BTFSC      STATUS+0, 2
	GOTO       L_look10
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look30
	MOVLW      9
	XORWF      FARG_look_a+0, 0
L__look30:
	BTFSC      STATUS+0, 2
	GOTO       L_look11
	GOTO       L_look12
;vm.c,46 :: 		}
	RETURN
; end of _look

_main:

;vm.c,50 :: 		void main()
;vm.c,54 :: 		char *volt = "00.0";
	MOVLW      ?lstr1_vm+0
	MOVWF      main_volt_L0+0
	MOVLW      ?lstr2_vm+0
	MOVWF      main_current_L0+0
;vm.c,56 :: 		TRISA  = 0xFF;
	MOVLW      255
	MOVWF      TRISA+0
;vm.c,57 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;vm.c,58 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;vm.c,59 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;vm.c,61 :: 		do
L_main13:
;vm.c,64 :: 		ADCON1 = 0x00;
	CLRF       ADCON1+0
;vm.c,65 :: 		v = ADC_Read(2);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      main_v_L0+0
	MOVF       R0+1, 0
	MOVWF      main_v_L0+1
;vm.c,66 :: 		i = ADC_Read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;vm.c,67 :: 		i = (i*4.89)/0.47;
	CALL       _Word2Double+0
	MOVLW      225
	MOVWF      R4+0
	MOVLW      122
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      215
	MOVWF      R4+0
	MOVLW      163
	MOVWF      R4+1
	MOVLW      112
	MOVWF      R4+2
	MOVLW      125
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;vm.c,68 :: 		v = ((v*4.89)/20)*120;
	MOVF       main_v_L0+0, 0
	MOVWF      R0+0
	MOVF       main_v_L0+1, 0
	MOVWF      R0+1
	CALL       _Word2Double+0
	MOVLW      225
	MOVWF      R4+0
	MOVLW      122
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      131
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      112
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      main_v_L0+0
	MOVF       R0+1, 0
	MOVWF      main_v_L0+1
;vm.c,69 :: 		if(v!=vp || i!=ip )
	MOVF       R0+1, 0
	XORWF      main_vp_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVF       main_vp_L0+0, 0
	XORWF      R0+0, 0
L__main31:
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVF       main_i_L0+1, 0
	XORWF      main_ip_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVF       main_ip_L0+0, 0
	XORWF      main_i_L0+0, 0
L__main32:
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	GOTO       L_main18
L__main20:
;vm.c,70 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
L_main18:
;vm.c,71 :: 		vp = v;
	MOVF       main_v_L0+0, 0
	MOVWF      main_vp_L0+0
	MOVF       main_v_L0+1, 0
	MOVWF      main_vp_L0+1
;vm.c,72 :: 		ip = i;
	MOVF       main_i_L0+0, 0
	MOVWF      main_ip_L0+0
	MOVF       main_i_L0+1, 0
	MOVWF      main_ip_L0+1
;vm.c,73 :: 		volt[0] = look(v/10000);
	MOVF       main_volt_L0+0, 0
	MOVWF      FLOC__main+0
	MOVLW      16
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVF       main_v_L0+0, 0
	MOVWF      R0+0
	MOVF       main_v_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;vm.c,74 :: 		volt[1] = look((v/1000)%10);
	INCF       main_volt_L0+0, 0
	MOVWF      FLOC__main+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_v_L0+0, 0
	MOVWF      R0+0
	MOVF       main_v_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;vm.c,75 :: 		volt[3] = look((v/100)%10);
	MOVLW      3
	ADDWF      main_volt_L0+0, 0
	MOVWF      FLOC__main+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_v_L0+0, 0
	MOVWF      R0+0
	MOVF       main_v_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;vm.c,76 :: 		Lcd_Out(1,1,"Voltage = ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_vm+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;vm.c,77 :: 		Lcd_Out(1,11,volt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       main_volt_L0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;vm.c,78 :: 		Lcd_Out(1,16,"V");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_vm+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;vm.c,80 :: 		current[0] = look(i/1000);
	MOVF       main_current_L0+0, 0
	MOVWF      FLOC__main+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;vm.c,81 :: 		current[2] = look((i/100)%10);
	MOVLW      2
	ADDWF      main_current_L0+0, 0
	MOVWF      FLOC__main+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;vm.c,82 :: 		current[3] = look((i/10)%10);
	MOVLW      3
	ADDWF      main_current_L0+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;vm.c,83 :: 		Lcd_Out(2,1,"Current = ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_vm+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;vm.c,84 :: 		Lcd_Out(2,11,current);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       main_current_L0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;vm.c,85 :: 		Lcd_Out(2,16,"A");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_vm+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;vm.c,86 :: 		Delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;vm.c,87 :: 		} while(1);
	GOTO       L_main13
;vm.c,88 :: 		}
	GOTO       $+0
; end of _main
