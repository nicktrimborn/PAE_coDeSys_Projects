CoDeSys+7   �                    @        @   2.3.9.62�    @   ConfigExtension�          CommConfigEx7             CommConfigExEnd   ME�                  IB                    % QB                    %   ME_End   CM�      CM_End   CT�   ��������   CT_End   ConfigExtensionEnd/    @                             �?4^ +    @      ��������             0��]        *'   @   D   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         �)�S  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��	           Load Start Value    PV           ��
           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             �)�S  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��	           Reset Counter to 0    PV           ��
           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             �)�S  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��
       
    Count Up    CD            ��           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             �)�S  �   ����           DELETE               STR               ��              LEN           ��	              POS           ��
                 DELETE                                         �)�S  �   ����           F_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �)�S  �   ����           FIND               STR1               ��	              STR2               ��
                 FIND                                     �)�S  �   ����           INSERT               STR1               ��	              STR2               ��
              POS           ��                 INSERT                                         �)�S  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         �)�S  �   ����           LEN               STR               ��                 LEN                                     �)�S  �   ����           MID               STR               ��              LEN           ��	              POS           ��
                 MID                                         �)�S  �   ����           R_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �)�S  �   ����           REPLACE               STR1               ��	              STR2               ��
              L           ��              P           ��                 REPLACE                                         �)�S  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         �)�S  �   ����           RS               SET            ��              RESET1            ��	                 Q1            ��                       �)�S  �   ����           RTC           M             ��              DiffTime            ��                 EN            ��              PDT           ��                 Q            ��              CDT           ��                       �)�S  �   ����           SEMA           X             ��                 CLAIM            ��
              RELEASE            ��                 BUSY            ��                       �)�S  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��                       �)�S  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��       2    is FALSE, PT seconds after IN had a falling edge    ET           ��           elapsed time             �)�S  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��       0    is TRUE, PT seconds after IN had a rising edge    ET           ��           elapsed time             �)�S  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��           The pulse    ET           ��       &    The current phase of the High-Signal             �)�S  �   ����                  FB_SIMPLEMANAGER           rsEmergency                 RS                	   rsRunning                 RS                   bResetRequired                       reset is required      bEmergencyClear                       Emergency cleared   bReset                       Reset signal   bStart             	          Start signal   bStop             
          Stop signal      oEmergencyClear                       Emergency is cleared   oRun                    !   System can be started and running            �.�]  @    ����           FB_SIMPLEMODEMANAGER           modePrev               EN_Mode    !           Mode at previous PLC cycle   bModeChanged             !           Mode has changed   bResetRequired            !           reset is required   iState            !           State      bEmergencyClear            !           Emergency cleared   bReset            ! 	          Reset signal   bStart            ! 
          Start signal   bStop            !           Stop signal   bSelectMode_Auto            !           Mode select request : Auto    bSelectMode_Manu            !           Mode select request : Manual       oEmergencyClear            !           Emergency is cleared   oRun            !        !   System can be started and running   oModeAct_Auto            !           Mode active : Auto    oModeAct_Manu            !           Mode active : Manual    oModeAct               EN_Mode   !           Current active mode            �.�]  @    ����           FB_SIMPLEMODEMANAGER2           rsEmergency                 RS    2            	   rsRunning                 RS    2               modePrev               EN_Mode    2           Mode at previous PLC cycle   bModeChanged             2           Mode has changed   bResetRequired            2           reset is required      bEmergencyClear            2           Emergency cleared   bReset            2 	          Reset signal   bStart            2 
          Start signal   bStop            2           Stop signal   bSelectMode_Auto            2           Mode select request : Auto    bSelectMode_Manu            2           Mode select request : Manual       oEmergencyClear            2           Emergency is cleared   oRun            2        !   System can be started and running   oModeAct_Auto            2           Mode active : Auto    oModeAct_Manu            2           Mode active : Manual    oModeAct               EN_Mode   2           Current active mode            �.�]  @    ����           PRG_MAIN           fbMngr        	               FB_SimpleManager                   fbMdMngr                             FB_SimpleModeManager                                    �.�]  @    ����           PRG_PROCESSAUTO           tonDelay                    TON    &               SFCReset             &               INIT                           _INIT                        	   WAITRESET                         
   _WAITRESET                            RESETING                         	   _RESETING                            PROCESS                            _PROCESS                            STEP1                            _STEP1                            STEP2                            _STEP2                            STEP3                            _STEP3                            STEP4                            _STEP4                               bReset            &           Reset program   bEnable            &           enable and run               
   tDelayTime    �    &           Delay time for timer�.�]  @    ����           PRG_PROCESSMANUAL           iStep            6           Step variable	   rtTrigger                 R_TRIG    6           Trigger from button      bReset            6           Reset program   bNext            6        	   Next step                �.�]  @    ����            
 �    $   &   6   4      ( )      K   )     K   )     K   ,)     K   A)                 N)         +                   A�����H ZJ�            Tcp/Ip (Level 2 Route)  PLCWinNT 3S Tcp/Ip Level 2 Router Driver    5   �  Address IP address or hostname 
   localhost    �  Port     �   �  TargetId         7   d   Motorola byteorder                No    Yes                A�����H ZJ�            Tcp/Ip (Level 2 Route)  PLCWinNT 3S Tcp/Ip Level 2 Router Driver    5   �  Address IP address or hostname 
   localhost    �  Port     �   �  TargetId         7   d   Motorola byteorder                No    Yes   K        @   �.�]�B        `E�  X�                     CoDeSys 1-2.2   ����                                          �      
   �         �         �          �                    "          $                                                   '          (          �          �          �          �          �         �          �          �          �         �          �          �          �          �         �      �   �       P  �          �         �       �  �                    ~          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �       @  �       @  �       @  �       @  �       @  �       @  �         �         �          �       �  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         �          �         �      
   �         �         �         �         �         �          �          �         �      �����          �          �      (                                                                        "         !          #          $         �          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          �          �          l          o          p          q          r          s         u          �          v         �          �      ����|         ~         �         x          z      (   �          �         %         �          �          �         @         �          �          �         &          �          	                   �          �          �         �          �         �          �          �          �          �          �          �          �          �          �          �          �                            I         J         K          	          L         M          �                             �          P         Q          S          )          	          	          �           	          +	       @  ,	       @  -	      ����Z	      ����[	      ��������        �������� Acc����                                                             �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             ����   Index-Offset                 ��         SubIndex-Offset                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����   Member    	             ����
   Value                Member    
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable                         ����                         �   _Dummy@    @   @@    @   @             ��@             ��@@   @     �v@@   ; @+   ����  ��������                                  �v@      4@   �             �v@      D@   �                       �       @                           �f@      4@     �f@                �v@     �f@     @u@     �f@        ���           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    �.�]	�.�]                        VAR_GLOBAL
END_VAR
                                                                                  "   ,   ��             Defaultd        PRG_MAIN();����               �.�]                 $����                           ���1           Standard ��FA	��FA                                      	�.�]                     VAR_CONFIG
END_VAR
                                                                                   '              , �� jZ           Globale_Variablen �.�]	�.�]     ���   M          VAR_GLOBAL
	(*INPUTS*)
	I_BtnEmergencyClear	: BOOL;	(*Emergency is cleared*)
	I_BtnReset		: BOOL;	(*Reset button*)
	I_BtnStart			: BOOL;	(*Start button*)
	I_BtnStop			: BOOL;	(*Stop button*)
	I_ModeReq_Auto	: BOOL;	(*Mode request : Auto*)
	I_ModeReq_Manu	: BOOL;	(*Mode request : Manu*)

	bHMI_Enable_Process	: BOOL := TRUE;
	bHMI_Manual_BtnNext	: BOOL;
	(*OUTPUTS*)
	O_Light_1			: BOOL;	(*Light 1*)
	O_Light_2			: BOOL;	(*Light 2*)
	O_Light_3			: BOOL;	(*Light 3*)
	O_Light_4			: BOOL;	(*Light 4*)
END_VAR
                                                                                               '           	     Q@ 1 ��           Variablen_Konfiguration �.�]	�.�]	     <&ev �#           VAR_CONFIG
END_VAR
                                                                                                 I   |0|0 @?    @   Arial @        @           �����                               �      �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      I   |0|0 @?    @   Arial @        @           �����                      )   hh':'mm':'ss @                             dd'-'MM'-'yyyy @       '      , >  U�            EN_Mode �.�]	�.�]      ��������        T   TYPE EN_Mode :
	(eMode_Unknown := 0,
	eMode_Auto := 1,
	eMode_Manual );
END_TYPE                 , �x �Z           FB_SimpleManager �.�]	�.�]      ��������        �  FUNCTION_BLOCK FB_SimpleManager
(*Simple manager following emergency and run/stop state. Outputs can be used to enable user's processes and programs.
Niko Siltala niko.siltala@tuni.fi, 
Tampere University, ENS, ATME.
9.10.2019 v1 *)
VAR_INPUT
	bEmergencyClear	: BOOL;	(*Emergency cleared*)
	bReset				: BOOL;	(*Reset signal*)
	bStart				: BOOL;	(*Start signal*)
	bStop				: BOOL;	(*Stop signal*)
END_VAR
VAR_OUTPUT
	oEmergencyClear	: BOOL;	(*Emergency is cleared*)
	oRun				: BOOL;	(*System can be started and running*)
END_VAR
VAR
	rsEmergency	: RS;
	rsRunning		: RS;
	bResetRequired	: BOOL := TRUE;	(*reset is required*)
END_VARP  (*Defaults*)

(*Reset done*)
IF bReset THEN
	bResetRequired	:= FALSE;
END_IF;

(*Emergency active or cleared?*)
rsEmergency(
	SET:= bReset,
	RESET1:= NOT bEmergencyClear,
	Q1=> oEmergencyClear );

(*Running or stop?*)
rsRunning(
	SET:= bStart,
	RESET1:= (NOT oEmergencyClear) OR bStop OR bResetRequired,
	Q1=> oRun );
               !   , �  ��           FB_SimpleModeManager �.�]	�.�]      ��������        D  FUNCTION_BLOCK FB_SimpleModeManager
(*Simple manager following emergency and run/stop state. Implemented through state model.
Includes manager for two control modes. Outputs can be used to enable user's processes and programs.
Niko Siltala niko.siltala@tuni.fi, 
Tampere University, ENS, ATME.
9.10.2019 v1 *)
VAR_INPUT
	bEmergencyClear	: BOOL;	(*Emergency cleared*)
	bReset				: BOOL;	(*Reset signal*)
	bStart				: BOOL;	(*Start signal*)
	bStop				: BOOL;	(*Stop signal*)
	bSelectMode_Auto	: BOOL;	(*Mode select request : Auto *)
	bSelectMode_Manu	: BOOL;	(*Mode select request : Manual *)
END_VAR
VAR_OUTPUT
	oEmergencyClear	: BOOL;	(*Emergency is cleared*)
	oRun				: BOOL;	(*System can be started and running*)
	oModeAct_Auto		: BOOL;	(*Mode active : Auto *)
	oModeAct_Manu	: BOOL;	(*Mode active : Manual *)
	oModeAct			: EN_Mode;	(*Current active mode*)
END_VAR
VAR
	modePrev		: EN_Mode;			(*Mode at previous PLC cycle*)
	bModeChanged	: BOOL;			(*Mode has changed*)
	bResetRequired	: BOOL := TRUE;	(*reset is required*)
	iState			: INT := 0;			(*State*)
END_VAR�  (*Default values for each PLC cycle*)
bModeChanged := FALSE;
oModeAct_Auto := FALSE;
oModeAct_Manu := FALSE;

(****** SECTION: INPUTS PROCESSING ******)
(*Update current control mode*)
IF bSelectMode_Auto THEN
	oModeAct := eMode_Auto;
ELSIF bSelectMode_Manu THEN
	oModeAct := eMode_Manual;
END_IF;

(*Observe mode change request*)
IF oModeAct <> modePrev THEN
	modePrev := oModeAct;
	bModeChanged := TRUE;
	bResetRequired	:= TRUE;
END_IF;

(****** SECTION: STATE MODEL ******)
(*Emergency is active. Force state to emergency active*)
IF NOT bEmergencyClear THEN
	iState := 0;
END_IF;

(*State model*)
CASE iState  OF
0:	(*Emergency active*)
	IF bReset AND bEmergencyClear THEN
		iState := 10;
	END_IF;

10: (*Reset required *)
	IF bReset THEN
		iState := 12;
		bResetRequired	:= FALSE;
	END_IF;

12:	(*Stopped*)
	IF bResetRequired THEN
		iState := 10;
	ELSIF bStart AND NOT bStop THEN
		iState := 20;
	END_IF;

20: (*Run / Running*)
	IF bResetRequired OR bModeChanged THEN
		iState := 10;
	ELSIF bStop THEN
		iState := 12;
	END_IF;

ELSE	(*Default state*)
	iState := 0;
END_CASE;

(****** SECTION: OUTPUTS ******)
(*Set manager outputs according the state*)
oEmergencyClear := (iState>0);
oRun := (iState>=20);

(*Update binary outputs for Control Modes*)
CASE oModeAct  OF
eMode_Auto:
	oModeAct_Auto:= TRUE;
eMode_Manual:
	oModeAct_Manu := TRUE;
END_CASE;               2   , .  \�           FB_SimpleModeManager2 �.�]	�.�]      ��������        ?  FUNCTION_BLOCK FB_SimpleModeManager2
(*Simple manager following emergency and run/stop state. Includes manager for two control modes. Implemented with FBDs.
Outputs can be used to enable user's processes and programs.
Niko Siltala niko.siltala@tuni.fi, 
Tampere University, ENS, ATME.
9.10.2019 v1 *)
VAR_INPUT
	bEmergencyClear	: BOOL;	(*Emergency cleared*)
	bReset				: BOOL;	(*Reset signal*)
	bStart				: BOOL;	(*Start signal*)
	bStop				: BOOL;	(*Stop signal*)
	bSelectMode_Auto	: BOOL;	(*Mode select request : Auto *)
	bSelectMode_Manu	: BOOL;	(*Mode select request : Manual *)
END_VAR
VAR_OUTPUT
	oEmergencyClear	: BOOL;	(*Emergency is cleared*)
	oRun				: BOOL;	(*System can be started and running*)
	oModeAct_Auto		: BOOL;	(*Mode active : Auto *)
	oModeAct_Manu	: BOOL;	(*Mode active : Manual *)
	oModeAct			: EN_Mode;	(*Current active mode*)
END_VAR
VAR
	rsEmergency	: RS;
	rsRunning		: RS;
	modePrev		: EN_Mode;			(*Mode at previous PLC cycle*)
	bModeChanged	: BOOL;			(*Mode has changed*)
	bResetRequired	: BOOL := TRUE;	(*reset is required*)
END_VAR�  (*Default values for each PLC cycle*)
bModeChanged := FALSE;
oModeAct_Auto := FALSE;
oModeAct_Manu := FALSE;

(*Reset done*)
IF bReset THEN
	bResetRequired	:= FALSE;
END_IF;

(*Update current control mode*)
IF bSelectMode_Auto THEN
	oModeAct := eMode_Auto;
ELSIF bSelectMode_Manu THEN
	oModeAct := eMode_Manual;
END_IF;

(*Observe mode change request*)
IF oModeAct <> modePrev THEN
	modePrev := oModeAct;
	bModeChanged := TRUE;
	bResetRequired	:= TRUE;
END_IF;

(*Calling action containing FBD code for deciding emergency and run output states*)
act_fbd_controls();

(*Update binary outputs for Control Modes*)
CASE oModeAct  OF
eMode_Auto:
	oModeAct_Auto:= TRUE;
eMode_Manual:
	oModeAct_Manu := TRUE;
END_CASE; 3   ,   �~           act_fbd_controls �.�]      rsEmergencybReset�bEmergencyClearRS        oEmergencyClear     	rsRunningbStartB�oEmergencyClearbStopbModeChangedAbResetRequiredORRS        oRund                   ,  3 ��           PRG_MAIN �?4^	�.�]      ��������        _   PROGRAM PRG_MAIN
VAR
	fbMngr		: FB_SimpleManager;
	fbMdMngr	: FB_SimpleModeManager;
END_VAR�  (*Variant 1: Simple Mode manager*)
(*
fbMngr(
	bEmergencyClear:= I_BtnEmergencyClear,
	bReset:= I_BtnReset,
	bStart:= I_BtnStart,
	bStop:= I_BtnStop,
	oEmergencyClear=> ,
	oRun=> );
*)

(*Variant 2: Mode manager with two control modes*)
fbMdMngr(
	bEmergencyClear:= I_BtnEmergencyClear,
	bReset:= I_BtnReset,
	bStart:= I_BtnStart,
	bStop:= I_BtnStop,
	bSelectMode_Auto:= I_ModeReq_Auto,
	bSelectMode_Manu:= I_ModeReq_Manu,
	oEmergencyClear=> ,
	oRun=> ,
	oModeAct_Auto=> ,
	oModeAct_Manu=> );

(*Call emergency actions, if emergency is active*)
IF NOT fbMdMngr.oEmergencyClear THEN
	actEmergency();
	RETURN;
END_IF

(* Call actions at running state*)
IF fbMdMngr.oRun THEN
	(* Control mode: Auto is active*)
	IF fbMdMngr.oModeAct_Auto THEN
		(*Calls and executes Program for automatic process*)
		PRG_ProcessAuto(
			bReset:=NOT fbMdMngr.oEmergencyClear ,
			bEnable:= bHMI_Enable_Process );
	END_IF;

	(* Control mode: Manual is active*)
	IF fbMdMngr.oModeAct_Manu THEN
		(*Calls and executes Program for manual controls*)
		PRG_ProcessManual(
			bReset:=NOT fbMdMngr.oEmergencyClear ,
			bNext:= bHMI_Manual_BtnNext );
	END_IF;
END_IF;
 4   , ��� ��           actEmergency �.�]�   O_Light_1 :=FALSE;
O_Light_2 :=FALSE;
O_Light_3 :=FALSE;
O_Light_4 :=FALSE;
PRG_ProcessAuto(bReset:=TRUE , bEnable:= FALSE);
             &   , ~ y �c           PRG_ProcessAuto �.�]	�.�]      ��������        �   PROGRAM PRG_ProcessAuto
VAR_INPUT
	bReset	: BOOL;	(*Reset program*)
	bEnable	: BOOL;	(*enable and run*)
END_VAR
VAR
	tonDelay		: TON;
	SFCReset		: BOOL;
END_VAR
VAR CONSTANT
	tDelayTime		: TIME := t#2s;	(*Delay time for timer*)
END_VAR
       Init '     ��������           Action Init ĩ�]   SFCReset := FALSE;
    
   NOT bReset        	   WaitReset         bReset         Reseting (     ��������           Action Reseting ĩ�]   SFCReset := TRUE;            Process )     ��������           Action Process ĩ�]y   O_Light_1 :=FALSE;
O_Light_2 :=FALSE;
O_Light_3 :=FALSE;
O_Light_4 :=FALSE;

tonDelay(IN:=FALSE , PT:=tDelayTime);
       bEnable         Step1 *     ��������           Action Step1 ĩ�])   O_Light_1 := TRUE;

tonDelay(IN:=TRUE);   +     ��������           Action Step1 - Exit ĩ�]   tonDelay(IN:=FALSE);
   tonDelay.Q         Step2 ,     ��������           Action Step2 ĩ�])   O_Light_2 := TRUE;

tonDelay(IN:=TRUE);   -     ��������           Action Step2 - Exit ĩ�]   tonDelay(IN:=FALSE);
   tonDelay.Q         Step3 .     ��������           Action Step3 ĩ�])   O_Light_3 := TRUE;

tonDelay(IN:=TRUE);   /     ��������           Action Step3 - Exit ĩ�]   tonDelay(IN:=FALSE);
   tonDelay.Q         Step4 0     ��������           Action Step4 ĩ�])   O_Light_4 := TRUE;

tonDelay(IN:=TRUE);   1     ��������           Action Step4 - Exit ĩ�]   tonDelay(IN:=FALSE);
   tonDelay.Q     Process       FALSE     Initd                  6   , Xp �7           PRG_ProcessManual �.�]	�.�]      ��������        �   PROGRAM PRG_ProcessManual
VAR_INPUT
	bReset	: BOOL;	(*Reset program*)
	bNext	: BOOL;	(*Next step*)
END_VAR
VAR
	iStep	: INT;	(*Step variable*)
	rtTrigger	: R_TRIG;	(*Trigger from button*)
END_VAR�  rtTrigger(CLK:=bNext , Q=> );
IF  rtTrigger.Q THEN
	iStep := iStep + 1;
	IF iStep >= 5 THEN
		iStep := 1;
	END_IF
END_IF;

(*Default values*)
	O_Light_1 := FALSE;
	O_Light_2 := FALSE;
	O_Light_3 := FALSE;
	O_Light_4 := FALSE;

CASE iStep OF
0:
	;
1:
	O_Light_1 := TRUE;
2:
	O_Light_2 := TRUE;
3:
	O_Light_3 := TRUE;
4:
	O_Light_4 := TRUE;
ELSE
	iStep := 0;
END_CASE                #   , #�0           VC_ButtonPanel �.�]
    @�����.�]   d                                                                                                          
    @            e 3 2    ���     �                                      NOT .I_BtnEmergencyClear       Emergency @                           ���        @	    .I_BtnEmergencyClear                 @                                                                                                           
    @          < e o 2 U   ���     ��                                          	   Reset @                          ���        @	        .I_BtnReset             @                                                                                                           
    @        P  e 3 Z (   ���     ���                                    $FB$.oEmergencyClear        @                          ���        @	                       @                                                                                                           
    @        n   � 3 �    ���     ��                                          	   Start @                          ���        @	        .I_BtnStart             @                                                                                                           
    @        n < � o � U   ���     ��                                             Stop @                          ���        @	     
   .I_BtnStop             @                                                                                                          
    @        �   -3    ���      ��                                 	   $FB$.oRun       Running @                          ���        @	                       @                                                                                                           
    @        � < iQ ,F   ���     ���                                        $FB$.oModeAct    Mode: %s @                          ���        @	                       @                                                                                                           
    @          � � � i �   ���     ���                                            Mode Selctor: @                          ���        @	                       @                                                                                                           
    @          � e � 2 �   ���     ��                                     .I_ModeReq_Auto       Auto @                          ���        @	        .I_ModeReq_Auto             @                                                                                                           
    @        n � � � � �   ���     ��                                     .I_ModeReq_Manu    
   Manual @                      	    ���        @	        .I_ModeReq_Manu             @                                                                                                          
    @        � � -� �   ���      ��                                    $FB$.bResetRequired       Reset
required @                      
    ���        @	                       @           FB                
       �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  %   , ����        
   VC_Process �.�]
    @�����.�]   d                                                                                                          
    @          F [ o - Z   ���     ��                                     .bHMI_Enable_Process    
   Enable @                           ���        @	    .bHMI_Enable_Process                 @                                                                                                          
    @            = 3     ���     ��                                  
   .O_Light_1       Light 1 @                          ���        @	                       @                                                                                                          
    @        F   � 3 d    ���     ���                                 
   .O_Light_2       Light 2 @                          ���        @	                       @                                                                                                          
    @        �   � 3 �    ���     ���                                 
   .O_Light_3       Light 3 @                          ���        @	                       @                                                                                                          
    @        �   3 �    ���     ���                                 
   .O_Light_4       Light 4 @                          ���        @	                       @                                                                                                           
    @        d F � o � Z   ���     ��                              $   NOT PRG_MAIN.fbManager.oModeAct_Manu   .bHMI_Manual_BtnNext       Next @                          ���        @	        .bHMI_Manual_BtnNext             @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  $   , X ��        	   VISU_MAIN �.�]
    @�����.�]   d                                                                                                        
    @            K� � Z        ���     ���            VC_ButtonPanel                                          ���        @	                                               @         FB        PRG_MAIN.fbMdMngr                                                                                                    
    @        h  �� �F       ���     ���         
   VC_Process                                       ���        @	                                               @                                                                                                                 
    @        � � ���'      ���     ���            simplemanagerstatemodel.jpg  �  ���� JFIF  ` `  �� :Exif  MM *    Q       Q        Q            �� C 		



	�� C�� |�" ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ����( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ���_��_ٲ����/��^��]����ĖzT��(�ȅ���E��|�������kZO��MA<�]CL��������J��ֵ QE C�jV�6�qyyq���m4���8�E�3@�x W�^���%~����?��~ �L�:��m��<-g��=�0X�\�nÔ�haY����������A��]?ƞ.�5DG*gӵoizm�Y��������[X쭣��T$q��TP0 � �@� ��� �7�?� ���� ����?�M� Do�� �ɫ� �1_@Q@?� ��������� �y5�f(� ���S���� ��j� ��W�P�� �� jo�#�� �M_� ��?�c����F� g� �<��� 3��� �,ڛ����� � ��W� �b��X� �7���� � &�� ��}E |� � ��� �7�?� ���� ����?�M� Do�� �ɫ� �1_@Q@?� ��������� �y5�f(� ���S���� ��j� ��W�P�� �� jo�#�� �M_� ��?�c����F� g� �<��� 3��� �,ڛ����� � ��W� �b��X� �7���� � &�� ��}E |� � ��� �7�?� ���� ����?�M� Do�� �ɫ� �1_@Q@?� ��������� �y5�f(� ���S���� ��j� ��W�P�� �� jo�#�� �M_� ��?�c����F� g� �<��� 3��� �,ڛ����� � ��W� �b��X� �7���� � &�� ��}E |� � ��� �7�?� ���� ����?�M� Do�� �ɫ� �1_@Q@?� ��������� �y5�f(� ���S���� ��j� ��W�P�� �� jo�#�� �M_� ��?�c����F� g� �<��� 3��� �,ڛ����� � ��W� �b��X� �7���� � &�� ��}E |� � ��� �7�?� ���� ����?�M� Do�� �ɫ� �1_@Q@?� ��������� �y5�f(� ���S���� ��j� ��W�P�� �� jo�#�� �M_� ��?�c����F� g� �<��� 3��� �,ڛ����� � ��W� �b��X� �7���� � &�� ��}E |� � ��� �7�?� ���� ����?�M� Do�� �ɫ� �1_@Q@?���ڒ�G�/�&eA����-Q�e�RǶ�Q�GZ�� gO���㗈u�
���<�±�6��me�k���"+�ybw���FWU�& 22:�"�Y��j��=�a�˾"����x�X�}Ԩpg�n<3��R@ޫ��"�@Ch�j(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
+����Hx�m�a��}�/�>����g�u��N?w
�+��"c������3��zoƍV��˭3�׌5YG�M���V"�>���� ��|:� �s��� ���T�� ,�u� B��� �'�� ����(��� ����\��?����� �4��>й�@��� *h�
+�� �ygï�?h�1>7� �M��χ_�.~��b|o� ʚ ���� �Y������� O�� �SG�<��������� �>���� ��|:� �s��� ���T�� ,�u� B��� �'�� ����(������ʌ���>��g��uU��' {����	�>x�O�g��Mǉ�O6M�I��1�?9��X�B�~c84��QE QE QE |g� �� ��j_�LO�'/�|}ᶁ<m�^A�I<"h���D�粰*�(!��U�Vx�X$W����.��o�ڟ�<Q�j�"��p�W���r�7W���y$rY���_�_������
� ��|?��;�W�
խ�_�i�ɩ�o��
 	g6�3�E��(�� �t��k[�d����I�����P�?�C��*��?��_��u�p�<G���y�?c�ъ�܄���n����X#�?�-?�I��'g�?ࣟ������Wz��ɮ^�V->�0Y�c�-I#8'�CH�����ӿ���O�� � ��H� �z ��+�V������k�|;ռ3��7K���#M&��dj�t�R8g*\�y�������:w�Y� �i��� ��i��^?�g�Q���?㻿��D�!�#�%��n��? i�n�$@񾧨5���eq�n]4pH��_�����_Ə���N�����p����i<��Q���"x�C2Im�4Ш���0:�<W�U���@� �~��<�cV�O����_� C�����xsE��w2�a�8���n����n��8�R�O� ��( ��( ��( ��( ��( ��( ��(�����������z?��	�?g�-?�cQ���O}>�us���%ukUD����l�������D�=�?��6�v��_�>�յ
������-����A��V��1�-q�VLm+��?�s�S����ޗ_<�߁�;�u/ �����Z��=�Ŷ��]4�t��dd��rYNQ��	��~Ο5O�7��/�{�g�W���W����%��j����=��4�V�ç]�r�T��0;� ��� ;�G�H���_�u/�����Gú������/[[tW����xR7�c�2
��rcp���E��x񾋢�7^$�x���jz���l4�Gn��m>�h�+�#U�߼�4��K�1�i� ��6���u𾱩�_»Mj��Oeq6n� M��ShZ��\+ L O'��~���K|���;���_-%�Y��^�uʖX[M�p��iLb��P�\��*6���� ��|����W������Z� h�v�> ��֬�8�{�d�3-�,qI*�VY0K:贏�*/�_|2�_�<7w����/�G���W�ڮ��r�׷eH���U
�Js$K��"��5?��+�?f�|-��U�?�ᾴ<[�^�ԍ�ӝ��V�Qи��-�^�)�S�e� �t���g���/�ch~�7��4�������c����k> �U������m� ���D����xԐ�5��)�3I�Νw�M�;N�u/Xh>��/��淆�6�8��K�(�G0FB�+a��X�� ��|/o x^�.<Q���ks{�i:���{�-J�܏h�y�,��eM�:F~vU<�� �׾|G�7�^���b�?��gc�Y��^��Z�
֦�̒X�Yܬ�K"I#���<�X���?����ً[�{�/���ž)�֙���.����V7VZ�����Ž�vW$И�$���8���ƅ�=����Qo�_<��i~(ݢ�'���4�n�,��Xt�����,��B�+��v�KwGUa��"��~�M�2�~!�R��?q���l�jKy$Q[[%�h�=Ē�k�r����W�/_���P��w�x�C־)k�L��4�����+{�2����]6'�D�nN�������� ?gۍᾼ4y�]:��l�hgT���).�F�h�sdg�^1qw� �O�*����Ao�o���b�A>���.�.����8,��2ex!�_20cT�VfQ㛱� ���sƿ��  �W��(�,~ C���y>�{ms���.[X^���Z'W�&S&i�̳�ׇ|<� �Z�^�K�K��ú�-SE�t�WC�׌u�R+�SKմ��.�k�G�4w�����2�-�%o��s����'��\|9�ռ/q�K_F�Ԯ���4�W���>Ǿ�x��3Gl%i�0�(��� ���g��k�)���t��>&�-�6���R�%���� qms�/#����a��-� ��|)�F�ug�\x�;],[�:�~��K�^E�G�],F+Y<��wWl���>/�'��� f_
���� �����h��w��:5��^y������b����]�UM/��	/���_���>������Ѭ��.��/�|��l�l� �H�Am�FVؼ{�c��,���~��Q�Z%��0G�G
�X�O'�jJ (�� (�� (�� (�� (�� (�� +�� �#�N+�N� ��}� �G���
�� ��� ��������� ��(��(��(��(��(��(��(��(��(��(��?����<E�x�E�O��->�⏊�Q{��Zm;��J��&�v�Tə3��(a�c�gOp�����<⯌��d־2k�Z�39����Ik�ۡ���'�8�o.����{���!�U��RCƟ��j�6�$�{�_��,�B�A��ml�@���9&?��Ï���k�]b���ϊ�ƚ��/�|+�x�P��g(�W���%����C�nqW�Wÿ?i�� �����JZ�j�w���|E����k�%��M����-�������O-�ͭ�h��'Gۉ ^�����ត�/kV^!�ν�cj��2�*�VWVFF����`@�k�_�?�|W����R����3�i�F��[G�~�'����ڰywײC$���-�ui��ed2"���4x_Z���%��>�ǉ�"������,M��:m�t+O��Ρ$RE4���d��pU�&F,�I�|I�|?��7�����<I�ƙ�����+a�t^�c��z"�+n�*��h�� � b����Z��坧�/	iz���;�����X��K�yQ����	Fs��|�ʌr?�������컪�r���-#��/��x�X�<I�U��5�4�7WOt�	��i���IvH�^HQ�����g��?ŝ��:����W�ޟe�H�h�����|��Z���mf�nT0W+�j_��Ý�����x�8>)j�>+�����4M$e���y�H<�3��3m�3_�=�U�/���  ou�C]�,G�~+A�S[i_Sռ=��9�up�$�I`���?�"�v%���� 	���?�To�^��F�>|5�o�e1)26���m5��?��\/ �Q�p ���� ����~�> �;���+��� ׵m-g͕��)b�N�,�`r�2��k�+���~ h>���S��k�>-|��!�l�2j�Q]�AlR(���v�<6Q*I���O�@|X�w��#xr��s����|�4[~5��7��v/؝F�;��i����k9uarcx���+�0�����Z�� �~$x��6:���/	�gs��y/�c��s��#���3��c#=~<�D�Ή�#�����|u}�x�[�ծ���x��Q��tw��MT�j���	h�4�l��#[+ܔ(a�ji~5�����9à�r�~����T�����w�����)�]���Y��c��E�Wf��h$i�����U�|j��|�E�^=����Ee�{cs��&���.$��He��ԀC_�9�-��� 
�7Ě�V6>��ic��CE���x���֫%��o�j."�{m�.�)���9~` _�(���ş�g�m�^>׵/�7�����MOI�`Lz>�  M�E���a�͙�rO��qߴ�]/���+�O�4^"�{as�qa/�-�f�U�X�`�Ƥr+����2j�?e������,��_���-d{K�^�.���V��( ��( ��� j/�"���e��o�B�?�����������F��c��;YM	�C��ɹ��ԔP��������sh����>��9��e]���奝�x#���"�( ��� ���
7�O�s�J�6��xK����0i�O���J�\���L��{���w����43(ttm��FApA隖�o���w���Z]F���$�d`C+)ᔂA�|�����W��g���_�x&�?�>6�)���yȷ�����עE4��
�P*(�TW�� �jo�,��� ��_� �z?�\����Y?g� �3z�� 4���� �+�ڛ��'�� � �oW� 枸�[ſ�7����M��-�� X���_�<1�¤�����}r�I���J��~������lܛ����W�� �jo�,��� ��_� �z?�\����Y?g� �3z�� 4���� �+�ڛ��'�� � �oW� 枏�W?�7�O�� � ޯ� �= }E|� � 
���� ���?� ��� ������M� E��� �7�� �O@@Q_?� ¹����~�� �f��i�� �s�S�d��� ���� ����W�� �jo�,��� ��_� �z?�\����Y?g� �3z�� 4���� �+�ڛ��'�� � �oW� 枏�W?�7�O�� � ޯ� �= }E|� � 
���� ���?� ��� ������M� E��� �7�� �O@@Q_?� ¹����~�� �f��i�� �s�S�d��� ���� ����W�� �jo�,��� ��_� �z?�\����Y?g� �3z�� 4���� �+�ڛ��'�� � �oW� 枏�W?�7�O�� � ޯ� �= }E|� � 
���� ���?� ��� ������M� E��� �7�� �O@@Q_?� ¹����~�� �f��i��|u�`|]�w�rx?�{��<����t�~�1�gV6�����+� �Q����0~����p����� �\����Y?g� �3z�� 4�¹����~�� �f��i��
+�� �W?�7�O�� � ޯ� �=�jo�,��� ��_� �z ���� ���M� E��� �7�� �OG�+�ڛ��'�� � �oW� 枀>���� �s�S�d��� ���� ���� 
���� ���?� ��� ����(��� �\����Y?g� �3z�� 4�¹����~�� �f��i��
+�� �W?�7�O�� � ޯ� �=�jo�,��� ��_� �z ���� ���M� E��� �7�� �OG�+�ڛ��'�� � �oW� 枀>���j���C�a~���>v����X��)ɃM��α��;z/ڵ{(�<.*g�g�R\#F� >®6���;�,���J�v܌=A�]g���+�|�5����㟈~*HbּO�������`�5X�mc.�a�@���d����(�� (�� (�� (�� (�� (�� (�� (�� (�� (�� +�� �$�� �Y��g�|,�ñ�'I�$�rI?�}_?� �'�_�O���� �ր>���\(Y]A��A�)�Pd�fM��ːpFG�uP Fi�D�&�Ue�8##�E:� (�� )�ı�Uw�'��Q@�%�5DUUQ��0 �8V�*���(�E 6V�%�5X�A�U
= �QE �� �Hm���B���?�ȣ���}p =� W��� �O�M���U~#� �o���QE QE QE QE QE QE QE �� ���M�ß�U~�o�W��� ���M�ß�U~�o�P�W˿��Z���f����4�z�A�|����O�cP�/�[��j��~β*�6eF�r�I�3��?ƿ�(��O�&������� �/~�=ӵ����^7���(�t��D!��A�����`��+��ً�
�k������Cֵ'����P��^j��+��K�V�fZ�9B�*F�7,e؄���� #�b|�kV���P�5o\xV��v����CU���n,����x��i��U<����Xި��?�?��#�J�|e�j8��O���
����_&��d"�[y��*��tPIt��� ��xw����Oß�:ƥ�y�i�_� e���-�崶҉#_ ��m	0�x����袊 (�� (�� (�� (�� (�� (�� (�� ��;|i�g?�~&�׉�$��|+�˨�4i�WT\��N�#�r�ʣ�+�?~�j_��In4߉��x�ž ���5ׅo�W�Ci�ZHA��ZCj��*e�y0|��[Ş��{�.��iZn�`�]�k�d��M�<�pF��9��tV ����߃�J�y� �PU�$�n�>+x'P��]��ď�ax��)�*+�y�~�wGq$��cc�7ի:��M���5�t�u�J�+�A-�n�`��xby1��6�fU'
er1��F�
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
�� �	;� (����x_� M��|� � �� �Y~�?�J�/� ��Z ��Ե+}N��������6�y�qp��Y��
�I< *j������?�?�'��ླ�����[񷉴�H���D�e�:t�p��u��M$g�m66Q�XB�*�\<���O�����g�oiS�p|��>�{i�H� ,�u� B��� �'�� ���|�����8a�8a�BG(UE  8 �% |� � ,�u� B��� �'�� ����Y������� O�� �S_@Q@?� ��>й�@��� *h� ��|:� �s��� ���T��P�� ��χ_�.~��b|o� ʚ?����\��?����� �5��� �<��������� �� ���5�I�?�ְ���\|�0�;�;�AUGr�_@Q@��ύ���<o�ox�I�F�p��i�2$�����$C�F�:��u5�O�O�������xn4�c��^�3��P�aծ�ѯ�[E�|�i�=*��ɍ�ʫG��j +�� �&������ ��G� ��]��+�� �&������ ��G� ��]��(�� (�� (�� (�� (�� (�� (�� +�� �)g����?��8� ��B��+�� �)g����?��8� ��B�w�?�_�~��|m��u�½kK�4_������s�����W��\,Ъ�h��!�y��q� � ��>�g�Kñ��J�W�O�Wে�ZG���yy=֟s~���q�,wQ�l��2�
�M��_��������[_� �� �����>;]SE���յ7mu!��GyEl���Y,�$�	#�H���� H�߳���s�p���7�ÍS���x��w�\奵���+2���e�_�eu��b�>+� �S|H��ׄ|/��ox{����5o�v:��5=&�P��Մ�Ϥ�^����Ohn
���g�b�4�竗��LI�
]>����}kSռw/�5/O�v5�!����������=F%�2nR�5x١�!�d�ڣ�_�_�� �/�7�T�TZղ�]�c����\�s+�����	f6����Q�lx7�-�_���$�#����w����5��z�7��Dg#���@%C(��%� �9� ��_!O��*֯4/��&𝏈4;��u�=-4�CQ���5�m�������տ���F����{�	�������Lֿ?�u�>��h4�OPF���OUW�K��{�ݵ&I%�x]�6�f\ƾ�s� #�_7��x�G��G��U����×����6�V�G�H��d�F� I��i�O�
����ďxW�w�(���*�\���'�M�����Ͼ�C��b����Qq�R.�
s�����~� �R~�[����W>-���G���W�����t�Akm-��6�RıI�"��a��e�Ȭu��E��x񾋢�7^$�x���jz���l4�Gn��m>�h�+�#U�߼�4��K�t��b�o� }��/D������~׼=u�/_�|3�izN�ein..���X����u$#����п��
uMF����g���*{_xSP�&�-N�Y�]����d��� W$����@>���g��?o��[�5�gg����ޱ���[�4zN�wq�˫K=��7H��t-p�DC7�nO7z��n�?�+��·�&O x����Dڅ���3������c� ������yVH�f�x��~��"����TW�� ?૞�f��$񵮷y�o�7�� ��M�o��^��Z��s*³4�A8�dv��mynG]���*w�� 
^\H���5����� �~%�|9}�h:Gۢ�{_�^�B�Ặ���$s�ϱX �*�����Ӧ�>:������Π��l�}�x/Q�|9��, �cK��{x�5��娹F-�rWkw_�GƍS����>|D�-��]kǾ��G�Ab��7�0�J�+���F
��X�H�QE QE QE W�� ��)�� �x�� N���+�� ���߃�J�y� �P��ɿ�T�|Z�����>8�����s�:犿�_^[,�e��+F�'��[t�~�o$Q�謡����Tn��_ۛ�� ���|.��Ö��?k?
<;�'�~$�t{�WM��� skce`�P��I$o�k�EI�+?x��	k�~�<����G�~&� ���O�O ��ɤ�4I�F���+�ѫ嶹kk�����@��F����>.~�Z¿|:��%�v��ÿ�{��cV��4�q�{v[k�+��'�9"�{�Ķ�K˟)�����ύ� �g�������� fk����G��&Я�Ұ�C��B�y�֓�"�U C8�m?��_>:~� ���?|&�÷����þ�4�՟N��՟�s�(Q�����G��Ku� �w���/
|f���s��&���
�N�L���\�~�,>���p�Or�;Mws4�4QiT� 'W�	��9럲���k�]iW��"������%��P�o�Tr�u�ۀ�, b�g�
�ᯆߴ���@�T�t��,Ӵ��t��:v���h�M�w:��+��ۤߔT�gU ��O�����?�_� ��i����u-*�M��Ɓsy�j�u�Y�I9q��.Ֆ���Q�Nj�ǿؗ�w���w��)�^��i�J%�Y��o#ּ1e'����Ţټ7S:Y�aCq�v;;�d�-g�9�����������<���}�_���E��4�.�g�i�g�Yi�,zMҐ^ٜ)$0$�@���ۛß �o�:7�u[�����u�i?���V����q�}��Oi/t�Ŷ�	|�
C�9��'���_�M?Q�����oX��|C�x�V�������P��|���H�Kx�;��(�h�.ǅg�x����7��w�t��_xoT�t;��-�n��Ko�<�З�!�'VgH�L����� ����_� auxoK�����j���4�o�˫h$�%�f�6u(���P�i_�S_��~񖱨���1�<)s��O�Z� I����Fyo����x� 2�.��U2&���
m��MA����&^_x�K�Ѵx<����Yڈ�ڌv�G�� '�m�P�f�T�`�������?���u�+�G�<U�^���g����_�p�=ķЧ���E	0G�1��ƪ�������?��>�H�����������-�y�]h>��6Wa�ᶸ���_�����l�J�r ;��
��W��u��x�Ŗ�uε0м#��izu��͓�]�%��3�\��HQ#cg���?��w�9��U�{��D�v[����"]
�V-D�k����)<��L�+����	��;S�;��J��W�|N�.�����S�����f���8���線�S����˒?,m�y����� �?�o�z߉��
��}�[�_���I����M}m�q��F����Y\�X|����T� ��|-�Q-��{�O-Ǉ!�Ğ�����^�.�+Q�6�?���)��q�U�o�(o��_|]��5ٮ4kv��I^W��md���+�Y��Y�`�ǆ�6��~:~�����O�U� �|C���>	֏�5���OF���;�c��{n�鉷���T��}����!��
�i�o�-�I��7E�|K�r,�1K�]*)a�@�H��]E��Jx]��w zW��=�������5���G�|C��s@��F�}�]��}6yl�{�/m��ݮ�8��r��H�*�4��(E��� �~0��ދi��I�ÿx��N�~��Zk���g.��j�-�y�����I[���7��~П�T�:��?�^%�7��C�x���^)�/���ϩ\IywZ��N���w4��kfľY8ep�?���>���덩x�M�v���og��R�e.��xsW��������o�$�v�]����AX�F>I�k��ǉ�?7�.ll��U�������,V�bb�7R8HL*�Gܠ�G�y� >�W��3�5�<a�~�ZV��;W�����˩�Cob�f1y��4��W�8��U`<"��	��kN�y�P�ͯ�����׾�];D���ۍCGӮ�{�)�C4+wl�+<��ګ[�b̬V� �-� X��+�� �4����ֿc���[�����z+���oomķ�o11 ��`���>��Q�"�����/Ėzg��{}Z#*Yk�T�V�o�+�ki�e��3�Q�Ak��� (�� (�� (�� (�� (�� (�� (�� (�� +�� �$�����i� �U��4Z���� �w�Qe�4� �*���-h�
�� �7��7����������|� ��R��o��W�?���� ��(��o����|�|+��w�-���CQ�ϊ�F�K��%��w�gO���Z��J�����+)�J������K�����B�������2i6�3�M淦x�P���Z�W�!��e0D�(7�1������;��Xn��k�M�%V3�6�ן�F��q�/��+�ߴ߂�'�����m� �&�审y����da[�_;T��5Չl���챮�@���$������ ����� ���ǉtOꚢ�1��ntMA ��y���y�����O�����s�-��T�g��������%=�ׄ�]CUK�"K�Nm�R���9X�y"@$� �BӼS�j��卦�cu}��.��G�؞���}������|���웧��� ���J�o珋Z����)%�:-���:��$:��z��N���&rW?�� QE�� �� '�'�U�� �#�u�|� �d��~���Uo���]}@|� � �� �u���_�� ����|� � �� �u���_�� ����Q@Q@Q@Q@Q@Q@�_� n�� <U��O����'��f_Q�dN>e��Y.Yy��ȮP�K~���{��fO�~7ea��pG���������� �j��dɼ��o�&�'�������Ё-� �`oh3���ƁQV��Hd`�f[��,����χ_�.~��b|o� ʚ�_�
������+�Oį��~7���1���f�w�{�\:ƛ����[��3M������ e�z��ʪ@:��S����e� J���o�>4�΋u�� ��<'{�� ��VQ�/�X��98��U��W�Uc� 2��}��o�?������� �Y�oZ��?��~�C��o-5�n+e�R�g���a��-�-�A$��r�������s�=�!��.���Z���j�"��7���V�̷W$d���1�"8�8�ʊ���>й�@��� *h�����~�i��B�\�A�.��>�67�ց��FmZ8V/)�7�aV��~V��Aj��/���(�!��.�Q��̏���ׅ�� ��3-���:}��k�%���bZO-��v�H��<��������� ��ygï�?h�1>7� �M |�� �'|k�E�^���g���Yx�E�4;�������5��;{�5+w�e�j��$�F�3w߱��[T��'��/��¶����xr��³�<���ھ%�/����++.� Y�O2ib�F�,��N� ��|:� �s��� ���T�� ,�u� B��� �'�� ����fo�ߵo��[�^ �y�o�#���Mb����6�kk� �Ƒ�����蛘��H�;��U�b*}��&� �X����~����� �J�9i,����������T����h�˅��Jc�҄��p�aQ������\��?����� �4��>й�@��� *h�~&�"<W�g� ����x��:E��\�g\�m�ۈܞ�MI��h�ό]2��/�Z=�⺯ڶ?x��R��'�1�|3�_�����֩�N�Z�5�%T\Mim$R%������!�͵G���>й�@��� *h� ��|:� �s��� ���T���"���$���-�_�I�]����k|`��T��4�5�B	��n�y�;u��͆��ыh�l������?|y�|M�.���𞑣�i�^�q���y;�M���ŕ�*đ��� ��3��*� ����\��?����� �4��>й�@��� *h��� ��"|#����t��~<֡�K� �0�>:�|3k��z=���y,-ٯ�d��a�!q���k����� w����(�i}�?Z���a��OP�ǈ4�#��v�6q�=SZ*��i��4�ʫr��a�co������\��?����� �4��>й�@��� *h7U�x����j�x�T��t?�������e}ֶ��#IX�"����LUT��3��ʻ_�KK9���&?��oq��� �3�H�^6U�*��<zU�ygï�?h�1>7� �M��χ_�.~��b|o� ʚ ���� �Y������� O�� �SG�<��������� �>���� ��|:� �s��� ���T�� ,�u� B��� �'�� ����(��� ����\��?����� �4��>й�@��� *h�
�� �7��7�����������>й�@��� *k�<k�mx_W���x�������� �� �����f>�y}��fkX������=>�*�_'T� �~��� �Y������� O�� �SG�<��������� �>���� ��|:� �s��� ���T�� ,�u� B��� �'�� ����(��� ����\��?����� �4��>й�@��� *h�
+�� �ygï�?h�1>7� �M��χ_�.~��b|o� ʚ ���� �Y������� O�� �SG�<��������� �>���� ��|:� �s��� ���T�� ,�u� B��� �'�� ����(��� ����\��?����� �4�� :�?�����>8�M����1�{���3��ƣcJ=Ip>��=��������>�ִWM�4}B1-���r�6�(z2H��/�$V� QE QE QE QE QE QE QE QE QE QE �� �w�Qe�4� �*���-k�
�� �	;� (����x_� M��|� �1���༒�����V��pV�<! A��"���{�������5�����[\�¿|��kº���i������mu!����I"�����VHр�Q_<�~��9j�~$���!jڴ?$�^�G������8d�u���[!�� ����� F��@�������W�� ���ӿh��#� �?�>"� ѧ~��7�G� 44��� �6G�_�4��� �� 憏�l����iߴ��� � }E|� � ����;��� ���?����#�/�w�� ��C@@Q_?� �d|E� �N��?�o���hh��T�����fa�7߂��ۙ5�`��Q���@�"��I����~'���k��>?�XԟWQ�W��?>��ǿ������}3\�����	xOJ�7֞��15��\�hn/�1F��Q����I'�P_?� �4� ��|G� eW�?����}_?� �4� ��|G� eW�?���� }EPEPEPEPEP_2���^*��~*x��� �� j^�u�å���Z[yz���.�>�)Bb��F��Ŷe�H=���Ǫ����q���'�Ӎ������.�mlU����hA�Mt?����'�k��h�,�^�[v���P��纙���L�K#K<�I$��;�u�?���F�|�/öS?�r������gbe���%���ؒKk��� (�� (�� (�� (�� (�� (�� �� hO�����MK�>8�.���2�Csqm�\�3y�71Z��om�H�4� TF9q�$r� m��~����� ���� g{����Ox~�b���B�7|�	�ss�pq�� �]mR�	��+�b?����ɪ�����m)��
b07��o���?n/	x��9���|/�j�?<Q�?�i:6���g}eq�4��,Q&F�v� �:��6� ��:>��E|C�x����-��H<U,���}�^�N���as�n6�>P�VB�BȄx��ώ�!�_�|/s�[�'�<+������1y⏈��c�ԧ���K�����Ak���,j��q�3��E~O�a���?�:W�|E7�> ���͞	����iv�qs�5��MV�}�n�-煾r#h�/�?�?�\�����ox�K_���Z��~'�<Mkm����,w�eڋI����0ц�� �}��`��u�������X𶷠X��>&�5(|��wſc���6�ח��D��H���O�pG�~�~���/�Zg���%� �5����'��u˫�f���5�mẖ@/<���X��a�;T �j+�SZ�ᯊ~����Q���Ǟ(�/�t�-�����C����ׂ�-.��Y^=KP�;�i`.��}��#q���W���%��|p��U�C���	.�%gt�,v>�E��t��#�Q�k�x$^�?t ���,Q�7
�$�
���V�>;|*�׍�+���iv�֑{�I��."Y��ˑVD����3�ȯϿٯ�?�5o�}ǎ>$|B�����~����<Kq%�vk}}��Ǝ�<	�����y�
�9�Q3�`�7ĝCL�'�gK���|/�o�~�
��Sx���������e�Ξ���l�k��cS�9 ��W�'�M�Q�.���>=�@����]R�� �^>ռ5F���z�ewW���	D�+�� f�#R�[����o���8���x��������D�"�:e�w^���ԫf��gi�y�6!�e �H�Q@Q@Q@Q@Q@Q@Q@<�S����F�y㿁:ÿ4���KE0�gƏ��-J�1�dp6��T\Fv�fE0��~̿�F��K|4�ڷ��_M��H��+��l���=��IV*Heu%%��	GR}
�y�,�w�g���h�o�Zޑ�D�kJ�nl�� �I,�n��VÐ� CQE QE QE QE QE QE QE QE QE QE W�� �I��E���� d��� �h���+�� �$�����i� �U��4Z��Q^�ex��zϋ����z����Ǿ��<AI%χ�;��\�+��ji.���gVX���*�XF ��+�?�	;�7�U���/�� �:���2���6�x��<׷�4�1<��FO T�����g����� �y��= }E|� � �����g� �7�G� #�� �����g� �7�G� #��W�� ����g����� �y��=����g����� �y��= }E|� � �����g� �7�G� #�� �����g� �7�G� #��W�� ����g����� �y��=� ����'���&݈����z\G�$��b����W��-K����#���Xֵ����埇l�k�u�k6��y�(nfv�K+�;{�9�hʍ�ȩ�� W�� �M?�7_� �U��� ���_@W�� �M?�7_� �U��� ���@@QE QE QE QE QE��gX����c}i�� ������h���.�6_h�[�g�(C���$q��U��l����iߴ��� ��R��7_�U�q� ���]��� ���_����蚴^$ּM�x�.4�ú%α�]Ao��M�1Hc2ĭ#�]�Ơ�uR��d|E� �N��?�o���hh� ����� F��@�����ב��� �S+��|��_į���_��+�z��)���]\A�[�D������2��$�fޏR��»�����߅�^��'��ߊ���� �+����^��9���5�hc��]�;y���Q���� ����� F��@������� ����;��� ���?���߇_�U��_�M��z|�6��[���Ms�N��L��C�]�$"8.�D��v������n�� �F��?#�W�"1����Z�����zmi]�m9u��q*�<>�2�C~J �� ����;��� ���?����#�/�w�� ��CX�� �[~�K�����T��|Cy�(���z��z��isqΟg"�R�x��4�#b21
	Z����_x����W�ŭ�1�_��s���\ɧ�`b,p�g�6ƱJ��cf ?�>"� ѧ~��7�G� 44�d|E� �N��?�o���hhտি
4_�Z/���F5�K�xt�������v�ݝ:[���+veܛX<L���h?ट�~���n<PZ�Ē�:����Hd֣�X?���ՍRv�)���n��>"� ѧ~��7�G� 44�d|E� �N��?�o���hks���������ݏ�4CU��7�:���v������O�����T����[�}Ѱ���q�1�x?n~�t� ��ڗ�4�/�ok4�F�u��mk{sum�CkaūK%�خg�:�đ�I|��� ����� F��@������� ����;��� ���?���n�������
�+�3��	��<]�*��7:ޕ�.��i1�kT���m k���_>� ���o�1Vux�^����k��Oh�6�y�(c�\77>�u?���O���R�=��ѬW F�k~�%iS|j\ T� ����� F��@������� ����;��� ���?���?�{���|=q��\��M��xwS�^���xKQ���C�i����k��,��S*��������RO��x7MןB�����K:X=��o_��ql��-�%d�E�Z7�(�rW;[ � ����� F��@������� ����;��� ���?���6���l����]���Ω�]?�>�n�+���-z�Uԧ�c��{�>kh���_8��}#�+D����~�?��&�?�5G��i?�<3u�����I���;��w�Q�܌�7� ����� F��@������_����.�߲g���w��8>��0��TP�� h_|[�s�x_T��� i}?�3i���$�e��I"-�x�d�A����Ey�������W�4�>~ן<ay�G�ëx��?]?OI�f�;Mf�L3�Ѵ�M�6я�(��c���!E�o���w����I�� #;�#�/�w�� ��C_@Q@&�v����W±�ο�G��Xڲ����u�xi$�]�W�]��pW%Y[k����W���C�� d�Z^��>/M��W�G�imkQ.|E�**��a_LQ@>������ �L���������G��!��� l?�R���&|~m�pέ�s��� #}E |�߶�'uc�&|~,��N��|���CK� ����;��� ���?����(��� �>"� ѧ~��7�G� 44�d|E� �N��?�o���hk�
(�� �l����iߴ��� ����ӿh��#� ��� �� �#�/�w�� ��CG�6G�_�4��� �� 憾���>� ����� F��@������� ����;��� ���?���3� ��� �zg/�&'�[�~>�6����"I��ǆ����o���nxᄕ*�e����� �#�� ��� �� ��-���s�^�v�0��t�XEc&�!�	��4ؐ�J���U� {��6G�_�4��� �� 憏�l����iߴ��� �}E |� � ����;��� ���?����#�/�w�� ��C_@Q@?� �d|E� �N��?�o���hh� ����� F��@�������P�� ���ӿh��#� ��� ��|W�K�����uς>���'Q�uO�xr{[��8�:�7U��{gx�ǈ�.b���� �� '�'�U�� �#�t�Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@|� � �� �Y~�?�J�/� ��Z��� �N� �,�f��%^� �E� }_?�F� ���� �U���;�2�����#�S~� �*�����@@QE����P|U������&����R�j�X	F�Z��L`)�ٸ�x�Y�X��*��v�%���0ӬSS�У�!mJ���b\In�X��P�B�0k���_�U� �Y�5C���3������ ��k�"�uMݼ���[�8�OC���}�i~��� h��z_]|J�#����ZO���f������KB�&� @����.���.Xg �TW��� ����ڇ�l�m�?�:��t�^�'��|7�kZd��7���n�ztrAS�^΍���;���o�_~!~�Z��o
��G��"�|#�o��Zk![&���ּCkg��I,PD���,��N�0v�~�Vo�|c��M��Z�4��k�k羹Kx丸�-���$�KH��yT`Ŀ��훭x[���?�~ ӿ�����Úe����j:�ī5���<v�\��bU��O*�)V��f����K��Q��5O]G�?�?�,t� �^�����Zc��z��%$T%�D�{*�~�QE�� �� '�'�U�� �#�u�|� �d��~���Uo���]}@|� � �� �u���_�� ����|� � �� �u���_�� ����Q@Q@Q@Q@Q@?� �K?��|9� eW�����G�B����~�~�������#�4� _x?W�<M�������[]Es��f9c�ܫ!��_��5O�)g����?��8� ��B��(����	���Ʊ�����C�?��|w�x�N�N�{��2_��R��[�&;�1[�rƾb#2�l̫�Z���k�O���^4�o�?��3���,���������{X�K.�j��_Z�`���Q����>O����-��C�b�:� ��-�ʹ���l��g�>W˷7q�c��߇�H���.��ɠ�<ռ��D�Ƒ������mhڴ��v��h�`�q������Y�&T��Q@�� >���~
�g�S�^�|E៌5�����ݟ����C{�],����N�Z�@�Hd�g����Uc�?c�~���ϊk���^�������j�&��.m�F�-�8"�Z"�ݡ�HJO�|��s���P�_� ��>&�V���Z��|�������=oL���OWD�>�t[x���<���{�Vi^;t�Ъ��̷��C�?�>'I��<U��ZԼ{�i��ť���_�)�Mk=�[J��+�ʎ�L�"�ȑ���E ~q� �E|�#���e��k�^�i/x�������k����P6����Oq��Ⱦ{�"�}����}��߲G�?go��W�/�zo�o�����5�x�U��m.��י�ˋk�-��s@�71xd�E��)���� �Q��~0|q�<��R�w�n/�|�MGE�����&𶭢Ea�M$%��u�s�4�r�T
���~ȟ�J�|�>X�ZW�m6�:mŭ���<U��Z��r�t�}��ZM��g�0I��U��H/Gܿ��P�o��#��o���Z���G�o�c^����>$��.��xz�M����Ga��)�eX�`��o�/��_��=Ǣ�gW���a�����OǺ߅�em��M��e�������(��� ko�^��_�{�g�k����4�7N���=i�|�g��{��'���8U��PEPEPEPEPEPEPEPEP^u�`|i���d��_--c����uo�l��p�vr�*s�1��ע�O����K�>��r�=CE���m���乷�6�Hϳ#0?Z ��"�C��-��Z�G�u;�k�>"��Qԯ��&�����#�vfbOֳ4�F}"��Y^�wG"20�_k�W���� �����f����o�~l�?��-��Mj[�[�Q��։�K+ޘs��;?����ࣟ4}'�>��Ю��\�6f� 1��AX���'�`�Il տ�/��ֿl��%��߈>#���]Դ���뛣���lo.,�C� =%�/�� ns���+�� dٯI��f_|3�fk�����c{��y�YW�V�f�B �@�"�
(��
(��
�� ��� �������������?��d��*����x��>���( ��( ��( ��( ��( ��( ��( ��( ��( ��( �� �P���	o�6��4|3���6��� �������	�s� 
��^*�?xZ=[���s�A��;E��K�"tc�-�<�;�� �J�� �7��7����������x7��?��/���h����_���P���W>!���!}ml�B}�e����]�dkO,�����h��l?�?��W�k�G���K�ϣ��X��:����5��C<lrGz����,� ��~�� �p��H�\������ Z���+�R�ĚG�#��ךd3ɪi����ve&[l�9�_)����l�y�#���r-ǃ|):͢�3 �H�`�W��S�_�c������{�� G-�?� ���?�"��{�� G-�?� ���?�"�:��ß~�?�?~h�٣x����`h�;�k��+ ��Vr��%�0�!^����O[��Ʊ�-b�ף���]n�0�8n��F�Gڲn��My?�=��Y� ����� �����G�=��Y� ����� �����@���|���mK���_��^֢�GE��6Q�_�R4�,Ј�HGw]��gf$�����O��6k=�����[+�������M%��]���#����x���+���\�=��Y� ����� �����G�=��Y� ����� �����@@Q_?� �ؿe��9o�� � �� �?���[Tb������"+is�'�Ɠ�f=��Oa@�� '�'�U�� �#�u�|���\Կn/��>?�����'�^xv�V�������ݫ���i�eK+{;���IL�ṽˍ^O�� � � �j~�~!?�� �"���+x�\ �b#�צ�����ٻ���<q�y�i��k�"�k�Nh�Zi�h�@%�EP	 W?��Ծ~���ƻ$sx������Ds��ԏw|��ɺ�b=��R��( ��( ��( ��( ��(�� �)g����?��8� ��B��+�� �)g����?��8� ��B��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ����_?� �'�?��?�O���� �ְ�[q'�� �u�w���Rš�{���Y۟��{(���혞<�54����p� �g��(��ݛIԾ�S_��4lG��!�۬Zy#�jS�������m��~�Q@F tPEPEP_?���q_�w��[��B<W_@W�� �G��W�� eV�� P���QE QE QE QE QE QE QE QE QE QE �� �� ���=W�:7�o�|+h�{Z_��i�/ҙ��4��PL>d��+5���֎I�p��<�����ګxvo�x/�-�"]O�>#E��4����q[�2ۋv��s��\_ƿ���?������}������O:�5[�M��bHY�h�t*���������R�ѥ[��k�|e�k�H`�4ʠP�W�� ��?�_�1���}�o� �j?����c��?��x�� ����� �;O�����o� �ڏ�v�ï�� h�>�7� � }E|� � ��u� C�� ���� ���������?�� ��� �m@@Q_?� ô����@���� -�� �i�:� ����� ����[P�W�� ��?�_�1���}�o� �j?����c��?��x�� ���q��h/~Ξ�X�4��O ��\������+�.&b@X�Vv$ �ט�&�Öo�}u�����=:��5����>|�L� �ςt�L�\���R�dNF�}r�\����Lrhϼ�~�t?x� ������6�u/�?TO/S�5ȏX�"�L@�mhIhټ�q0�8>��� (�� (�� (�� (�� (�� �� �
Y� &����*�?�7Ы�
�� �
Y� &����*�?�7Ы�
 +�� h�����^���_J����߈�*�Y�o
�!u41`Kwq,��Z�F̊���nuDHʇ�+��R�/~ؿ��/ͫi>+��k3��2��ZF����V�}!��=�d���R\����P� ���a�d���۠a�k��'��� jo�#�� �M_� ���� �� �?�M� Do�� �ɫ� �1G�,ڛ����� � ��W� �b����>� ���S���� ��j� ��Q� ��� �7�?� ���� ����(��� �c����F� g� �<��� 3��������� �y5�f+�
(�� �X� �7���� � &�� ��C����}��������6�{o�R�Q��;�`���-�`:+\�zf����8���3�L|2��_�n���$��������.�b��]@�<H
<n+L�W��_���O�&�A�D��]�<i��r����<�g�ti�)f��f��$Ͱyv�$5�4�2!h�n.ʭ�[��7߶<)}�o���M�G����{]�FB����\�46��ʳ\/$��X:�S�<�;�_6�7���K���_���t��=�+>���'������Gh�F(� �� ,�u� B��� �'�� ����+�_�z/�mc�
��m�x��>����n����I5Ay:j�+�4;R�.��S+�\b=�rI���ygï�?h�1>7� �Mx��o~�ߴċ��������&��A���'����*)n%[���$�ݞ�r�+&��bm ��[����f�O�}���� ��x��l�Ǉ|C.��@{�KX��v�"er�]��T��1��/�� ��?d�����M� ��>*�D�����x�~��s�w�ŧ��W��}>r�*���s�W��}U�/��'��&� �a��=������v^Im���8a�l�kkT�i~J,oq1P6)%U@�<[���~2oIq�������o�!��Ι��F�qo�E ������W-�$��&���l�d���_�5�����?Z]SF������O\I���CM��V���&y��$V�"I)P�L�2��ʺ� ��x� ��<!�=j�XּA�x�X��|;��V��"]3R��;_�Ie�����n~�Yax�j�G^����� �\�xn ~��I��x�f����Vh��[VK!$�B�'g���(�A�I�-�x;�z=��� �Io��^iz�����v��E5������I{3\�c,�沫6�@/����� �'�
3�k>;��k��o�,�,�p��k�݈��9�g�7dK�Z@��a�ߢ������ |c�}{�?h��>�e���l�|F�l��K�K�����3�4�e�� �Y$��]� ��|:� �s��� ���T��W�� ��χ_�.~��b|o� ʚ?����\��?����� �4�q~>�g�h�gy��Mo����[@�7��Ԯ#���縖FTH�fa�$y��<��������� ��?��� �����Ήa��@��|�O��`�G�u��ڜ3h�u��.�in.;}WPRb�噔����4� �����WP�>�?�tۃ�o|P�M��?�����A�V��<��?�M� Do�� �ɫ� �1_@Q@?� ��������� �y5�f(� ���S���� ��j� ��W�P�� �� jo�#�� �M_� ��?�c����F� g� �<��� 3����[������~ �����
~��j�$�v�o�V{�P�E���|0���8fPH���������A�~�z�f�{�'�~ ������As�_U���--b���B��E��D��0�3�ZGc���� �,ڛ����� � ��W� �b��X� �7���� � &�� ��}E |� � ��� �7�?� ���� ����?�M� Do�� �ɫ� �1_@Q@?� ��������� �y5�f*� �ߴ����߬��w�i���x?�ڎ������ao#�Z�3�5�5�� �� ��cᕟ��+w5Ɵq$���05��u���ช@Q�pXz`�3��?��d��*����x���%a�?���{��ׄ|���R��_ӧ����G�R{�@�߶G��W�� eV�� P���QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE |� � ,� �u����_����U�|� � ,� �u����_����U� �� �o� '�X� �U�� �#�|� �� ��~�?�Ul�� }_=� �Iks�?�%�k�+�wIMs��Z��oZ\]h~��eg�H��V�!Ή|˘�H��Е�?���~(x�@���^����<;����!�F�]�A42���rMo̩2M>� PѺ�
 �����Q� �߳������|;���=Kö>��h]t�h�7�guŜwW�C5��H���W���rE{_�?�?
~x�R��k�Co��g�uX�36��n�XaԮ�#��\м�����_-X1���?�K��-~-x���U�oZxn;
x[U��EԮ�}n=[���谁��_/���ٳG9iru_a��"�u��ᾇ��<�IOq}�k7������_Qӭ�uHm텖�IUb���y�2 �0�|E� ��|)�Y�;���.�T�|=�,���Pxj��I�����\��wx�b�㻈�m@�ER�|E� ��|)�Y�;���.�T�|=�,���Pxj��I�����\��wx�b�㻈�m@�ER��^��;|Z�����G��l|e���7�l|1�k�֥w��[M�Z^Oml��G|M��{�q�ŋ�Bɮ����;�����K�+��;���{/j���^E�h���/�����[-��ߓnvǾ�.hرpH O�U� ��|/�9�[���y�&_	�km�]b�����/���TxR��8�rRX�m����G�b0c��j� ��xwD���7��}SV�Z����
�X��ޡ��<�y�{�{[��Pl�p���a�n�Ǿ8�!�Q��N��o�h?|M�O�ڤZ���I�z�+�Z�]�.�h�g�P��x̗�L�9���@���5x7A�/��7�����B/�x��Y��޾ӆ�.���f$���d�GژJ!\ƆVh�>梊(��é� �P>5[\�Ž���,R�t�V�*��A�Zl� ��� f	�Ծ^X� �:��s��Z�h�7��˸
ϥ�{DKBF0�4�o�?�ߌ��J�� �ׯ|P���� ���<K�f�Z���E7�$ۯ5�,-"��2����w�b��������OL�ot�����;���ׅ�t�e��м�BJ����Ү/����<'�,�%Լq�B�K�֕5�����m֣7�ss����rM#<�ācF9q�$q?�� �.|U�|c{��z���w���xZ]U!]�}��vv�pȿ3,E�T  H ��(��
+7�~1Ҿ�?V���Z�:&�g6��_]H#���$2K+��QY�= 5�?�� ��F����׍��_h6�'���>��Jɦ�K4P\Ht�)�5y �@r��0F@=���g��O��7����u����;鴻Ś����O��m�͵�G=�˹I�TV��	� ��Ǿ�֝�x�M�ܭy�����j6ʶS<g�IKΨb��]C����+�*�EP_?�F� ���� �U���;�2�w�Gů�p�5��</�jh�S��Es�I�-��a�EVe�E�;r2'Ⱦ#�S~� �*�����@@W嗄� �� ���ߎ��?e�j���i�K�N��허5	%�S�2���n���6M�ʂ�G�m|����y�� �Q��]>�S���;eky���M�+kw�B���u�.'����3+!m�!xҀ>���� �_�w����f��L����ĺ����o4oKr����q�6�RX�m����G�b0ckZ� ���;�>3�x%���r����g��L�nR��{Ԉ��.m��ڦxՙX�|���	9��D��4>�c�i��(5�B�Y�n��[KK�o��X����Ż<M,���]�|���|b� �w�J��mu�����]��I�WǺ/��}Y:]�����-c����45����#ʩ� �[�(���G�~���F9�B��_>�_M�+�M�.�c�;N%V���fSc/�M��?m��<=���<1��d�7ƚ���K����+;�m�PҪ�FfD_�L�#'�O��H���.��ɠ�<ռ��D�Ƒ������mhڴ��v��h�`�q������Y�&T�A�|�o��� t�}<;6���^-�ot�Bi���S���H��{x����<�f�$���|I�?�+� š�xw����w�����j��.Ӽ?{e�BIeT�̵��۸cx����nr����Oǯ۷������氾,�5�=$k����|7}�I�����Z��Ll�L7�'�.�m�����/>~�
4?��� 
~ҿl�o4_�emn�(A��ΰ���Q��ed-�Ä/V��G� ����_�[\����s�>(�<u�3E���_���a��dn��C6�n�P�avU��!p`��k��z���+7�_��jW�k ּ;�Ce.��-�׺���5�0�g���Ь�Eql껸0���&}���<�o��ơ��Ga�Q�K�;���m'{+;�T fA�_�6S#.GU |�A�ſ?a��'���7O�k�|9����=�����Z$�X��7v��p�t����{�hVb�%���ߵ�A���S~��9�\�����k�Xֵ��mGA�/L��-~���β��$�|f?=ɍ�(pV��� ��o������������g�</�_jM/�m���h��M��F�H�B�Y"�����<c� 6�W�?^X�x�45�>"ԇ��Ӽ"��G,jw/.�_.h�D��
H�/�����G�W_��x�K�I���q�I4��`�φ�{|��hؔ.�Hݿ��ȿh/�$��<k��h�ÿ�k�F�������_����wͳ����M"���[b��ݏ�c��"��_����<y�?�"�Tէ־$����/<7�`�+^}�����*A%�&;(x%s��ξ�?a?�^�|�M� �e7�� �P��6� ��o����K�}�����.#i�>����W1���?���� �?�ߌ��J�� ���d��~���Uo���]�)�?�x� N�3���� ��������� ��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��� य़�n�� ����� S}
����� य़�n�� ����� S}
����y��/�����Pxn�:�����V���g�n<5��ο�_�h�ђ:�޾��'��� d������+_ּ�©,:7�tQ]C�2�\E2<WV�2�4��]r*� ��+�~�_���^��/�>|� ���Zνb.>jR*E�q�H�&EY���F5V�;���j��� 
���� ���?� ��� ����(��� �\����Y?g� �3z�� 4�¹����~�� �f��i��
+�� �W?�7�O�� � ޯ� �=�jo�,��� ��_� �z ���� ���M� E��� �7�� �OG�+�ڛ��'�� � �oW� 枀>���@���[�S~����O���?g��'�t�� f� ¤���iϑ�� �J�f�7n���nv�p;��_��������z�w�i����?�l�v���C=��lGFkg�\P�J�?� �I�=k6��t_�;��3��.�m6��� =%��b�v�Er� �Z�����McSմ]%<u�f��t�$�����̚���*.Y
|���+���I���ᗇ�)�'�^�6��]\�70����{su##�ܓŦ_����4�,���`��	O�?�M� Do�� �ɫ� �1@���Γ�O�� �F��O�W#�+��������M��K/����\�,�2%��r��Qe��I+��!�_�W�� �('�~3�C���g5��~�h�Z�e��4��$��c�KI4�rM�W3,m��1o_JG����v�����W$�|c��^O����� jo�#�� �M_� �� �� � �r�U�/�~%������^|BմmFo�Z=����x��A�L�#U�'�����}C�1"Uu�4;�P-�c�� �<�����Q|V��q�oZԭ|Q�����[�M�Z�����5�g��bZ_�E�|�S��~!~Ԉ���g�}� x��z�[�� ��@��"ge�1�>�Hw1�a��?�Lz�P�}������x���u�=C�&�u�h������TXѴ뫛���K�"��Ȳ�+$ea�H��s��ퟣ� �>�dӼ�E�9xa��h��|]m��Y��$�"9���ɜ��.��#���RE�o����w��q�{� ȱN�j`?���� �y5�f(���6�࿀�N����o����e���w~&�����h�-���i�D��-ض�L$i���K�[���I~�>?|P���m��Ũ��> �<U���a�.��i`��Ǖ<�_���S����Q6����'�M"o�?��+~1��#� 	�k|A��/,���Ldm*~1��#���P����y��� �����|`���|���-C��S≦�&�����o.�)(Ǩ���٤�ddg���ߍ�h�_����c�[ɨ~�u�������g����g3!�hFX�a��6�+�/�~������}'����ox�_j��F�"�ܑAyc�a��ǁ�'>���,ڛ����� � ��W� �b�>B������ŏ��
�񅮋��T���[S�>!�J��}+[�1��/��D��YL�Xm]じ���@2>�H���=��+����{����H�,�)�|=�뚌z�K�%ޡ+Z��,zQsm$�>�K�°�J_�_�$ɵ��Ϭ��o�z���R�����v������ ��c��#�� 2ǭ y����g�~&~�~��+��|K}�GX�Q���:ŧ��^�_@ؖ)d��O�"�ߜW�|o�����R/��ޠ��Mּ)�����m�]M��0@O@�o�_0�X⟶/���?�ǟ��ξ�<'l�o���:Ɓ��g�u�4�"݌�!h\�208���sE��?n?��,�o�%�/�_
ch�<�{MZ���w1:Iow>�đ8.��mdw"�Ts  ���y��!�H�6�t�����kM��`����-]���{_O�F�-�d�S¹����~�� �f��i��
+�� �W?�7�O�� � ޯ� �=�jo�,��� ��_� �z ���G�_��߇�'�� g�O���8� x�A���ucopȉR��%Ig��c��	ч���W?�7�O�� � ޯ� �= }E|� � 
���� ���?� ��� ������M� E��� �7�� �O@@Q_?� ¹����~�� �f��i�� �s�S�d��� ���� ����W�� �jo�,��� ��_� �z?�\����Y?g� �3z�� 4���� �+�ڛ��'�� � �oW� 枡��%�Ix����ǯ�z6�1�=σ�ͧjʝ�3���F�tf�|u� ������ֳa�m7E����s8"�V�k���в[�,Go4T߶G��W�� eV�� P�צ| ��ٟᕟ�<+i4}��\�\\��7��Ԭ^{��ܗ��Y	w��,�� y��� '�'�U�� �#�t�Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@?� �K?��|9� eW�����}_?� �K?��|9� eW�����}@r�4�?����x���[h>���o4�+�.Dq�W���9geQ��Vo�<���H]?\Ҵ�f�n ����q�	�x%�����r#c*�0@4����آ��O�K�y�)-ƛ�7�WÏx��V�������m2I;[KHmR6�L��&�����$�n�>+x'P��]��ď�ax��)�*+�y�~�wGq$��cc�7���� )M�7� d�ǟ�w�e{}��4�/�k���z��Wz�[��\�J���cs$m<̪N��cq��Q@Q@Q@?� �'�_�O���� �־���� ����/٧��W�� ��k_@PEPEPEPEPEPEPEP���6��񽟌�(k��R�1��$���/��Ӵ��.�V���?i
=��( ��( �O�Ɲ�s�7�ox��Kmº|���F��uEȎ4��;a,�9"����g�4���V���-�b���.!A2O�\�9��Dle]��?:|�]�I��|7�%��~&�j�q�����P�^�]_��Ai!kii�Fܩ�������d��ڧ�o�?�������;��/Z@�!{�Ex� S��n�h�"�YLlw��r���)�� �x�� N��o����e��z2�oR����PKu[�� i^�Lnd����I\�n9 Ѣ�( ��( ��( ��( ��� l��8��;�ʭ���+��+�� �#�N+�N� ��}� �G���
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��
(��>� ��ɺ�s�ʯÏ�M�*��� ��ɺ�s�ʯÏ�M�*��
(��>��� )M�7� d�ǟ�w�e}_?�F� ���� �U���;�2��_�+��H�������[ִ6��x���M+U���&X�ؘZ��R�ԡR�X� �E|����*���ۏj��>+x���}R�G�O���]:M+I���Gz���P���ī4�Z�S����GÏ�w�_>#x�º�oy�|:���[P@���+���ï�4d��Am��  w�Vv��'ZѢ�l�M:�O�AwPܤ����	.B�I8�R�#��U���g�Y�*��γF�p@e$q@(�� �� �	;� (����x_� M��|�� ���t/�?�M�دK���_�'��;����g��/
K�<��"iӍ��h�K2�7��Zx{�t�����ּcu�-b�@�֑�ł���Ӥ��04�� (f���X�T��a�@=J���O� ���C�Z��W��g���	�GMOC�V�\:j�F��{i��.-�!��d��K��O�,`W�W7�l�+9�}.+�MC���H�]��cRr��s@�W���_�W�?fͯx��Z}�7����+�<�7�� ��~�Ǣ��b��������?�5ߏ�#]�E��^�o��"��u	�B�O�X�����5�Yg�.�0@=*�🂿�P��j���{�:;]ÿ>��~��麼V�Q]Y�]7٤�iRcn.��ySites�� �S��?
|+��^:�6���Z�߆�%���6����7�6W��{����7�y��j�E����@IQ_=�>���Ʒ�*������_	i��2���%umZ�Y<��������+0�R��\#2+g�͟�Q{��g�~��?�/Ư��=zOx�V�%����W�iَQo��4�ʹ�;��Q�@���J+����!ῇ�9�MbI�uh��࿙��O��Ӯt�i�Y�YMV�`
A&YHP�g�_�n?���>xO�׎�,��]?]�}6�t�2I��&��.�a��N�Ǝ���UF� �+��+� �k�?���Kuw�x}~#x�oi�n�g�]B�W��-͝�d���W
�X�Qv�B�̾)����F����B�>б� |ǝ�}� �Ea��N���&���Z��g����v�up=�*�L�GD;�,���ɟ�Η�_|Ӽy�� �������ɦ�kn��W�Ɵp�}�i�8��\�u+�� H��( ��( ��(�� ���߃�J�y� �W��� �o�Jo���%^<� ӿ�+�
 (�� (�� (�� (�� +�� �#�N+�N� ��}� �G���
�� ��� ��������� ��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��� य़�n�� ����� S}
����� य़�n�� ����� S}
����(���#�S~� �*�����_�'�E��̚������ ����_E�;�^�A�<eusq�� k�+��F�m���?��bd�do��#�S~� �*�����_@P��Ǎ.���!���xG�������.}_R�ҭ~隶�����4�Fm�K�m��[��\��Tf�;��ߋ?���?�c�|ms�>��������w�m�?�K��|_��-4��,mn�!��\Ib$inyo����E ~H~�^��� ��8x�¿|Q���6����2����.������ze�PL�K9l-L�(���o/u}k��3O_���'��xX�w�]��?ce�_�R���k��P�u�:}�PM��]6ݤhTL��d�9�ᖃ�oð�>#Ӣ�4�}F�V�	�V����Yr��q2Д �2� QE ~d'�t�� �/�����#��/����WW����~�]k[E�6�]MkH�C̶Ŕ#%QU��K?�v��<wu{�ƺ��� ⯌']��;�隆���I���f�����W2��W䒬m���g� �� �Y~�?�J�/� ��Z��?%�3�4��� �_���ŏ��#�G\�"���;��D����-��a�b���T��lm�ΊFgfH�@�(�� o��������7�i��۴��Zi� 5�c� ���Ӥ���Y���L���|�4Om �n'�~�Q@�?�����G���<}�|!x��⏃�K�|*ڞ�y�X��{ӧ/��ʅb�"u��42FC*>�� ���as� �����$���<k���d�{����C)��Q�*�[*�ciPA�
�~9�
��'�����5ҿ��;�Mmq=��f�c-��WP:�����R�((��~�3���I~��9�φ�&xOǚ'�~뚍��Yj�E�M*����@�ln�sYϰ��7��q�� �߄�!|��/�*�S�
���>#h,�z%�#�����o��ϸP-R9<��F��92G�6��[�sD���D�ka[�$��p��Ws�,� e��z�O5j�>E�S}����Q��ޏ�_�_�������G���~��Wڝ�;$vw��s�Kh��|�b�<�f��k�� �}�\�_��چ�X��]&|b����/-$�5+C�hq� $���2��u�T����o�'������⯈��K��>������y�M�����f{�kh&v2G� ����X���߅� l��K�p|X�W����oi�\|;��X5��E�]&�^�n-<7���),񥽋��(�a�2K�߬�P旉��ω�����o��񗏠�/��oa�[�a��W�"�m��Y]jZ}��2�ZK&�,*@H�����:_�����8~��ڞ��Bx�P��x>�-���\��g^h��%���e��C>����_�:n\�� ��� �P�þ+�_��|.�[�o���:j_�Qu��2�Pҧ����j2D��"�P�O��!�o-m�0�Ŷ��� �:� ɌZ� ����K����|��ÿ�Zg��M������ǠXX[\K�,��@�$����
6�s�j���+�6|1��o�����oM��{{O�KpVK��.gv�Vy�i�rY�%� u�QE QE QE |� ��R��o��W�?��������� )M�7� d�ǟ�w�e}@Q@Q@Q@Q@|� �d��~���Uo���]}_?���q_�w��[��B<W@@QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE�� ���M�ß�U~�o�W��� ���M�ß�U~�o�W� QE�� �o�Jo���%^<� ӿ�+�
�� �7��7���������� QE QE ��C��<w�xgKԖ�^�=ͽ��f�I�oqn�0��@tx�H���ș������y� ��J��ݿ�|;�x�&8A���ĳQ��c1�`�n\�F0 ��N� ��o�#��� �j��Z'�?\]��R���h� g�وU��ٕT ���?����� �� ����� f�f��O᷃�Mh��Y�+h�sYY��%�N��|�$��A( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��(�� ���߃�J�y� �W��� �o�Jo���%^<� ӿ�+�
 (�� (�� (�� (�� +�� �#�N+�N� ��}� �G���
�� ��� ��������� ��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��� य़�n�� ����� S}
����� य़�n�� ����� S}
����o������
��H�q��H��E�?�V���j2<zW�t�q�7����;"�1%ā�J"K,^�_?~����Z~�Z��jw��A)2X[�_G�"�=p�:���f=��?}� ���~(h�>��)�2�����ZM�oxoO�-m/����(��t��0�����g��B����co���v?��
<� ��}E |� � m������� �G�?������/���� ���=_@W�����h7�_�(ơ��~�4��� O�c�x��x{��N����u=R�&��J�tA� ����I��?፾"� �����(�G� 3��|E� ����?�Q���g��a?�{���|3k㫯x�M���7P�����hQhw^#Ѣ��5xu;�UHUQ���	$P�%T�U�#�=�Ŀ�)V��K��t� ���:���پ�i�s�$�Z�i�m�Kinc��v`T� P��1��_�;�� � �z�>&�;�Q��ֻ�/��� 5�x��}/S��G�O�ym4f9clxxX������[������v�y'����׮�5�躣�,�����	$�H�9b�[��d)N��� fO�$�� �{�GC�w�������	�v&���7���1w&I�%rY�˻7A�]���#�I5?�n���yo��о"�L��b��H��{VnҼ7!OX�t�� �g�M��>��gc�h���{6��h����h:�,���%K)*��JI�"3#����>���R���U���u?x/������q�	e>��J�L��#���
(���?�� �W��g����s@AQ_�_��_�go�� ~%��}��/���+�����.�t�:�n-�t�yֲ.��3l}�8m��o�x�X���	K��'�CU�ܺ���淞��ҿ�#���rbkylt�q���J�~�Q_~Ϳ�0|^��� ��<�{_�?	�#�Os�
mU���B�W�&�q�gZ �&�w��|-����� �)�=G��ׄ~�:_���:���ijSj��͕���L���{H�('T���-��8�Guy�a�8Q�P3�PY�U�$�rE~K�� ���d���VO xoPԴ�>�4;M��Wڴ~+�-M����L�X;��.caĖM� E�#��� ��������~5xGA��u�i��Ǉ|S�ǩY�wG�D��[�-�s]\]]�/�|��F }�E~tZ�:��߶?�� ��� �e��_��#�3F�[�g��hPA��o�ӡX�Y�v�%w1��.�����(��_��y^$����?'���-�=�-WŚ��6���,�g�[�%��ȒI$�s���g,���W���m���E����z��|��H�uo�W>���h���a�Z���̭t��yd
$��M� �?���_ڲ����]g��
�v��{�>(���������z�����\Ǳe�t���I�ɐH�u�_�� ��h[MCE���4� x/K���o<;��R�U���sZ���l7(֖k��v-,�+�)�0o]��[����O��� �+��?��O����:<����������U�ooژ��I�Flb"�����k�+�qƥ���U�I�Ȳ������ �_([� �#� �?���~��g�����(���(�� ���߃�J�y� �W��� �o�Jo���%^<� ӿ�+�
 (�� (�� (�� (�� +�� �#�N+�N� ��}� �G���
�� ��� ��������� ��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��(��� य़�n�� ����� S}
����� य़�n�� ����� S}
������� ��k�*�?��xR����>��~���Z~�:ƻ�|P�������$~���?Z�_x]�k}:���2022
�����}�� �;O�����o� �ڼO�'�,���A���=o\ԧ[k=>����%��ܬp��k�݉�(�@vW��� ��~��� ��Ve�|�x-�ce�B�����m� 6� �l����+;��/+� ��u� C�� ���� ���������?�� ��� �m@sc� ���/�z_ÿ��:��� �$�>�s�j�mJ��X^��h�*]��,5Ƅ#@��b�i ����N]k��#�ֻ�/��x�\��,�o����a��[��h�ci��f��Gf��D���&j�?����c��?��x�� ���9��/�a�G��&��5o��<�k�j�o�-/,e^9b�]�;� E }I�?� � ���H������ �����l�/��6�������1�]��\��ь�F����|���7���ƿh:ź�XjZo��K�;�Xed�X����rI�?����c��?��x�� ����� �;O�����o� �ڏ�v�ï�� h�>�7� � p-���;�;� �S~(�A��@�?�>x#�� �c���<�+W�~�;�2���Ϙ�|ݛ��wl}�� �<��������� �� �;�~���
I�GЯ|ags�����'�<Y����;j�/B�Q���#�jDj�0K0P���a@?� ��>й�@��� *k����l|�����	�W�hS�0Ү�M^���� �]��M�y��k"n��w#+�pk�
(���,xo�^2����-����Óx;T]W���NH�IQ���In,^K+R$lEj�*�� Q6���fmgǚ���>|v�_׼� 
���|���O�,l��@'�T	HT�Eξ |V���8x����������O�w�m<K��SH����f�W�f���Kp��u�j�2�� �f.@Z��^�u��c���ƭ��C������{�b=3�WH�xSK����	gb��
C�'!U� �}���[������ i��C�%m�����xA���ie^[���\� �$� ���o�:���M?�[��c��G�o��?	~#�6��<{��6�+R��7>�&�pp�W�C��������w�C��C�%�g���M�xoP��ZigR��i�0������i�lvq���(��~����{᮳/�uOG}m�E��WI�{y��+�������r��X]B�\�*�I� � K��_�G��b��Ґ�}�N���m~�M��u�t����u(��P1EQ���Vd�� t�<o�7���Ś�?jM/�_`]*}c�>&�f���Y�m�&Ӭ�{�U�ʤ���b�K�&� ���N���;m��u���B�eֳ�χڧ�t�jz��2F��C-�����ew20���?j��~8�~�~$�������m� 	�nl�C�]��k�,"_4(�&��G�cL ���?>8���|?�~�q�[��������G�c}5��q��{$if�����4�����&�F�o�m�Ж��?��7�ƫ�օ���~�x"����2Oke��-�|���p ����4�'����7�g�i�0x�V���~��&�{e�$��4�������d�����'���x�W�|1� ���d����7�o�uK� �_���x~ _y�Lz��S_� ny����7/����~�	�|���5���/�C~�|����~��h)���2Ǧ�귰__B�&��VK�h���b�ƿjxU����?���a��R�s�W�ڕ�����M5���iR�^C7�f�b�<ctb%��l���"��)����/��+����+_i�b�S�q{��Ix��{��"	�Ù;��_�&�2���MK����3���U�ܪ��:�}�o&5;�S�� ���'�_ٯ�?���|)�o���k��u�jZ���|M�:�������%��M=��u?��HY��>��R� �X�ºjj�� h�}3A��A�M�#B��Ѣϗ�]Eea
]Y�����P������� j_�^=����-o �7ៃg� �E�4�<�]��j�&�b~ԋk��.�+)�ƣ���������k�OxcUռ�#D���;O���U��#�˛R�6���<z�dD-لjdi�h� d ��c���g����%�S�� �u�m�|u�=;��<h,ѬZ��I!�B�
�{	��^����>�q����� ���t�k9Z/�^81���'H �x�/|Z���D~�?<{�O�z?�[mW�V�F���g'���óO�\5ğl�E.֑�3�0�m�b~�P�� ��χ_�.~��b|o� ʚ?����\��?����� �5���~5X�ҟ�RO�z7�B�D��_�jZ��>k�����T��B��Vv�,�%����$��aE QE QE QE QE W�� �G��W�� eV�� P����� �� '�'�U�� �#�t�Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@Q@?� �K?��|9� eW�����}_?� �K?��|9� eW�����}@|��?x���� l�[N��յ/�$7v�1���c���"��/�_L��� �H~~�_<������q��E�^O�u�Ҭ4[�b?��ͦZ��U[��!� ���㧏�)d?��X��?�(Z?�z�ӭ�B��$�ӒR[h�-�ew�)pBe������έ� 9�'ᯈ�v��8��IҴx�O�n��6�yUa��9dH#Ļ#k�/�f�%�Q������O�[�{����	|7���U�o���4����� {�6h�]�8w����[V��a��	�f�ҏ�c��]$ٲ�ko��򼒤��n�	� |o�D��^&�q�[�־�Ƌ��|_�i�w0�ҡ��� ���4~a-���R�4�� s?���ߋZu��s�I������O���|-��;[�dO�G���nĖ�,�L���	T���H$���a߂�4�]���|!�c�kZ~��M����g���D1��;DYbT%Uڪ� "��S���u�;Ėw���姌f[�~	��d�\�a���J�v�a��BC�E �)�����U�mo�G� ��m>`����� ���6w?�>_�4����ӭ�����[��Ox�~P|� �H��Z������~&��][R���CT���\�7�6��q��$/�@�D��F̄�2�� �i������� `
uPEP�� �)�?�x� N�3��+�كR�������F�'�<:��'ë�� S�O�K�\�K�%��X�԰�̳��'�z (�� ��5~�L����ծ5oj6z�����ڤ:_�����o�XGr��Iv��X�Vm���zg�~
xg�׏�g�L���
��P��~�,�o���8_c�H���b0����'���<�&/�t�֓����7��MKW�.<=�_F����d�o������k{i�ֱ:����V� �k|��t{]�>��Ӵ{�x�V�5m�eY�a����+���d�&��˙\��w��<�_�Lo��3�4;?�F5_�����;u�׉�_��2SO�k�Mո,�G9�$����� �?~|D�hxVH-��
����麽��e7��HN�%�����K �����h���Z(��*�˞����E���t?��~��Դ������L��t{YชE�9#dupH,�J���� ��Co�q|h������Z����gAM`�c�'�`{ɓ�o�	�;�j�
(城�K����?�|]�(.�kK���x���]Rm��My<:o��Q^N��L��3I!f̎[��;� ��3��~��|7��j>7K���O��Yxr+��9౵��ു��0���aG��z��<������ �s�'�!�?�|+�x&on.viQ�6�����}����2?���\r�� ���~x�K���;�[��u.��l�<G��_����t���-lC�d?f�<#2!+^�E xO�&��߂��xwú�������b��6�y��n;��9ᰳ����!urPƉ�yi�ݨ��
(��
(��
(��
(��
(��
(��
�� ��� �������������?��d��*����x��>���( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��( ��(�� �)��?f=6�Ҿ#xS�~�[�x�F��ϲ����q?���+�O�����-���4{�)�b� [he��fNF6*�s� 5���_�-��τ?G���wM��h��۪�Y0N��0>0�\D�� �\��8�w��𽝆�u->� G�]GEִ��g��7j
�Ŭ��6�ee!�DfIљO}E |����Sè-t����K�#��O©�9=��Y��c���0� ¹����~�� �f��i��
(�� �W?�7�O�� � ޯ� �=�jo�,��� ��_� �z�� �� ���M� E��� �7�� �OG�+�ڛ��'�� � �oW� 枾���>� �s�S�d��� ���� ���� 
���� ���?� ��� ����(��� �\����Y?g� �3z�� 4���0�d��i&��#㕂�v�仱�u�|'q�E�)/.5��պ�x$�ל�E dx�:/¿i~�ޗc�h:%�Y�XY�"��TE k�E QE QE QE QE QE QE QE QE QE QE QE QE QE QE �� �|~��N~ʖ�����FԵ)��G�����]@��1_@W�?
�� jo�kX��f�s���67�	�n�&=OY�����d��֊�?��r����� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� (�� +�� hOه^�>"C�?�F���WⅭ�X^&�ɢx��6fK-J8�q���n���F�H��p��>u�� ���l~2xSſ���I��t�o�=1^b���z����� Z�V/�g�ҟ ��W����b����P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $Q� b����g� �8zG� $W�P�� ��/�g��[�� Ç��E��/�g��[�� Ç��E}E |� � b����g� �8zG� $P� �U_���B���K�;R�����E􇲭��'���*}+�
(�j��m�F�t�|�_xLz���k��z܁�db�b8ʵ��*�'�2�������  ���g��{A�K->��=��
�?�䜒I$�� QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE QE��                      �               @                     ���        @	                               ���         �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����, � � �            Standard.LIB @�7�S      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @                                                 2 �  �           ����������������  
             ����                  ����                                POUs               FBs                FB_SimpleManager                    FB_SimpleModeManager  !                  FB_SimpleModeManager2                act_fbd_controls  3   2   ����           	   Processes                 PRG_ProcessAuto  &                   PRG_ProcessManual  6   ����              PRG_MAIN                actEmergency  4      ����           
   Data types                EN_Mode     ����              Visualizations                VC_ButtonPanel  #                
   VC_Process  %                	   VISU_MAIN  $   ����              Global Variables                Globale_Variablen                     Variablen_Konfiguration  	   ����                                         ,%  �                ��FA                         	   localhost            P      	   localhost            P      	   localhost            P             �VO�