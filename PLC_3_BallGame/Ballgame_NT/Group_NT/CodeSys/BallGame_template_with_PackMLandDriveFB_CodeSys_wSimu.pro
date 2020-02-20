CoDeSys+�   �                   @        @   2.3.9.62�    @   ConfigExtension�          CommConfigEx7             CommConfigExEnd   ME�                  IB                    % QB                    %   ME_End   CM�      CM_End   CT�   ��������   CT_End   ConfigExtensionEnd?    @                                     �FN^ +    @                           �bS        |[   @   @   C:\APPS\APP-V\CODESYS 2.3.9.62\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         �/N^  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��	           Load Start Value    PV           ��
           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             �/N^  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��	           Reset Counter to 0    PV           ��
           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             �/N^  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��
       
    Count Up    CD            ��           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             �/N^  �   ����           DELETE               STR               ��              LEN           ��	              POS           ��
                 DELETE                                         �/N^  �   ����           F_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �/N^  �   ����           FIND               STR1               ��	              STR2               ��
                 FIND                                     �/N^  �   ����           INSERT               STR1               ��	              STR2               ��
              POS           ��                 INSERT                                         �/N^  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         �/N^  �   ����           LEN               STR               ��                 LEN                                     �/N^  �   ����           MID               STR               ��              LEN           ��	              POS           ��
                 MID                                         �/N^  �   ����           R_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �/N^  �   ����           REPLACE               STR1               ��	              STR2               ��
              L           ��              P           ��                 REPLACE                                         �/N^  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         �/N^  �   ����           RS               SET            ��              RESET1            ��	                 Q1            ��                       �/N^  �   ����           RTC           M             ��              DiffTime            ��                 EN            ��              PDT           ��                 Q            ��              CDT           ��                       �/N^  �   ����           SEMA           X             ��                 CLAIM            ��
              RELEASE            ��                 BUSY            ��                       �/N^  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��                       �/N^  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��       2    is FALSE, PT seconds after IN had a falling edge    ET           ��           elapsed time             �/N^  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��       0    is TRUE, PT seconds after IN had a rising edge    ET           ��           elapsed time             �/N^  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��           The pulse    ET           ��       &    The current phase of the High-Signal             �/N^  �   ����                  EXAMPLES           fbDrive                DriveMovement2               FB for executing the motion   tonTimer                    TON               Standard TON timer. Use this   fbDelay                  FB_Wait            $   Different simplified timer.
END_VAR   INIT                           _INIT                           DRIVINGLIFT                            _DRIVINGLIFT                            DRIVINGLIFTINTOATARGET                            _DRIVINGLIFTINTOATARGET                            STANDARDTIMER                            _STANDARDTIMER                            TIMER                            _TIMER                            DELAYWITHFB_WAIT                            _DELAYWITHFB_WAIT                            SETINGANDRESETINGOUTPUT                            _SETINGANDRESETINGOUTPUT                            SETTINGOUTPUTFORAMOMENT                            _SETTINGOUTPUTFORAMOMENT                                             �/N^  @    ����           FB_DRIVEMOVEMENT2        	   TONTimer1                    TON    	            	   TONTimer2                    TON    	                  bEnable            	           Enables the fuction block   bStart            	        *   Starts the motion to target by rising edge   wTarget           	           Target destination   wDriveStatus           	           Status word from Indramat Drive   	   bMoveDone            	        G   The commanded move has been completed. Drive is at required destination   bHomingDone            	           Drive has been homed   wDestination           	           Current destination   wDriveControl           	           Control word to Indramat Drive            �/N^  @    ����           FB_SIMPLEMANAGER           rsEmergency                 RS    `            	   rsRunning                 RS    `               bResetRequired            `           reset is required      bEmergencyClear            `           Emergency cleared   bReset            `           Reset signal   bStart            ` 	          Start signal   bStop            ` 
          Stop signal      oEmergencyClear            `           Emergency is cleared   oRun            `        !   System can be started and running            �/N^  @    ����           FB_STATEMODEL_ST        	   RTrig_bSC                 R_TRIG    
        "   Rising trigger for State Completed   RTrig_StateChange                 R_TRIG    
           Rising trigger for State signal   bResetLocal             
           Paikallinen Reset	   bInitDone             
           Initialisation      bResetFB            
           Resets whole FB   eModeReq            
   E_ModeCtrl   
           Requested mode   wIgnoreState           
 	       A   Ignoring states. See bit from E_State definition. Aborting = bit0   bSC            
 
          Step Completed acknoledgement   bAbort            
            Abortting signal = EmergencyStop   bClear            
           Clear signal   bReset            
           Reseting signal   bStart            
           Start signal   bHold            
           Hold signal   bUn_Hold            
           Un-Hold signal   bSuspend            
           Suspend signal   bUn_Suspend            
           Un-Suspend signal   bStop            
           Stop signal	   bComplete            
           Complete signal   bAck_Completed            
        "   Acknoledgement for Complete signal      eMode            
   E_ModeCtrl   
           Current mode   eState               E_State   
           Current state            �/N^  @    ����           FB_WAIT           Timer                   TP                   Falling                 F_TRIG                      IN_TIME                      Time to wait      OK             	       %   Gets true after wait time has expired            �/N^  @    ����           MAIN           tonStarting                    TON                   rsEmergencyClear                 RS            '   RS - flip-flop for Emergency clear info                    �/N^  @    ����           PRG_BLINKING     	   	   bInitDone                        Ohjelman initialisointi   TP_Delay                   TP               Nopein taajuus / 2 tuottaja   bBaseHz                        Nopein taajuus/2   iBaseHz                      Base taajuus (Hz)   RTRIG_2Hz_Sign                 R_TRIG               2Hz signaalin generointi   RTRIG_1Hz_Sign                 R_TRIG               1Hz signaalin generointi   RTRIG_0_5Hz_Sign                 R_TRIG               0,5Hz signaalin generointi   tBaseTaajuus                    "   Base vilkutuksen timerin arvo. f/2   fPLC_CYCLE_TIME                                    PLC:n cycli aika. Sekunttia          bSign4Hz                    0   4 Hz (240krt/min) taajudella vaihteleva signaali   bSign2Hz                    0   2 Hz (120krt/min) taajudella vaihteleva signaali   bSign1Hz             	       /   1 Hz (60krt/min) taajudella vaihteleva signaali
   bSign0_5Hz             
       1   0,5 Hz (30krt/min) taajudella vaihteleva signaali            �/N^  @    ����           PRG_DRIVE_LINK                             �/N^  @    ����           PRG_HMI           bBtnResetCounters                         Button Reset counters   bBtnEmptyPipes                         Button Empty Pipes   iSorterLiftPos              
           Position of Sorter Lift cylinder   iLiftPos                        Position of the lift
   wTargetPos                     #   Current target position of the lift   bBall_InLift                         Is there a ball in lift   RS_Ball_InLift                 RS                Flip-flop for ball in the lift   i                        Counter                    �/N^  @    ����           PRG_INITIALISATION     )      tonMoveDelay                    TON                
   tMoveDelay    �                  	   bInitDone                        Initialisation done   bGatesClosed                        Initialisation done   bActuRetracted                            bDriveAtLoading                     �   System variables. See SFC-flags: http://infosys.beckhoff.com/content/1033/tcplccontrol/html/tcplcctrl_editorsfc.htm?id=24319#SFC-Flags   SFCReset                        For reseting the SFC   INIT                           _INIT                           WAITFORRESET                            _WAITFORRESET                            RESETSFC                         	   _RESETSFC                            INITMACHINE                            _INITMACHINE                         	   STARTINIT                         
   _STARTINIT                            GATES                            _GATES                         
   CLOSEGATES                            _CLOSEGATES                            GATESCLOSED                            _GATESCLOSED                         	   ACTUATORS                         
   _ACTUATORS                            ACTURETRACT                            _ACTURETRACT                            ACTURETRACTED                            _ACTURETRACTED                            LIFT                            _LIFT                            HOMELIFT                         	   _HOMELIFT                            MOVETOLOADING                            _MOVETOLOADING                            DRIVEINLOADINGPOS                            _DRIVEINLOADINGPOS                            INITMACHINEDONE                            _INITMACHINEDONE                         	   IO_UPDATE                         
   _IO_UPDATE                               bReset                       Reseting the SFC   bExecute                       Executes PRG      bDone                       Program operations done            �/N^  @    ����           PRG_PROCESSAUTO           tonDelay                    TON    p               SFCReset             p            
   tDelayTime    �     p           Delay time for timer   INIT                           _INIT                        	   WAITRESET                         
   _WAITRESET                            PROCESS                            _PROCESS                            STEP1                            _STEP1                            STEP2                            _STEP2                            STEP3                            _STEP3                            STEP4                            _STEP4                            RESETING                         	   _RESETING                               bReset            p           Reset program   bEnable            p           enable and run                �/N^  @    ����           PRG_PROCESSMANUAL           iStep            |           Step variable	   rtTrigger                 R_TRIG    |           Trigger from button      bReset            |           Reset program   bNext            |        	   Next step                �/N^  @    ����           PRG_SORTING     
   	   bInitDone                        Initialisation done   SFCReset                        For reseting the SFC   INIT                           _INIT                           WAITFORRESET                            _WAITFORRESET                            RESETSFC                         	   _RESETSFC                            TODO_IMPLEMENTYOURSEQUENCE                            _TODO_IMPLEMENTYOURSEQUENCE                               bReset                       Reseting the SFC   bExecute                       Executes PRG      bDone                       Program operations done            �/N^  @    ����           SIMU_F_CLEARBALL               idxFrom           M        
   From Index      Simu_F_ClearBall                                      �/N^  @    ����           SIMU_F_MOVEBALL               idxFrom           L        
   From Index   idxTo           L           To Index      Simu_F_MoveBall                                      �/N^  @    ����           SIMU_FB_CYLINDERMODEL           tonMoveTimer                    TON    D           Timer for move   SFCReset             D        
   Resets SFC   INIT                           _INIT                           WAITINGRESET                            _WAITINGRESET                            RESETREQUESTED                            _RESETREQUESTED                         	   IO_UPDATE                         
   _IO_UPDATE                         	   STARTLOOP                         
   _STARTLOOP                            ST_GOING_OUT                            _ST_GOING_OUT                            _timeST_GOING_OUT                           _starttimeST_GOING_OUT                           ST_OUT                            _ST_OUT                            ST_GOING_IN                            _ST_GOING_IN                            _timeST_GOING_IN                           _starttimeST_GOING_IN                           ST_IN                            _ST_IN                               bReset            D        	   Resets FB
   bCmdCylOut            D        #   T = Extends cylinder, F=cylinder In	   tMoveTime           D        $   time it takes to move to other state      bBusy            D 	          FB is busy and processing   bDone            D 
       	   Move done   bErr            D           Error active   iErrCode           D        
   Error code	   bStateOut            D           Status: Cylinder is OUT   bStateIn            D           Status: Cylinder is IN            �/N^  @    ����           SIMU_FB_DRIVEMODEL     <      iStep           C           Step size Per PLC cycle   wTarget            C           Target destination   bDrvReq_Enable             C            Drive is requested to be enabled   bDrvReq_Start             C           Drive is requested to started   bDrvReq_Homing             C           Drive is requested to homed   bDrvSt_Homed             C           Drive is homed   bDrvSt_InMotion             C           Drive is in motion    bDrvSt_InPos             C           Drive is in Position 
   iTargetPos            C           Current target Position   bInTargetPos             C           Internal in target   bInTargetPosWindow             C         "   Internal in target position window   tonMoveTimer                    TON    C #          Timer for move   bResetLocal             C %          Local Reset request   SFCReset             C &       
   Resets SFC   INIT                           _INIT                           WAITINGRESET                            _WAITINGRESET                            RESETREQUESTED                            _RESETREQUESTED                            IO_UPDATE_LD                            _IO_UPDATE_LD                            IO_UPDATE_ST                            _IO_UPDATE_ST                            POSITIONUPDATE                            _POSITIONUPDATE                            ST_OFF                            _ST_OFF                            ST_RDYTOPOWERON                            _ST_RDYTOPOWERON                            ST_POWERINGON                            _ST_POWERINGON                            _timeST_POWERINGON                           _starttimeST_POWERINGON                           ST_DRIVERDY                            _ST_DRIVERDY                            WAITINGPOWERINTERRUPT                            _WAITINGPOWERINTERRUPT                            ST_DRIVEENABLED                            _ST_DRIVEENABLED                            ST_STARTHOMING                            _ST_STARTHOMING                            ST_HOMING_MOVEUP                            _ST_HOMING_MOVEUP                            _timeST_HOMING_MOVEUP                           _starttimeST_HOMING_MOVEUP                           ST_HOMING_MOVEDOWN                            _ST_HOMING_MOVEDOWN                            _timeST_HOMING_MOVEDOWN                           _starttimeST_HOMING_MOVEDOWN                           ST_HOMED                         	   _ST_HOMED                            ST_STARTMOVE                            _ST_STARTMOVE                            _timeST_STARTMOVE                           _starttimeST_STARTMOVE                        	   ST_MOVING                         
   _ST_MOVING                            ST_MOVEDONE                            _ST_MOVEDONE                               bReset            C        	   Resets FB	   bPowersOn            C        #   Powers are ON. Emergency is cleared   wDriveControl           C           Control word to virtual  Drive      wDriveStatus           C 	          Status word from virtual Drive   iCurrentPos           C 
       !   Current position of virtual Drive   bBusy            C           FB is busy and processing   bDone            C        	   Move done   bErr            C           Error active   iErrCode           C        
   Error code            �/N^  @    ����           SIMU_PRG_SIMULATION           tMoveTime_Cyl    �      B        !   Time for cylinder to change state   bHasBallsInMagazine            B           Is there balls in magazine?
   bResetSimu             B           Reset simulation   iBallRandomizer            B 	          Randomizes balls   iVirtualLiftPos            B           Position of virtual lift   tonRollToLift                    TON    B               tonDroppedBall                    TON    B               tonGarbageBall                    TON    B               tonBallToPipe                    TON    B            
   fbVirtLift        E                                                                           Simu_FB_DriveModel    B               fbVirtCyl_SorterLift        !                                       Simu_FB_CylinderModel    B               fbVirtCyl_SorterGate        !                                       Simu_FB_CylinderModel    B               fbVirtCyl_PipeGate_Up        !                                       Simu_FB_CylinderModel    B               fbVirtCyl_PipeGate_Mid        !                                       Simu_FB_CylinderModel    B               fbVirtCyl_PipeGate_Low        !                                       Simu_FB_CylinderModel    B               i            B                                �/N^  @    ����           
 )   H   B      �         ( h]      K   v]     K   �]     K   �]     K   �]                 �]         +           ,   ,                                                        K        @   �/N^wu     , CONFI3*/
        !      @     CoDeSys 1-2.2   ����  ��������                                �      
   �         �         �          �                    "          $                                                   '          (          �          �          �          �          �         �          �          �          �         �          �          �          �          �         �      �   �       P  �          �         �       �  �                    ~          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �       @  �       @  �       @  �       @  �       @  �       @  �         �         �          �       �  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         �          �         �      
   �         �         �         �         �         �          �          �         �      �����          �          �      (                                                                        "         !          #          $         �          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          �          �          l          o          p          q          r          s         u          �          v         �          �      ����|         ~         �         x          z      (   �          �         %         �          �          �         @         �          �          �         &          �          	                   �          �          �         �          �         �          �          �          �          �          �          �          �          �          �          �          �                            I         J         K          	          L         M          �                             �          P         Q          S          )          	          	          �           	          +	       @  ,	       @  -	      ����Z	      ����[	      ��������        ������������  ��������                                                   �  	   	   Name                 ����
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
   Value                Variable       Min                Variable       Max                Variable                         ����  ��������               �   _Dummy@    @   @@    @   @             ��@             ��@@   @     �v@@   ; @+   ����  ��������                                  �v@      4@   �             �v@      D@   �                       �       @                           �f@      4@     �f@                �v@     �f@     @u@     �f@        ���           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    �/N^	1N^                      VAR_GLOBAL
END_VAR
                                                                                 "   , 
 x ��             BallGame
        MAIN();
PRG_HMI();PRG_Drive_Link();Simu_PRG_Simulation();                   �/N^                 $����, � � 6               ..               Standard -$�=	-$�=        Q/�!                          	�/N^                        VAR_CONFIG
END_VAR
                                                                                   '               , 8# �1           Global_Variables �/N^	�/N^      K��  K        �	  VAR_GLOBAL
(* -------------INPUTS and OUTPUTS -------------------*)
(* See Global_Variables_TwinCAT and Global_Variables_CodeSys for
environment specific physical IOs *)

(*-----------------------TIMERS----------------------------*)
	TONMove_Ball_Delay	: TON;
	TONDrive_Delay		: TON;

(*-----------------------COUNTERS----------------------------*)
	CountBallsSortedMetal			: INT:=0;	(*Balls sorted: Metal*)
	CountBallsSortedWooden		: INT:=0;	(*Balls sorted: Wood*)
	CountBallsSortedYellow		: INT:=0;	(*Balls sorted: Wood, Yellow*)
	CountBallsSortedRed			: INT:=0;	(*Balls sorted: Wood, Red*)
	CountBallsSortedBlue			: INT:=0;	(*Balls sorted: Wood, Blue*)
	CountBallsSortedGarbage		: INT:=0;	(*Balls sorted: Unknown*)
	arrCountBallsOnTubes	: ARRAY [1..4] OF INT;	(*Balls on tubes: 1=lower, 2=middle, 3=upper, 4=garbage*)

(*-----------------------FUNCTION BLOCKS----------------*)
	fbDrive				: FB_DriveMovement2;		(*FB for executing the motion*)
	fbStateModel			: FB_StateModel_ST;		(*FB for executing state model*)

(* -------------HMI INPUTS (from HMI to PLC) -------------------*)
	bHMI_BtnStart			: BOOL;		(*Start button on HMI*)
	HMI_uModeReq		: UINT :=1;		(*Mode request. DEFAULT:PRODUCTION1*)

(* -------------HMI OUTPUTS (from PLC to HMI) -------------------*)
	PLC_uModeCurrent	: UINT;		(*Current Mode*)
	PLC_uStateCurrent	: UINT;		(*Current State*)
	O_Light_BeaconRed	: BOOL;		(*Light beacon: Red*)

(*-----------------------OTHER GLOBAL VARS ----------------*)

(*----------------Virtual machine related vars -----------*)
	arrBalls : ARRAY [0..25] OF Simu_ST_Ball; 	(*array of balls in system*)


END_VAR

VAR_GLOBAL CONSTANT
(*-----------------------Lift Position Constants----------------------------*)
	GPOS_LOADING		: WORD := 16#0A;	(*Drive to loading level*)
	GPOS_PIPE_LOW	: WORD := 16#0B;	(*Drive to lower pipe*)
	GPOS_PIPE_MID		: WORD := 16#0C;	(*Drive to middle pipe*)
	GPOS_PIPE_UP		: WORD := 16#0D;	(*Drive to upper pipe*)
	GPOS_GARBAGE		: WORD := 16#0E;	(*Drive to garbage pipe*)
	GPOS_COLOR_SEN	: WORD := 16#0F;	(*Drive to colour sensor*)

(*-----------------------Ball Type Constants----------------------------*)
	METAL				: BOOL := FALSE;
	WOODEN		: BOOL := TRUE;

(*-----------------------TIME Constants----------------------------*)
	T_LOADING_BALL	: TIME := T#1.5s;	(*Delay for ball to roll from Slot2 to Lifter*)
	T_DRIVE_DELAY		: TIME := T#2s;	(*Delay for drive to start movement*)
END_VAR                                                                                               '              , �" `�           Global_Variables_CodeSys �/N^	1N^     B_lierem        �  VAR_GLOBAL
	bDriveEnabled 	: BOOL;

	I_Btn_Reset		: BOOL;	(*Button: Reset*)
	I_Btn_Start		: BOOL;	(*Button: Start*)
	I_Btn_Stop		: BOOL;	(*Button: Stop*)
	I_Btn_EStop		: BOOL;	(*Button: Reset*)

(* -------------INPUTS-------------------*)
	ISensorOpt 			:BOOL;	(*Optical sensor - is ball present*)
	ISensorInd 			:BOOL;	(*Inductive sensor - is metal ball present*)
	IEmergencyClear 		:BOOL;	(*Emergency stop is cleared*)
	IRun 					:BOOL;	(*Run switch*)
	ILimitUp 				:BOOL;	(*Lift's limit switch is activated - Up*)
	ILimitLow 		 		:BOOL;	(*Lift's limit switch is activated - Low*)
	IGateClosedUp		:BOOL;	(*Pipe gate closed - UP*)
	IGateClosedMid		:BOOL;	(*Pipe gate closed - Mid*)
	IGateClosedLow		:BOOL;	(*Pipe gate closed - Low*)
	ISorterGateClosed		:BOOL;	(*Sorter gate closed*)
	ISorterLiftUp			:BOOL;	(*Sorter lift at up position*)
	ISorterLiftDown		:BOOL;	(*Sorter lift at down position*)
	IPressureApplied		:BOOL := TRUE;	(*Pressure is available for the system*)
	TEMP1				:BOOL;
	ISenColourYellow		:BOOL;	(*Colour sensor In1 - Yellow*)
	ISenColourBlue		:BOOL;	(*Colour sensor In2 - Blue*)
	ISenColourGreen		:BOOL;	(*Colour sensor In3 - Green*)
	ISenColourRed		:BOOL;	(*Colour sensor In4 - Red*)
	IDriveStatus 			:WORD;	(*From lift drive status information*)

(* -------------OUTPUTS-------------------*)
	OGateUp			:BOOL;	(*Valve: Open pipe gate - Up*)
	OGateMid			:BOOL;	(*Valve: Open pipe gate - Mid*)
	OGateLow			:BOOL;	(*Valve: Open pipe gate - Low*)
	OSorterGate			:BOOL;	(*Valve: Open sorter gate*)
	OSorterLift			:BOOL;	(*Valve: Sorter lift up*)
	OEjector				:BOOL;	(*Ejector push ball out from lift*)
	ODriveControl 		:WORD;	(*To lift drive control information*)

END_VAR
                                                                                               '              , �� �K           Global_Variables_TwinCAT�/N^	�/N^       ��            "  VAR_GLOBAL
(* -------------INPUTS-------------------*)
	ISensorOpt 		AT %I*	:BOOL;	(*Optical sensor - is ball present*)
	ISensorInd 		AT %I*	:BOOL;	(*Inductive sensor - is metal ball present*)
	IEmergencyClear 	AT %I*	:BOOL;	(*Emergency stop is cleared*)
	IRun 			AT %I*	:BOOL;	(*Run switch*)
	ILimitUp 			AT %I*	:BOOL;	(*Lift's limit switch is activated - Up*)
	ILimitLow 		AT %I* 	:BOOL;	(*Lift's limit switch is activated - Low*)
	IGateClosedMid	AT %I*	:BOOL;	(*Pipe gate closed - Mid*)
	IGateClosedLow	AT %I*	:BOOL;	(*Pipe gate closed - Low*)
	ISorterGateClosed	AT %I*	:BOOL;	(*Sorter gate closed*)
	ISorterLiftUp		AT %I*	:BOOL;	(*Sorter lift at up position*)
	ISorterLiftDown	AT %I*	:BOOL;	(*Sorter lift at down position*)
	IPressureApplied	AT %I*	:BOOL;	(*Pressure is available for the system*)
	TEMP1			AT %I*	:BOOL;
	ISenColourYellow	AT %I*	:BOOL;	(*Colour sensor In1 - Yellow*)
	ISenColourBlue	AT %I*	:BOOL;	(*Colour sensor In2 - Blue*)
	ISenColourGreen	AT %I*	:BOOL;	(*Colour sensor In3 - Green*)
	ISenColourRed	AT %I*	:BOOL;	(*Colour sensor In4 - Red*)
	IDriveStatus 		AT %I*	:WORD;	(*From lift drive status information*)

(* -------------OUTPUTS-------------------*)
	OGateMid		AT %Q*	:BOOL;	(*Valve: Open pipe gate - Mid*)
	OGateLow		AT %Q*	:BOOL;	(*Valve: Open pipe gate - Low*)
	OSorterGate		AT %Q*	:BOOL;	(*Valve: Open sorter gate*)
	OSorterLift		AT %Q*	:BOOL;	(*Valve: Sorter lift up*)
	OEjector			AT %Q*	:BOOL;	(*Ejector push ball out from lift*)
	ODriveControl 	AT %Q*	:WORD;	(*To lift drive control information*)
END_VAR
                                                                                               '              , ��s ��           Variable_Configuration �/N^	�/N^                        VAR_CONFIG
END_VAR
                                                                                                 Q   |0|0 @G    @%   MS Sans Serif @        @           �����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '          !   , �� �        
   E_ModeCtrl �/N^	�/N^      t L tear        u   TYPE E_ModeCtrl :
(
	eMode_undefined := 0,
	eMode_Automatic :=1,
	eMode_XXX :=2,
	eMode_Manual :=3
);
END_TYPE             "   , � � �s        
   E_ModeProc �/N^	�/N^                      �   TYPE E_ModeProc :
(*Procedural control modes. Can be changed in any state*)
(
	eModeProc_undefined := 0,
	eModeProc_Automatic :=1,
	eModeProc_SemiAutomatic :=2,
	eModeProc_Manual :=3
);
END_TYPE             #   , HR 7�           E_State �/N^	�/N^                      2  TYPE E_State :
(
	eSt_Aborting :=0,
	eSt_Aborted,
	eSt_Clearing,
	eSt_Stopped,
	eSt_Stopping,
	eSt_Resetting,
	eSt_Idle,
	eSt_Starting,
	eSt_Execute,
	eSt_Suspending,
	eSt_Suspended,
	eSt_Unsuspending,
	eSt_Holding,
	eSt_Held,
	eSt_UnHolding,
	eSt_Completing,
	eSt_Completed
);
END_TYPE             J   , <!            Simu_ST_Ball �/N^	�/N^      ��������        #  TYPE Simu_ST_Ball :
STRUCT
	bExists	: BOOL;		(*The ball exists in this position*)
	bMetal	: BOOL;		(*Ball is metal? T= Metal, F=Wood*)
	uColour	: USINT := 0;	(*Colour of ball: 0=N/A, 1=Yellow, 2=Blue, 3=Red, 4=Green*)
	dwColourCode : DWORD;	(*Colour code of ball*)
END_STRUCT
END_TYPE                 , k� F�           EXAMPLES�/N^	�/N^      esnaon ,        �   PROGRAM EXAMPLES
VAR
	fbDrive			: DriveMovement2;		(*FB for executing the motion*)
	tonTimer			: TON;			(*Standard TON timer. Use this*)
	fbDelay			: FB_Wait;		(*Different simplified timer.
END_VAR       Init           FALSE         DrivingLift         FALSE         DrivingLiftIntoATarget      B_lierem           Action DrivingLiftIntoATarget Pj�V�   (*This executes and drives the lift to desired level (=wTarget)
wTarget is selected from given constants. See:Global Constants*)
fbDrive(
	bEnable:= TRUE,
	bStart:= TRUE,
	wTarget:= GPOS_LOADING);          ��            $   Action DrivingLiftIntoATarget - Exit Pj�V1   (*Stops the motion*)
fbDrive(
	bStart:= FALSE);   fbDrive.bMoveDone      FALSE         StandardTimer         FALSE         TONTimer      B_lierem           Action TONTimer Pj�V+   tonTimer(IN:=TRUE , PT:=T#1s, Q=> , ET=> );      B_lierem           Action TONTimer - Entry Pj�V   tonTimer(IN:=FALSE);        ��               Action TONTimer - Exit Pj�V   tonTimer(IN:=FALSE);
   tonTimer.Q      FALSE         Timer         FALSE         DelayWithFB_Wait      B_lierem           Action DelayWithFB_Wait Pj�V0   (*Timer is counting*)
fbDelay(IN_TIME:=T#1s);
    
   fbDelay.OK      FALSE         SetingAndResetingOutput         FALSE         SettingOutputForAMoment      B_lierem           Action SettingOutputForAMoment Pj�V\   (*Timer is counting*)
fbDelay(IN_TIME:=T#500ms);

(*Setting Output*)
OEjector := TRUE;
          ��            %   Action SettingOutputForAMoment - Exit Pj�V'   (*Clearing Output*)
OEjector := FALSE;
   fbDelay.OK     Initd                  	   , �  ��           FB_DriveMovement2 �/N^	�/N^      et: OL F        �  FUNCTION_BLOCK FB_DriveMovement2
(* This function block is making all movements for the drive
	bEnable = must be TRUE
	Target = int value of 0 - 63
	bStart = with rising edge starts the movement

	bMoveDone gets true when the movement is finalised.
Author: 	Niko Siltala, niko.siltala@tut.fi
Date: 	2014-01-01*)

VAR_INPUT
	bEnable			: BOOL:=FALSE;	(*Enables the fuction block*)
	bStart			: BOOL:=FALSE;	(*Starts the motion to target by rising edge*)
	wTarget			: WORD:=0;		(*Target destination*)
	wDriveStatus		: WORD;			(*Status word from Indramat Drive*)
END_VAR
VAR_OUTPUT
	bMoveDone		:BOOL:=FALSE;	(*The commanded move has been completed. Drive is at required destination*)
	bHomingDone	:BOOL:=FALSE;	(*Drive has been homed*)
	wDestination		:WORD;			(*Current destination*)
	wDriveControl		:WORD;			(*Control word to Indramat Drive*)
END_VAR
VAR_IN_OUT
END_VAR
VAR
	TONTimer1 	: TON;
	TONTimer2 	: TON;
END_VAR�  (*
This function block is making all movements for the drive
	bEnable = must be TRUE
	Target = int value of 0 - 63
	bStart = with rising edge starts the movement

	bMoveDone gets true when the movement is finalised
*)
IF bEnable THEN
	(*Drive is Enabled*)
	wDriveControl:=wDriveControl OR 16#0001;
	IF (wDriveStatus AND 16#0080)>0 AND (wDriveStatus AND 16#0040)>0 THEN
		IF bStart=TRUE THEN
			(*bStart is true*)
			IF bHomingDone=FALSE THEN
				(*Homing procedure*)
				IF TONTimer1.Q=FALSE THEN
					wDriveControl:=16#0005;
					TONTimer1(IN:=TRUE, PT:=T#100ms);(*100ms*)
				ELSE
					IF TONTimer2.Q=FALSE THEN
						(*Start drive*)
						wDriveControl:=16#0007;
						TONTimer2(IN:=TRUE, PT:=T#500ms); (*500ms*)
					ELSE
						(*Timer2 have expired*)
						IF (wDriveStatus AND 16#0004)>0 THEN
							TONTimer1(IN:=FALSE);
							TONTimer2(IN:=FALSE);
							wDriveControl:=16#0001;
							bHomingDone:=TRUE;
						END_IF;
					END_IF;
				END_IF;
			ELSE
				(*Normal movement*)
				IF TONTimer1.Q=FALSE THEN
					(*Set target and Enabled*)
					wDriveControl:=SHL(wTarget,8) OR 16#0001;
					wDestination:=wTarget;
					TONTimer1(IN:=TRUE, PT:=T#10ms);(*10ms*)
				ELSE
					IF TONTimer2.Q=FALSE THEN
						(*Start drive*)
						wDriveControl:=wDriveControl OR 16#0002;
						TONTimer2(IN:=TRUE, PT:=T#500ms); (*500ms*)
					ELSE
						(*Timer2 have expired*)
						IF (wDriveStatus AND 16#0010)>0 THEN
							(*End the movement when user forgets to provide lowering edge*)
							(*bStart:=FALSE;*)
							(*Requested movement is done*)
							bMoveDone:=TRUE;
						END_IF;
					END_IF;
				END_IF; (*Normal movement*)
			END_IF;(*bHomingDone=FALSE*)
		ELSE
			(*bStart is false*)
			bMoveDone:=FALSE;
			TONTimer1(IN:=FALSE);
			TONTimer2(IN:=FALSE);
		END_IF;
	END_IF;
ELSE (*bEnable*)
	(*Drive is NOT Enabled*)
	wDriveControl:=16#0000;
	bMoveDone:=FALSE;
	bHomingDone:=FALSE;
	TONTimer1(IN:=FALSE);
	TONTimer2(IN:=FALSE);
END_IF;               `   ,     4�           FB_SimpleManager �/N^	�/N^      ��������        �  FUNCTION_BLOCK FB_SimpleManager
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
END_VARN  (*Defaults*)

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
	Q1=> oRun );               
   , � { ��           FB_StateModel_ST �/N^	�/N^      
*N ROG        �  FUNCTION_BLOCK FB_StateModel_ST
(*PackML State model implementation. Slightly modified implementation.
Author: 	Niko Siltala, niko.siltala@tut.fi
Date: 	2016-01-29
*)
VAR_INPUT
	bResetFB	: BOOL;		(*Resets whole FB*)
	eModeReq	: E_ModeCtrl;	(*Requested mode*)
	wIgnoreState	: DWORD;	(*Ignoring states. See bit from E_State definition. Aborting = bit0*)
	bSC			: BOOL;		(*Step Completed acknoledgement*)
	bAbort		: BOOL;		(*Abortting signal = EmergencyStop*)
	bClear		: BOOL;		(*Clear signal*)
	bReset		: BOOL;		(*Reseting signal*)
	bStart		: BOOL;		(*Start signal*)
	bHold		: BOOL;		(*Hold signal*)
	bUn_Hold	: BOOL;		(*Un-Hold signal*)
	bSuspend	: BOOL;		(*Suspend signal*)
	bUn_Suspend	: BOOL;		(*Un-Suspend signal*)
	bStop		: BOOL;		(*Stop signal*)
	bComplete	: BOOL;		(*Complete signal*)
	bAck_Completed	: BOOL;	(*Acknoledgement for Complete signal*)
END_VAR
VAR_OUTPUT
	eMode	: E_ModeCtrl;	(*Current mode*)
	eState	: E_State;	(*Current state*)
END_VAR
VAR
	RTrig_bSC	: R_TRIG; 	(*Rising trigger for State Completed*)
	RTrig_StateChange	: R_TRIG; 	(*Rising trigger for State signal*)
	bResetLocal		: BOOL:=FALSE;	(*Paikallinen Reset*)
	bInitDone	: BOOL;		(*Initialisation*)
END_VAR�	  IF bResetFB THEN	(*Reseting FB*)
	bInitDone := FALSE;
END_IF;

(*Initialisation*)
IF NOT bInitDone THEN
	eState:= eSt_Aborting;
	bInitDone:=TRUE;
END_IF;

(*Rising triggers monitor*)
RTrig_bSC(CLK:=bSC , Q=> );

(*Abort signal interrupt*)
IF bAbort AND (eState > eSt_Clearing) THEN
	eState:=eSt_Aborting;
END_IF;

(*Stop signal interrupt*)
IF bStop AND (eState > eSt_Stopping) THEN
	eState:=eSt_Stopping;
END_IF;


(*Main case structure*)
CASE eState OF
eSt_Aborting:
	IF bSC THEN
		eState:=eSt_Aborted;
	END_IF;

eSt_Aborted:
	eMode:=eModeReq;	(*Change Mode*)
	IF bClear AND NOT bAbort THEN
		eState:=eSt_Clearing;
	END_IF;

eSt_Clearing:
	IF bAbort THEN
		eState:=eSt_Aborting;
	ELSIF bSC THEN
		eState:=eSt_Stopped;
		RTrig_StateChange(CLK:=bReset , Q=> );
	END_IF;

eSt_Stopping:
	IF bSC THEN
		eState:=eSt_Stopped;
		RTrig_StateChange(CLK:=bReset , Q=> );
	END_IF;

eSt_Stopped:
	eMode:=eModeReq;	(*Change Mode*)
	RTrig_StateChange(CLK:=bReset , Q=> );
(*	ELSIF NOT bStop AND (RTrig_StateChange.Q OR (wIgnoreState.5 AND bStart) ) THEN*)
	IF NOT bStop THEN	(*Stop signal is not active.*)
		IF wIgnoreState.5 AND bStart THEN	(*Reset state is ignored and going directly to start *)
			eState:=eSt_Idle;
		ELSIF RTrig_StateChange.Q THEN 	(*Rising edge for reset*)
			eState:=eSt_Resetting;
		END_IF;
	END_IF;

eSt_Resetting:
	IF bSC OR wIgnoreState.5 THEN
		eState:=eSt_Idle;
	END_IF;

eSt_Idle:
	eMode:=eModeReq;	(*Change Mode*)
	IF bStart OR wIgnoreState.6 THEN
		eState:=eSt_Starting;
	END_IF;

eSt_Starting:
	IF bSC OR wIgnoreState.7 THEN
		eState:=eSt_Execute;
	END_IF;

eSt_Execute:
	IF bComplete THEN
		eState:=eSt_Completing;
	ELSIF bHold THEN
		eState:=eSt_Holding;
	ELSIF bSuspend THEN
		eState:=eSt_Suspending;
	END_IF;

eSt_Holding:
	IF bSC THEN
		eState:=eSt_Held;
	END_IF;

eSt_Held:
	IF bUn_Hold AND NOT bHold THEN
		eState:=eSt_UnHolding;
	END_IF;

eSt_UnHolding:
	IF bSC THEN
		eState:=eSt_Execute;
	END_IF;

eSt_Suspending:
	IF bSC THEN
		eState:=eSt_Suspended;
	END_IF;

eSt_Suspended:
	IF bUn_Suspend AND NOT bSuspend THEN
		eState:=eSt_Unsuspending;
	END_IF;

eSt_Unsuspending:
	IF bSC THEN
		eState:=eSt_Execute;
	END_IF;

eSt_Completing:
	IF RTrig_bSC.Q THEN
		eState:=eSt_Completed;
	END_IF;

eSt_Completed:
	IF bAck_Completed THEN
		eState:=eSt_Resetting;
	END_IF;

ELSE
	(*Default error handler. Undefined state set*)
	eState:=eSt_Aborting;
END_CASE;                  , H D ��           FB_Wait �/N^	�/N^      er= LS
        {  FUNCTION_BLOCK FB_Wait
(*Waits the given time and sets output after timer has run till end. When called again timer restarts.
Author: 	Niko Siltala, niko.siltala@tut.fi
Date: 	2014-01-01*)
VAR_INPUT
	IN_TIME	:TIME;		(*Time to wait*)
END_VAR
VAR_OUTPUT
	OK 		: BOOL:=FALSE;	(*Gets true after wait time has expired*)
END_VAR
VAR
	Timer	: TP;
	Falling	: F_TRIG;
END_VAR  IF Timer.Q=TRUE THEN
	(*Call timer block when pulse timer is counting*)
	Timer;
ELSE
	(*Timer has espired. Start it again*)
	Timer(IN:=FALSE);
	Timer(PT:=IN_TIME);
	Timer(IN:=TRUE);
END_IF;
(*Set output. True if timer has expired*)
OK:=NOT Timer.Q;

                  , �v 7�           MAIN GFN^	�/N^                      �   PROGRAM MAIN
(*Main program for application. Uses PackML state model to control the execution of the application*)
VAR
	tonStarting				: TON;
	rsEmergencyClear	: RS;	(*RS - flip-flop for Emergency clear info*)
END_VARI  (* ****** Section 1: Initialisations and default values. Initial conditions for variables on every PLC cycle*)
(*Default values*)
fbStateModel.bSC := FALSE;
(*System resets*)

(* ****** Section 2: Actions in your program without considering the Control Mode. I.e. actions are performed same way indenpendent on
current Control Mode selection.*)
(*Mode independent state actions. Change / Add / Remove states according your need*)
CASE fbStateModel.eState OF
eSt_Aborting:
	(* One can make specific actions in case of specific Mode-State combination.
	   One can also consider to call a specific program when in specific Mode-State combination*)
	actAborting;
	fbStateModel.bSC := TRUE;		(*MODIFY*)
eSt_Clearing:
	fbStateModel.bSC := TRUE;		(*MODIFY*)
eSt_Resetting:
	fbStateModel.bSC := TRUE;
eSt_Holding:
	fbStateModel.bSC := TRUE;		(*MODIFY*)
eSt_UnHolding:
	fbStateModel.bSC := TRUE;		(*MODIFY*)
eSt_Suspending:
	fbStateModel.bSC := TRUE;		(*MODIFY*)
eSt_Unsuspending:
	fbStateModel.bSC := TRUE;		(*MODIFY*)
END_CASE;

(* ****** Section 3: Actions in your program which are Control Mode specific. Two nested case structures where outer one selects the
control mode and inner the PackML state. In order to avoid conflicts, it would be better to process each PackML state either in Section 2 
or Section 3, but not in both. *)
(*Execution mode related state actions. Change / Add / Remove mode and states according your need*)
CASE fbStateModel.eMode OF
(*MODE: MANUAL*)
eMode_Manual:
	(* ****** Section 3.1: PackML state based processing actions when Control Mode is Manual.*)
	CASE fbStateModel.eState OF
	eSt_Starting:
		IF IPressureApplied THEN
			fbStateModel.bSC := TRUE;			(*MODIFY*)
		END_IF
	eSt_Stopping:
		fbStateModel.bSC := TRUE;			(*MODIFY*)
	END_CASE;

(*MODE: AUTOMATIC*)
eMode_Automatic:
	(* ****** Section 3.2: PackML state based processing actions when Control Mode is Automatic.*)
	CASE fbStateModel.eState OF
	eSt_Idle:
		tonStarting(IN:=FALSE , PT:= , Q=> , ET=> );	(*MODIFY*)
	eSt_Starting:
		(* tonStarting(IN:=TRUE , PT:=T#2s , Q=> , ET=> );
		fbStateModel.bSC := tonStarting.Q; *)
		IF IPressureApplied THEN
			bDriveEnabled := TRUE;
			PRG_Initialisation(bReset:= , bExecute:= TRUE , bDone=> );
		END_IF

		IF PRG_Initialisation.bDone THEN
			PRG_Initialisation(bReset:= , bExecute:= FALSE , bDone=> );
			fbStateModel.bSC := TRUE;
		END_IF
	eSt_Completing:
		fbStateModel.bSC := TRUE;					(*MODIFY*)
	eSt_Completed:
		;
	END_CASE;

(* ****** Section 4: Grouping PackML states for calling Programs or FB instances.
This is to avoid repetition inside above case structure in Section 3. With IF clause setting lower (and upper) state limits we can filter out the states when we want to call 
specific programs. The order of states is defined in Tab:Data types > E_PackMLState. eSt_Aborting is lowest and eSt_Completed is highest.
Here we filter calling programs, only when we are in higher states than Stopped. 
This can be pulled out as completely separated section, like in PackML_StateModel_v2-2.pro project. There is inside IF again CASE which process each Control Mode separately.*)
(*Execution part. Making calls for program if we are on states above Stopped*)
	(*If we are between specific states, make some action or program call*)
	IF  (fbStateModel.eState>eSt_Starting) AND (fbStateModel.eState<=eSt_Completing) THEN
		(*Make here the actions / calls
			Good place to start with is PRG_Sorting (PRG)*)
		; 		(*MODIFY*)
	END_IF;

(*MODE: UNKNOWN*)
ELSE	(*Error*)
	; (*TODO*)
END_CASE;

(* ****** Section 5: Calling the fbStateModel instance.
Here the instance of state model is called and all triggering inputs are set, but bSC (State Completed), which you control in your programs. 
This is indication that your program has  finished certain stage.
- Pay attention where the instance fbStateModel is defined. Do you do it in global variables or e.g. here in PRG_MAIN? Important is to use the 
same instance in all places, so that machine state is unique and shared. Remember, if you have multiple definitions, the PRG_MAIN "hides" 
the global one, and might lead to problems elswhere, when you think you are using the same instance, but actually are not. 
- In case you are using the PackML visualisation (VC_PackMLStates), make sure you connect its placeholder to the very same PackML FB instance.
- The Mask for wIgnoreState is created as following. I use binary base for the value(2#). The lowest bit in the mask corresponds the eSt_Aborting
 in E_PackMLState. The next is eSt_Aborted, and so on. Specific state is ignored and jumped over when it is masked out i.e. ignored by having 1 
in that position. Note that implementation allows this only for selected states. See FB_PackMLStateModel_ST code for further details.*)
(*Calling & Updating the state model*)
(*TODO: Evaluate and change all input conditions according your application needs*)
fbStateModel(
	bResetFB:= ,
	eModeReq:= HMI_uModeReq,
	wIgnoreState := 2#000000,		(*TODO: Which states should be ignodered. Default: 2#000000 or 2#100000. The latter is ignoring Resetting state*)
	bSC:= ,			(*Must not be assigned ANY variable, because fb input is directly operated!!!*)
	bAbort:= NOT (IEmergencyClear  OR  IPressureApplied),
	bClear:= IEmergencyClear,
	bReset:= I_Btn_Start,
	bStart:= I_Btn_Start,
	bHold:= ,
	bUn_Hold:= ,
	bSuspend:= ,
	bUn_Suspend:= ,
	bStop:= I_Btn_Stop ,
	bComplete:= ,
	bAck_Completed:= ,
	eMode=> PLC_uModeCurrent,
	eState=> PLC_uStateCurrent);

(* ****** Section 6: Here we update all outputs according the current state of our PackML model. This allows us to process the in single location.
The control of outputs is bind to state, not e.g. to inputs. The inputs are the one driving the PackML model forward. Again CASE structure can be used.*)
(*Call for HMI and UI update*)
PRG_Drive_Link();
HMI_and_UI_Update; �   , � ��           actAborting t0N^F   bDriveEnabled := FALSE;
PRG_Sorting(bReset:=TRUE , bExecute:= FALSE);   , C:��           HMI_and_UI_Update �/N^m  (*Simulate emergency stop circuitry*)
rsEmergencyClear(
	SET:= I_Btn_Reset,
	RESET1:= I_Btn_EStop ,
	Q1=> IEmergencyClear);

(*HMI Update*)
PRG_Blinking (bSign4Hz=> , bSign2Hz=> , bSign1Hz=> , bSign0_5Hz=> );
(*Init values*)
O_Light_BeaconRed := FALSE;

(*OLight_Start :=  (fbStateModel.eState >= eSt_Resetting) AND (fbStateModel.eState < eSt_Completed);*)
CASE fbStateModel.eState OF
eSt_Aborting, eSt_Aborted:
	O_Light_BeaconRed := PRG_Blinking.bSign1Hz;
eSt_Clearing:
	O_Light_BeaconRed := PRG_Blinking.bSign0_5Hz;
eSt_Stopped, eSt_Completed:
	O_Light_BeaconRed := TRUE;
eSt_Starting:
	;
END_CASE;                , �  ��           PRG_Blinking �/N^	�/N^      q0~ RO        �  PROGRAM PRG_Blinking
(*Supporting caluculations: Blinking signals
Author: 	Niko Siltala, niko.siltala@tut.fi
Date: 	2014-01-01*)

VAR_OUTPUT
	bSign4Hz	:BOOL;				(*4 Hz (240krt/min) taajudella vaihteleva signaali*)
	bSign2Hz	:BOOL;				(*2 Hz (120krt/min) taajudella vaihteleva signaali*)
	bSign1Hz	:BOOL;				(*1 Hz (60krt/min) taajudella vaihteleva signaali*)
	bSign0_5Hz	:BOOL;				(*0,5 Hz (30krt/min) taajudella vaihteleva signaali*)
END_VAR
VAR
	bInitDone	: BOOL	:=FALSE;		(*Ohjelman initialisointi*)
	TP_Delay	: TP;					(*Nopein taajuus / 2 tuottaja*)
	bBaseHz	: BOOL	:=FALSE;		(*Nopein taajuus/2*)
	iBaseHz		: UINT	:=4;			(*Base taajuus (Hz)*)
	RTRIG_2Hz_Sign 	: R_TRIG;		(*2Hz signaalin generointi*)
	RTRIG_1Hz_Sign 	: R_TRIG;		(*1Hz signaalin generointi*)
	RTRIG_0_5Hz_Sign	: R_TRIG;	(*0,5Hz signaalin generointi*)
	tBaseTaajuus	:TIME;			(*Base vilkutuksen timerin arvo. f/2*)
	fPLC_CYCLE_TIME	: LREAL;		(*PLC:n cycli aika. Sekunttia*)
END_VAR�  (*Ohjelman initialisoinnit - Suoritetaan vain kertaalleen*)
IF NOT bInitDone THEN
	(*fPLC_CYCLE_TIME := UDINT_TO_LREAL(SystemTaskInfoArr[1].cycleTime) / 10E6;*)
	fPLC_CYCLE_TIME := 1;	(*1sec*)
	(*Base Vilkkusignaalien tuottaminen*)
	(* 250ms - 1* cykliaika(20ms)*)
	tBaseTaajuus := LREAL_TO_TIME( ( (1/ UINT_TO_LREAL(iBaseHz) / 2 ) - 1 * fPLC_CYCLE_TIME ) * 1000);
	bInitDone := TRUE;
END_IF;


(*Base signaalin genrointi*)
TP_Delay(IN:=NOT TP_Delay.Q , PT:=tBaseTaajuus);
IF NOT TP_Delay.Q THEN
	bBaseHz := NOT bBaseHz;
	bSign4Hz:= bBaseHz;
END_IF;

(*2Hz signaalin genrointi*)
RTRIG_2Hz_Sign(CLK:=bSign4Hz);
IF RTRIG_2Hz_Sign.Q THEN
	bSign2Hz:=NOT bSign2Hz;
END_IF;

(*1Hz signaalin genrointi*)
RTRIG_1Hz_Sign(CLK:=bSign2Hz);
IF RTRIG_1Hz_Sign.Q THEN
	bSign1Hz:=NOT bSign1Hz;
END_IF;

(*0,5 Hz signaalin generointi*)
RTRIG_0_5Hz_Sign(CLK:=bSign1Hz);
IF (RTRIG_0_5Hz_Sign.Q) THEN
	bSign0_5Hz:= NOT bSign0_5Hz;
END_IF;                  , � �           PRG_Drive_Link �/N^	�/N^      er= LS
        $   PROGRAM PRG_Drive_Link
VAR
END_VAR      fbDrivebDriveEnabled  AIDriveStatusFB_DriveMovement2      ODriveControl    j                      , N ��           PRG_HMI �/N^	�/N^      tI		:	          PROGRAM PRG_HMI
VAR


	(*HMI Buttons*)
	bBtnResetCounters	: BOOL;	(*Button Reset counters*)
	bBtnEmptyPipes		: BOOL;	(*Button Empty Pipes*)

	(*Variables for Lift visualisation*)
	iSorterLiftPos	: INT;		(*Position of Sorter Lift cylinder*)
	iLiftPos		: INT;		(*Position of the lift*)
	wTargetPos	: INT;		(*Current target position of the lift*)
	bBall_InLift	: BOOL;		(*Is there a ball in lift*)

	(*internal variables*)
	RS_Ball_InLift	: RS;		(*Flip-flop for ball in the lift*)
	i: INT := 0;		(*Counter*)
END_VAR�  (*Producing blinking signal*)
PRG_Blinking();

(*Sorter lift position calculus*)
IF OSorterLift AND (iSorterLiftPos < 30) THEN
	iSorterLiftPos := iSorterLiftPos +1;
END_IF;
IF NOT OSorterLift AND (iSorterLiftPos > 0) THEN
	iSorterLiftPos := iSorterLiftPos - 1;
END_IF;

(*Lift position calculus*)
CASE fbDrive.wDestination OF
GPOS_PIPE_UP:		(*Go to Pipe Up*)
	wTargetPos:=375;
GPOS_PIPE_MID:	(*Go to Pipe Mid*)
	wTargetPos:=275;
GPOS_COLOR_SEN:	(*Go to Colour sensor*)
	wTargetPos:=220;
GPOS_PIPE_LOW:	(*Go to Pipe Low*)
	wTargetPos:=175;
GPOS_GARBAGE:	(*Go to garbage position*)
	wTargetPos:=110;
GPOS_LOADING:	(*Go to loading position*)
	wTargetPos:=20;
ELSE
	wTargetPos:=0;
END_CASE;

(*Drive lift*)
IF iLiftPos > wTargetPos THEN	(*Lift is higher than target*)
	iLiftPos := iLiftPos - 1;	 (*Go down*)
ELSIF iLiftPos < wTargetPos THEN	(*Lift is lower than target*)
	iLiftPos := iLiftPos + 1;	 (*Go up*)
END_IF;

(*Is there a ball in the lift*)
RS_Ball_InLift(
	SET:= (iLiftPos=20 AND NOT OSorterGate),
	RESET1:=OEjector ,
	Q1=>bBall_InLift );

(* ---------------------------------- Button handlers ---------------------------------- *)
(*Button Empty Pipes*)

(*Button Reset coutners*)
IF bBtnResetCounters THEN
	CountBallsSortedMetal := 0;
	CountBallsSortedWooden := 0;
	CountBallsSortedYellow := 0;
	CountBallsSortedBlue := 0;
	FOR i := 1 TO 3 DO
		arrCountBallsOnTubes[i] := 0;
	END_FOR;
END_IF;
                  , $
 �d           PRG_Initialisation �FN^	�/N^                      �  PROGRAM PRG_Initialisation
(*Template program for system initialisation*)
VAR_INPUT
	bReset	: BOOL := FALSE;	(*Reseting the SFC*)
	bExecute	: BOOL;			(*Executes PRG*)
END_VAR
VAR_OUTPUT
	bDone		: BOOL;		(*Program operations done*)
END_VAR
VAR
(* -------------INTERNAL-------------------*)
	tonMoveDelay		: TON;
	tMoveDelay		: TIME := T#1s;
	bInitDone			: BOOL:=FALSE;	(*Initialisation done*)
	bGatesClosed	: BOOL:=FALSE;	(*Initialisation done*)
	bActuRetracted	: BOOL:=FALSE;
	bDriveAtLoading	: BOOL:=FALSE;

(*System variables. See SFC-flags: http://infosys.beckhoff.com/content/1033/tcplccontrol/html/tcplcctrl_editorsfc.htm?id=24319#SFC-Flags*)
	SFCReset		: BOOL := FALSE;	(*For reseting the SFC*)
END_VAR
       Init V     ��������           Action Init �FN^9   (*Clear Reset SFC*)
SFCReset:= FALSE;
bDone := FALSE;
    
   NOT bReset           WaitForReset         bReset         ResetSFC      ��������           Action ResetSFC �FN^   (*Reset SFC*)
SFCReset:=TRUE;    	        InitMachine   Implement here your sequence      ��������           Action InitMachine �FN^�   (*Do some actions...

Sulje kaikki portit ... JA tarkista Steppi� seuraavassa transitioehdossa, ett� kaikki portit ovat kiinni
Close all gates.... and check in following transition that ALL gates are closed*)

;       bExecute      	   StartInit �     ��������           Action StartInit �FN^   bDone := FALSE;       TRUE           Gates         TRUE      
   CloseGates �     ��������           Action CloseGates �FN^S   OGateUp		:= FALSE;
OGateMid		:= FALSE;
OGateLow		:= FALSE;
OSorterGate	:= FALSE;    
   CheckGates �     ��������           Transition CheckGates 	�FN^      IGateClosedUpIGateClosedMidIGateClosedLowAISorterGateClosedANDd          GatesClosed �     ��������           Action GatesClosed �FN^   bGatesClosed := TRUE;         	   Actuators         TRUE         ActuRetract �     ��������           Action ActuRetract �FN^+   OSorterLift	 := FALSE;
OEjector	 := FALSE;       checkActuator �     ��������           Transition checkActuator 	�FN^      ISorterLiftDownANOT OEjectorANDd          ActuRetracted �     ��������           Action ActuRetracted �FN^   bActuRetracted := TRUE;            Lift         TRUE         HomeLift �     ��������           Action HomeLift �FN^B   fbDrive.bStart := TRUE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);   �     ��������           Action HomeLift - Exit �FN^1   fbDrive.bStart:= FALSE;
tonMoveDelay(IN:=FALSE);&   fbDrive.bHomingDone AND tonMoveDelay.Q         MoveToLoading �     ��������           Action MoveToLoading �FN^c   fbDrive.wTarget := GPOS_LOADING;
fbDrive.bStart:= TRUE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);   �     ��������           Action MoveToLoading - Exit �FN^1   fbDrive.bStart:= FALSE;
tonMoveDelay(IN:=FALSE);$   fbDrive.bMoveDone AND tonMoveDelay.Q         DriveInLoadingPos �     ��������           Action DriveInLoadingPos �FN^   bDriveAtLoading := TRUE;           checkAllComplete �     ��������           Transition checkAllComplete 	�FN^      bGatesClosedbActuRetractedAbDriveAtLoadingANDd          InitMachineDone �     ��������           Action InitMachineDone �FN^   bDone := TRUE;       NOT bExecute     InitMachine     	   IO_Update         TRUE  	   IO_Update       FALSE     Initj                  p   , � � �           PRG_ProcessAuto�/N^	�/N^      ��������        �   PROGRAM PRG_ProcessAuto
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
       Init q     ��������           Action Init m&M^   SFCReset := FALSE;    
   NOT bReset        	   WaitReset              Process r     ��������           Action Process m&M^w   O_Light_1 :=FALSE;
O_Light_2 :=FALSE;
O_Light_3 :=FALSE;
O_Light_4 :=FALSE;

tonDelay(IN:=FALSE , PT:=tDelayTime);       bEnable         Step1 s     ��������           Action Step1 m&M^)   O_Light_1 := TRUE;

tonDelay(IN:=TRUE);   t     ��������           Action Step1 - Exit m&M^   tonDelay(IN:=FALSE);
   tonDelay.Q         Step2 u     ��������           Action Step2 m&M^)   O_Light_2 := TRUE;

tonDelay(IN:=TRUE);   v     ��������           Action Step2 - Exit m&M^   tonDelay(IN:=FALSE);
   tonDelay.Q         Step3 w     ��������           Action Step3 m&M^)   O_Light_3 := TRUE;

tonDelay(IN:=TRUE);   x     ��������           Action Step3 - Exit m&M^   tonDelay(IN:=FALSE);
   tonDelay.Q         Step4 y     ��������           Action Step4 m&M^)   O_Light_4 := TRUE;

tonDelay(IN:=TRUE);   z     ��������           Action Step4 - Exit m&M^   tonDelay(IN:=FALSE);
   tonDelay.Q     Process       bReset         Reseting {     ��������           Action Reseting m&M^   SFCReset := TRUE;       FALSE     Initd                  |   , � � �            PRG_ProcessManual�/N^	�/N^      ��������        �   PROGRAM PRG_ProcessManual
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
END_CASE                  ,   �%           PRG_Sorting �/N^	�/N^                      %  PROGRAM PRG_Sorting
(*Template program for sorting operation*)
VAR_INPUT
	bReset		: BOOL := FALSE;	(*Reseting the SFC*)
	bExecute	: BOOL;			(*Executes PRG*)
END_VAR
VAR_OUTPUT
	bDone		: BOOL;		(*Program operations done*)
END_VAR
VAR
(* -------------INTERNAL-------------------*)
	bInitDone		: BOOL:=FALSE;	(*Initialisation done*)


(*System variables. See SFC-flags: http://infosys.beckhoff.com/content/1033/tcplccontrol/html/tcplcctrl_editorsfc.htm?id=24319#SFC-Flags*)
	SFCReset		: BOOL := FALSE;	(*For reseting the SFC*)
END_VAR
       Init U     ��������           Action Init ��V(   (*Clear Reset SFC*)
SFCReset:= FALSE;
       bExecute           WaitForReset         bReset         ResetSFC      ��������           Action ResetSFC ��V   (*Reset SFC*)
SFCReset:=TRUE;            TODO_ImplementYourSequence   Implement here your sequence      ��������        !   Action TODO_ImplementYourSequence ��V�   (*Do some actions...

Sulje kaikki portit ... JA tarkista Steppi� seuraavassa transitioehdossa, ett� kaikki portit ovat kiinni
Close all gates.... and check in following transition that ALL gates are closed*)

;       FALSE     TODO_ImplementYourSequence       FALSE     Initj                  M   , d d ��           Simu_F_ClearBall �/N^	�/N^      ��������        �   FUNCTION Simu_F_ClearBall : BOOL
(*Clears ball from virtual ball array at specific index*)
VAR_INPUT
	idxFrom	: INT;	(*From Index*)
END_VAR
VAR
END_VAR�   (*Clear values at from*)
arrBalls[idxFrom].bExists := FALSE;
arrBalls[idxFrom].bMetal := FALSE;
arrBalls[idxFrom].uColour := 0;
arrBalls[idxFrom].dwColourCode := 0;

(*Return value*)
Simu_F_ClearBall:=TRUE;
               L   , �Q ��           Simu_F_MoveBall �/N^	�/N^      ��������        �   FUNCTION Simu_F_MoveBall : BOOL
(*Moves ball from virtual ball array from index to another*)
VAR_INPUT
	idxFrom	: INT;	(*From Index*)
	idxTo	: INT;	(*To Index*)
END_VAR
VAR
END_VARd  (*Copy fields from -> to*)
arrBalls[idxTo].bExists := arrBalls[idxFrom].bExists;
arrBalls[idxTo].bMetal := arrBalls[idxFrom].bMetal;
arrBalls[idxTo].uColour := arrBalls[idxFrom].uColour;
arrBalls[idxTo].dwColourCode := arrBalls[idxFrom].dwColourCode;

(*Clear values at from*)
Simu_F_ClearBall(idxFrom);

(*Return value*)
Simu_F_MoveBall:=TRUE;
               D   , )  �           Simu_FB_CylinderModel �/N^	�/N^      ��������        �  FUNCTION_BLOCK Simu_FB_CylinderModel
(*Models the operation of a virtual cylinder*)
VAR_INPUT
	bReset 			: BOOL;	(*Resets FB*)
	bCmdCylOut 		: BOOL; (*T = Extends cylinder, F=cylinder In*)
	tMoveTime		: TIME;	(*time it takes to move to other state*)
END_VAR
VAR_OUTPUT
	bBusy		: BOOL; 	(*FB is busy and processing*)
	bDone 		: BOOL; 	(*Move done*)
	bErr 		: BOOL; 	(*Error active*)
	iErrCode	: INT;		(*Error code*)
	bStateOut 	: BOOL; 	(*Status: Cylinder is OUT*)
	bStateIn 	: BOOL; 	(*Status: Cylinder is IN*)
END_VAR
VAR
	tonMoveTimer	: TON;	(*Timer for move*)
	(*SFC control flags*)
	SFCReset		: BOOL;	(*Resets SFC*)
END_VAR       Init E     ��������           Action Init ��V   SFCReset := FALSE;       TRUE           waitingReset         bReset         ResetRequested   G     ��������           Action ResetRequested - Entry ��V   SFCReset:=TRUE;       	   IO_Update F     ��������           Action IO_Update ��V      �St_Out  	bStateOut     �St_In  bStateInk          FALSE  	   IO_Update     	   StartLoop        
   bCmdCylOut         St_Going_Out	tMoveTime          TRUE         St_Out         NOT bCmdCylOut      NOT bCmdCylOut         St_Going_In	tMoveTime          TRUE         St_In      
   bCmdCylOut     St_Going_Out       FALSE     Initj                  C   , } 8 �           Simu_FB_DriveModel �/N^	�/N^      ��������        H  FUNCTION_BLOCK Simu_FB_DriveModel
(*Models the operation of a virtual Indramat Drive for simulation purposes*)
VAR_INPUT
	bReset 			: BOOL;	(*Resets FB*)
	bPowersOn		: BOOL;	(*Powers are ON. Emergency is cleared*)
	wDriveControl	: WORD;	(*Control word to virtual  Drive*)
END_VAR
VAR_OUTPUT
	wDriveStatus	: WORD;	(*Status word from virtual Drive*)
	iCurrentPos		: INT;	(*Current position of virtual Drive*)

	bBusy		: BOOL; 	(*FB is busy and processing*)
	bDone 		: BOOL; 	(*Move done*)
	bErr 		: BOOL; 	(*Error active*)
	iErrCode	: INT;		(*Error code*)
END_VAR
VAR
	iStep: INT := 3;		(*Step size Per PLC cycle*)
	wTarget		: WORD:=0;	(*Target destination*)

	bDrvReq_Enable	: BOOL;		(*Drive is requested to be enabled*)
	bDrvReq_Start	: BOOL;		(*Drive is requested to started*)
	bDrvReq_Homing	: BOOL;		(*Drive is requested to homed*)

	bDrvSt_Homed	: BOOL;		(*Drive is homed*)
	bDrvSt_InMotion	: BOOL;		(*Drive is in motion *)
	bDrvSt_InPos	: BOOL;		(*Drive is in Position *)

	(*Internal motion*)
	iTargetPos		: INT;		(*Current target Position*)
	bInTargetPos	: BOOL;		(*Internal in target*)
	bInTargetPosWindow	: BOOL;		(*Internal in target position window*)


	tonMoveTimer	: TON;	(*Timer for move*)
	(*SFC control flags*)
	bResetLocal		: BOOL;	(*Local Reset request*)
	SFCReset		: BOOL;	(*Resets SFC*)
END_VAR       Init I     ��������           Action Init �`�V�   SFCReset := FALSE;
bResetLocal := FALSE;
(*Clear Drive status*)
wDriveStatus := 0;
bDrvSt_Homed := FALSE;
bDrvSt_InMotion := FALSE;
bDrvSt_InPos := FALSE;

       TRUE           waitingReset Q     ��������           Action waitingReset �`�V�   bResetLocal := FALSE;
(*Local reset request*)
IF NOT (Init OR St_Off OR St_RdyToPowerOn) THEN		(*Not inside listed states*)
(*	bResetLocal := NOT bPowersOn;*)
	;
END_IF       bReset OR bResetLocal         ResetRequested   N     ��������           Action ResetRequested - Entry �`�V   SFCReset:=TRUE;          IO_Update_LD O     ��������           Action IO_Update_LD �`�V    Drive is OK �St_Off wDriveStatus.5   Power is Rdy �
St_OffInitKSt_PoweringOn wDriveStatus.6   Drive is homed �bDrvSt_Homed  wDriveStatus.2   Drive is in motion �	
	St_MovingSt_Homing_MoveUpKSt_Homing_MoveDown�bInTargetPosWindow  wDriveStatus.3 bDrvSt_InMotion   Drive is in target position �	bDrvSt_HomedKbInTargetPosWindow  wDriveStatus.4k          TRUE         IO_Update_ST R     ��������           Action IO_Update_ST �`�V�   (*Set control variables*)
bDrvReq_Enable := wDriveControl.0;
bDrvReq_Start := wDriveControl.1;
bDrvReq_Homing := wDriveControl.2;

(*Get target*)
wTarget := SHR(wDriveControl, 8);       TRUE         PositionUpdate S     ��������           Action PositionUpdate �`�VF  (*Set target*)
IF St_DriveEnabled AND bDrvSt_Homed THEN
	CASE wTarget OF
	16#0A:	(*Loading*)
		iTargetPos := 20;
	16#0E:	(*Garbage pipe*)
		iTargetPos := 110;
	16#0B:	(*Low pipe*)
		iTargetPos := 175;
	16#0F:	(*Colour sensor*)
		iTargetPos := 220;
	16#0C:	(*Mid pipe*)
		iTargetPos := 275;
	16#0D:	(*Up pipe*)
		iTargetPos := 375;
	END_CASE;
ELSE
	IF St_Homing_MoveUp THEN
		iTargetPos := 50;
	ELSIF St_Homing_MoveDown THEN
		iTargetPos := 20;
	END_IF;
END_IF;

(*Move lift*)
IF bDrvReq_Enable AND (St_Homing_MoveUp OR St_Homing_MoveDown OR St_Moving) THEN
	(*Calculate next position*)
	IF ABS(iTargetPos - iCurrentPos) < iStep THEN
		(*Inside target window. Set to target.*)
		iCurrentPos := iTargetPos;
	ELSIF (iCurrentPos > iTargetPos) THEN
		iCurrentPos := iCurrentPos - iStep;
	ELSIF (iCurrentPos < iTargetPos) THEN
		iCurrentPos := iCurrentPos + iStep;
	END_IF;
END_IF;

(*Internal in target*)
bInTargetPos := (ABS(iTargetPos - iCurrentPos) <= 0);

(*Internal in target position window*)
bInTargetPosWindow := (ABS(iCurrentPos - iTargetPos) <= 3);       TRUE     IO_Update_LD	        St_Off         NOT bPowersOn         St_RdyToPowerOn      	   bPowersOn           St_PoweringOnT#1s    P     ��������           Action St_PoweringOn - Entry �`�V*   (*Power is ON*)
wDriveStatus.7 := TRUE;
     TRUE         St_DriveRdy              WaitingPowerInterrupt         NOT bPowersOn     ResetRequested       bDrvReq_Enable         St_DriveEnabled            bDrvReq_Start AND bDrvReq_Homing         St_StartHoming   T     ��������           Action St_StartHoming - Entry �`�V   bDrvSt_Homed := FALSE;     TRUE         St_Homing_MoveUpT#1s            bInTargetPos         St_Homing_MoveDownT#1s            bInTargetPos         St_Homed   W     ��������           Action St_Homed - Entry �`�V   bDrvSt_Homed := TRUE;     TRUE      NOT bDrvReq_Enable     St_DriveRdy    NOT bDrvReq_Enable     St_DriveRdy $   bDrvReq_Start AND NOT bDrvReq_Homing         St_StartMoveT#15ms      Y     ��������           Action St_StartMove - Exit �`�V   bDrvSt_InPos := FALSE;   TRUE      	   St_Moving           bInTargetPos         St_MoveDone         TRUE      NOT bDrvReq_Enable     St_DriveRdy    NOT bDrvReq_Enable     St_DriveRdy   St_DriveEnabled       FALSE     Initj                  B   ,              Simu_PRG_Simulation �/N^	�/N^      ��������        Q  PROGRAM Simu_PRG_Simulation
(*This is main program for simulation and virtual GUI model for the device*)
VAR
	(*Constants*)
	tMoveTime_Cyl		: TIME := T#2s;		(*Time for cylinder to change state*)
	(*Inputs*)
	bHasBallsInMagazine	: BOOL := TRUE;	(*Is there balls in magazine?*)
	bResetSimu			: BOOL;		(*Reset simulation*)
	iBallRandomizer		: UINT	:=0; (*Randomizes balls*)

	iVirtualLiftPos		: INT;		(*Position of virtual lift*)

	tonRollToLift			: TON;
	tonDroppedBall			: TON;
	tonGarbageBall			: TON;
	tonBallToPipe			: TON;
	fbVirtLift				: Simu_FB_DriveModel;
	fbVirtCyl_SorterLift	: Simu_FB_CylinderModel;
	fbVirtCyl_SorterGate	: Simu_FB_CylinderModel;
	fbVirtCyl_PipeGate_Up	: Simu_FB_CylinderModel;
	fbVirtCyl_PipeGate_Mid	: Simu_FB_CylinderModel;
	fbVirtCyl_PipeGate_Low	: Simu_FB_CylinderModel;

	i: INT := 0;
END_VARu  (*Ball "movements" logic*)
IF NOT arrBalls[0].bExists AND bHasBallsInMagazine AND ISorterLiftDown THEN
	(*Create a new ball from magazine*)
	arrBalls[0].bExists := TRUE;
	CASE iBallRandomizer OF
	0:	(*Metal,DarkGrey*)
		arrBalls[0].bMetal := TRUE;
		arrBalls[0].uColour := 0;
		arrBalls[0].dwColourCode := 16#C0C0C0;	(*Dark gray*)
	1:	(*Wooden, Yellow*)
		arrBalls[0].bMetal := FALSE;
		arrBalls[0].uColour := 1;
		arrBalls[0].dwColourCode := 16#00FFFF;	(*Yellow*)
	2:	(*Wooden, Blue*)
		arrBalls[0].bMetal := FALSE;
		arrBalls[0].uColour := 2;
		arrBalls[0].dwColourCode := 16#FF0000;	(*Blue*)
	3:	(*Wooden, Red*)
		arrBalls[0].bMetal := FALSE;
		arrBalls[0].uColour := 3;
		arrBalls[0].dwColourCode := 16#0000FF;	(*Red*)
	END_CASE;
	(*Add counter*)
	IF iBallRandomizer >=3 THEN
		iBallRandomizer := 0;
	ELSE
		iBallRandomizer := iBallRandomizer + 1;
	END_IF;
END_IF;

(*Roll to inductive*)
IF arrBalls[0].bExists AND NOT arrBalls[1].bExists AND ISorterLiftUp THEN
	Simu_F_MoveBall(0, 1);
END_IF;

(*Roll out from inductive*)
IF arrBalls[1].bExists AND NOT ISorterGateClosed THEN
	Simu_F_MoveBall(1, 2);
END_IF;

(*Roll to main lift (idx=5) or drop it down*)
tonRollToLift(IN:= arrBalls[2].bExists, PT:= T#3s, Q=> , ET=> );
IF arrBalls[2].bExists AND tonRollToLift.Q THEN
	IF iVirtualLiftPos = 20 AND NOT arrBalls[5].bExists THEN
		Simu_F_MoveBall(2, 5);
	ELSE
		Simu_F_MoveBall(2, 6);
	END_IF;
END_IF;

(*Clear dropped ball*)
tonDroppedBall(IN:= arrBalls[6].bExists, PT:= T#6s, Q=> , ET=> );
IF arrBalls[6].bExists AND tonDroppedBall.Q THEN
	Simu_F_ClearBall(6);
END_IF;

(*Clear ball in carbage *)
tonGarbageBall(IN:= arrBalls[8].bExists, PT:= T#2s, Q=> , ET=> );
IF arrBalls[8].bExists AND tonGarbageBall.Q THEN
	Simu_F_ClearBall(8);
END_IF;

(*Handle Pipes*)
tonBallToPipe(IN:= (arrBalls[10].bExists OR arrBalls[15].bExists OR arrBalls[20].bExists),
		PT:= T#2s, Q=> , ET=> );
FOR i:=0 TO 10 BY 5 DO
	(*Roll Pipe balls*)
	IF arrBalls[10+i].bExists AND tonBallToPipe.Q THEN
		Simu_F_MoveBall(10+i, 11+i);
	END_IF;
END_FOR;
(*Empty pipes*)
IF arrBalls[11].bExists AND NOT IGateClosedLow THEN
	Simu_F_ClearBall(11);
END_IF;
IF arrBalls[16].bExists AND NOT IGateClosedMid THEN
	Simu_F_ClearBall(16);
END_IF;
(* Was Commented out *)
IF arrBalls[21].bExists AND NOT IGateClosedUp THEN
	Simu_F_ClearBall(21);
END_IF;




(*Eject ball*)
IF arrBalls[5].bExists AND OEjector THEN
	CASE iVirtualLiftPos OF
	20: (*At Loading*)
		;	(*Do nothing*)
	110:	(*At garbage*)
		Simu_F_MoveBall(5, 8);
	175:	(*At Pipe Low*)
		Simu_F_MoveBall(5, 10);
	275:	(*At Pipe Mid*)
		Simu_F_MoveBall(5, 15);
	375:	(*At Pipe Up*)
		Simu_F_MoveBall(5, 20);
	ELSE	(*Dropped ball*)
		Simu_F_MoveBall(5, 6);
	END_CASE;
END_IF


(*At colour sensor*)
ISenColourYellow := FALSE;
ISenColourBlue := FALSE;
ISenColourGreen := FALSE;
ISenColourRed := FALSE;
IF arrBalls[5].bExists AND iVirtualLiftPos > 215 AND iVirtualLiftPos < 225 THEN
	CASE arrBalls[5].uColour OF
	1:
		ISenColourYellow := TRUE;
	2:
		ISenColourBlue := TRUE;
	3:
		ISenColourRed := TRUE;
	4:
		ISenColourBlue := TRUE;
		ISenColourGreen := TRUE;
	END_CASE;
END_IF

(*Setting sensors*)
ISensorOpt := arrBalls[0].bExists AND ISorterLiftDown;
ISensorInd := NOT(arrBalls[1].bExists AND arrBalls[1].bMetal);	(*Sensor is NC type*)


(*Virtual model for Lift*)
fbVirtLift(
	bReset:= bResetSimu,
	bPowersOn:= IEmergencyClear,
	wDriveControl:= ODriveControl,
	wDriveStatus=> IDriveStatus,
	iCurrentPos=> iVirtualLiftPos,
	bBusy=> , 
	bDone=> ,
	bErr=> ,
	iErrCode=> );

(*Virtual models for cylinders*)
fbVirtCyl_SorterLift(
	bReset:= bResetSimu,
	bCmdCylOut:= OSorterLift,
	tMoveTime:= tMoveTime_Cyl,
	bStateOut=> ISorterLiftUp,
	bStateIn=> ISorterLiftDown);
fbVirtCyl_SorterGate(
	bReset:= bResetSimu,
	bCmdCylOut:= NOT OSorterGate,
	tMoveTime:= tMoveTime_Cyl,
	bStateOut=> ISorterGateClosed,
	bStateIn=> );
fbVirtCyl_PipeGate_Up(
	bReset:= bResetSimu,
	bCmdCylOut:= NOT OGateUp ,		(*OGateUp*)
	tMoveTime:= tMoveTime_Cyl,
	bStateOut=> IGateClosedUp, 	(*IGateClosedUp*)
	bStateIn=> );
fbVirtCyl_PipeGate_Mid(
	bReset:= bResetSimu,
	bCmdCylOut:= NOT OGateMid,
	tMoveTime:= tMoveTime_Cyl,
	bStateOut=> IGateClosedMid,
	bStateIn=> );
fbVirtCyl_PipeGate_Low(
	bReset:= bResetSimu,
	bCmdCylOut:= NOT OGateLow,
	tMoveTime:= tMoveTime_Cyl,
	bStateOut=> IGateClosedLow,
	bStateIn=> );                )   , �M $           FB_DriveMovement2 �/N^
    @    �/N^   d                                                                                                          
    @           y 7< �    ���     ���                                             @                          ���        @
                       @                                                                                                           
    @            - � 
   ���     ���                                            FB_DriveMovement2 @                           ���        @
                       @                                                                                                         
    @        �  -7� �       ���     ���            FB_VC_Drive_Status                                        ���        @
                                               @         FB        $FB$                                                                                                      
    @        
 n o � < x   ���     ���                                        $FB$.wTarget    Target : %d  @                          ���        @
                       @                                                                                                           
    @        
 ( o G < 7   ���      �                                     $FB$.bEnable    
   Enable @                          ���        @
    $FB$.bEnable                 @                                                                                                           
    @        
 F o e < U   ���      �                                     $FB$.bStart    	   Start @                          ���        @
    $FB$.bStart                 @                                                                                                           
    @        
 Q -- "  ���     ��                                     $FB$.wTarget = .GPOS_LOADING       Load @                          ���        @
                  -   INTERN ASSIGN $FB$.wTarget:=(GPOS_LOADING) @                                                                                                           
    @        
 Q -   ���     ��                                     $FB$.wTarget = .GPOS_GARBAGE       Garbage @                          ���        @
                  -   INTERN ASSIGN $FB$.wTarget:=(GPOS_GARBAGE) @                                                                                                           
    @          � y � < �   ���     ���                                            Set Target Pos @                          ���        @
                       @                                                                                                           
    @        
 � Q - �   ���     ��                                     $FB$.wTarget = .GPOS_PIPE_LOW       Pipe: Low @                      	    ���        @
                  .   INTERN ASSIGN $FB$.wTarget:=(GPOS_PIPE_LOW) @                                                                                                           
    @        
 � Q � - �   ���     ��                                     $FB$.wTarget = .GPOS_COLOR_SEN       Colour Sen @                      
    ���        @
                  /   INTERN ASSIGN $FB$.wTarget:=(GPOS_COLOR_SEN) @                                                                                                           
    @        
 � Q � - �   ���     ��                                     $FB$.wTarget = .GPOS_PIPE_MID       Pipe: Mid @                          ���        @
                  .   INTERN ASSIGN $FB$.wTarget:=(GPOS_PIPE_MID) @                                                                                                           
    @        
 � Q � - �   ���     ��                                     $FB$.wTarget = .GPOS_PIPE_UP       Pipe: Up @                          ���        @
                  -   INTERN ASSIGN $FB$.wTarget:=(GPOS_PIPE_UP) @           FB    
                     	   
         ��� �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  *   , �� ��           FB_VC_Drive_Status �/N^
    @    �/N^   d                                                                                                        
    @          � � � K �        ���     ���            VC_BOOLEANSTATUS                                          ���        @
                                               @         Name   bFlag     
   'Drive OK'   $FB$.wDriveStatus.5                                                                                                      
    @            �  K 
   ���     ���                                         
   Status @                          ���        @
                       @                                                                                                         
    @          � � � K �        ���     ���            VC_BOOLEANSTATUS                                         ���        @
                                               @         Name   bFlag        'Drive Ready'   $FB$.wDriveStatus.6                                                                                                    
    @          � � � K �        ���     ���            VC_BOOLEANSTATUS                                         ���        @
                                               @         Name   bFlag     
   'Power On'   $FB$.wDriveStatus.7                                                                                                    
    @          � � � K �        ���     ���            VC_BOOLEANSTATUS                                         ���        @
                                               @         Name   bFlag        'Homed'   $FB$.wDriveStatus.2                                                                                                    
    @          � � � K �        ���     ���            VC_BOOLEANSTATUS                                         ���        @
                                               @         Name   bFlag        'In Motion'   $FB$.wDriveStatus.3                                                                                                    
    @          � � � K �        ���     ���            VC_BOOLEANSTATUS                                         ���        @
                                               @         Name   bFlag        'In Position Window'   $FB$.wDriveStatus.4                                                                                                      
    @          F � [ K P   ���     ���                                        $FB$.wDestination    Destination : %d  @                          ���        @
                       @                                                                                                           
    @          n � � K x   ���     ���                                            Drive status word @                      	    ���        @
                       @                                                                                                         
    @           � ) K         ���     ���            VC_BOOLEANSTATUS                                     
    ���        @
                                               @         Name   bFlag        'Homing Done'   $FB$.bHomingDone                                                                                                    
    @          ( � = K 2        ���     ���            VC_BOOLEANSTATUS                                         ���        @
                                               @         Name   bFlag        'Move Done'   $FB$.bMoveDone      FB    	                         	   
   ��� �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  K   , $�n           Simu_VC_Virtual_Ball �/N^
    @�����/N^   d                                                                              .arrBalls[$idx$].dwColourCode                          
    @                  ���     ��                                 NOT .arrBalls[$idx$].bExists   .arrBalls[$idx$].bExists        @                           ���        @
                       @           idx               �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  +   , N� �R           V_Drive �/N^
    @    �/N^   d                                                                                                        
    @            �7� �        ���     ���            FB_DriveMovement2                                          ���        @
                                               @         FB        .fbDrive    ��� �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ,   ,   fB           V_MAIN �/N^
    @    �/N^   d                                                                                                        
    @        < @�'�       ���     ���            VC_Graph_Sorter                                         ���        @
                                               @                                                                                                                 
    @           = �( �        ���     ���            VC_Graph_Lift                                         ���        @
                                               @                                                                                                                   
    @        �Z U�   ���     ���                                             @                          ���        @
                       @                                                                                                         
    @        � �}1E       ���     ���            VC_Graph_Counters                                         ���        @
                                               @                                                                                                                   
    @         � ,< � ,� J< ,  ���     ���                           @                             ���        @
                             ��� �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  H   , 
���            V_VIRTUAL_MACHINE �/N^
    @�����FN^t   x   9                                                                                                       
    @        �x �� �8�   ��     ���                                             @                      q    ���        @
                       @                                                                                                           
    @         � ( < 
 �( �F < (   ���     ���                           @                         D    ���        @
                                                                                                                               
    @         � � < d �� �� < �   ���     ���                           @                         C    ���        @
                                                                                                                               
    @         Y�� ��h��� �  ���     ���                           @                             ���        @
                                                                                                                               
    @         � � < � �� �< �   ���     ���                           @                         3    ���        @
                                                                                                                               
    @        �( �_��   ���     ���                                             @                          ���        @
                       @                                                                                                           
    @         � ,< � ,� J< ,  ���     ���                           @                             ���        @
                                                                                                                               
    @        � �� �� �   ��     ���                                             @                          ���        @
                       @                                                                                                           
    @        < h� �i w  ���     ���                                             @                          ���        @
                       @                                                                                                           
    @        � �� �� �  ���     ���                                             @             -1 * PRG_HMI.iSorterLiftPos            ���        @
                       @                                                                                                           
    @        d ^o ii c   ��     ���                                             @                          ���        @
                       @                                                                                                           
    @        Z @y _i O  ���     ���                                             @                          ���        @
                       @                                                                                                           
    @        d ^o }d h   ��     ���                                .OSorterGate            @                          ���        @
                       @                                                                                                           
    @        x �� �� �  ���     ��                                     .ISensorInd        @                          ���        @
                       @                                                                                                           
    @        � �� �� �  ���     ���                                             @                          ���        @
                       @                                                                                                           
    @        � �� �� �  ���     ��                                     .ISorterLiftUp        @                          ���        @
                       @                                                                                                           
    @        � �� �� �  ���     ��                                     .ISorterLiftDown        @                          ���        @
                       @                                                                                                           
    @        Z Te _Z T  ���     ��                                     .ISorterGateClosed        @                          ���        @
                       @                                                                                                         
    @        � �� �� �       ���     ���            Simu_VC_Virtual_Ball                            -1 * PRG_HMI.iSorterLiftPos        !    ���        @
                                               @         idx        0                                                                                                      
    @        � �� �� �  ���     ��                                     .ISensorOpt        @                           ���        @
                       @                                                                                                         
    @        n g� �} v       ���     ���            Simu_VC_Virtual_Ball                                     $    ���        @
                                               @         idx        1                                                                                                    
    @        = g\ �L v       ���     ���            Simu_VC_Virtual_Ball                                     %    ���        @
                                               @         idx        2                                                                                                    
    @        ( �G �7 �       ���     ���            Simu_VC_Virtual_Ball                                     '    ���        @
                                               @         idx        6                                                                                                      
    @           ) �# �   ���     ���                                             @                      (    ���        @
                       @                                                                                                           
    @         |= �( �  ���     ���                                             @          (   -1 * Simu_PRG_Simulation.iVirtualLiftPos        )    ���        @
                       @                                                                                                           
    @         �3 �# �   ��     ���                                NOT .OEjector            @          (   -1 * Simu_PRG_Simulation.iVirtualLiftPos        +    ���        @
                       @                                                                                                         
    @         |= �- �       ���     ���            Simu_VC_Virtual_Ball                         (   -1 * Simu_PRG_Simulation.iVirtualLiftPos        ,    ���        @
                                               @         idx        5                                                                                                    
    @        = \ 0L         ���     ���            Simu_VC_Virtual_Ball                                     -    ���        @
                                               @         idx        8                                                                                                    
    @        = � \ � L �        ���     ���            Simu_VC_Virtual_Ball                                     .    ���        @
                                               @         idx        10                                                                                                    
    @        = e \ � L t        ���     ���            Simu_VC_Virtual_Ball                                     /    ���        @
                                               @         idx        15                                                                                                    
    @        =  \ * L         ���     ���            Simu_VC_Virtual_Ball                                     0    ���        @
                                               @         idx        20                                                                                                    
    @        �( �G �7        ���     ���            Simu_VC_Virtual_Ball                                     8    ���        @
                                               @         idx        21                                                                                                    
    @        �� �� ��        ���     ���            Simu_VC_Virtual_Ball                                     9    ���        @
                                               @         idx        16                                                                                                    
    @        �� ���        ���     ���            Simu_VC_Virtual_Ball                                     :    ���        @
                                               @         idx        11                                                                                                      
    @        < � y � Z �   ���     ���                                            Colour
Sensor @                      <    ���        @
                       @                                                                                                           
    @        �
 �= l#   ,��     ���                                         &   Virtual Model of
Ball Game Device @                      =    ���       MS Sans Serif @                       @                                                                                                           
    @        x �� �� �  ���     ���                                            Ind
Sen @                      >    ���        @
                       @                                                                                                           
    @        � ^s� h  ���     ���                                            Opt. Sens @                      ?    ���       MS Sans Serif @
                       @                                                                                                          
    @         � �� h� �� �  ���     ���                           @                         @    ���        @
                                                                                                                              
    @        � �� �� �  ���     ��                              +   NOT Simu_PRG_Simulation.bHasBallsInMagazine            @                      B    ���        @
                       @                                                                                                         
    @          ���� &      ���     ���            VC_PackMLStates                                    E    ���        @
                                               @         PackML        .fbStateModel                                                                                                    
    @        �F �� �}       ���     ���            VC_Graph_Counters                                    J    ���        @
                                               @                                                                                                                 
    @        �� �{,      ���     ���            FB_DriveMovement2                                    K    ���        @
                                               @         FB        .fbDrive                                                                                                    
    @        ��Y{�      ���     ���            VC_PANEL_MACHINECONTROL                                    V    ���        @
                                               @                                                                                                                   
    @        �  � �   ���     ���                                             @                      a    ���        @
                       @                                                                                                           
    @        �Z �y �i   ���     ���                                             @                      b    ���        @
                       @                                                                                                           
    @        �� �� ��   ���     ���                                             @                      c    ���        @
                       @                                                                                                           
    @        �� �� ��   ���     ��                                     .IGateClosedLow        @                      d    ���        @
                       @                                                                                                           
    @        �n �y �n   ���     ��                                     .IGateClosedMid        @                      e    ���        @
                       @                                                                                                           
    @        � � �   ���     ��                                     .IGateClosedUp        @                      f    ���        @
                       @                                                                                                           
    @        � �) ���   ��     ���                                             @                      k    ���        @
                       @                                                                                                           
    @        �� �� ���   ��     ���                                             @                      m    ���        @
                       @                                                                                                           
    @        �x �� ��    ��     ���                             	   .OGateMid            @                      n    ���        @
                       @                                                                                                           
    @        � �= �(    ��     ���                                .OGateUp            @                      o    ���        @
                       @                                                                                                           
    @        �� ���    ��     ���                             	   .OGateLow            @                      h    ���        @
                       @                                                                                                         
    @        �F w� 5s         ���     ���                                                ���� ���        @
                                               @ 
    @            d                                                                                                         
    @            � [ A -   ���     ���                                            User Actions: @                      A    ���       MS Sans Serif @                       @                                                                                                          
    @          z 3 A (   ���     ��                                  '   Simu_PRG_Simulation.bHasBallsInMagazine       Balls in magazine? @                      #    ���        @
 '   Simu_PRG_Simulation.bHasBallsInMagazine                 @                                                                                                          
    @         < z Q A F   ���     �                                      NOT .IEmergencyClear       Clear Emergency @                      ;    ���        @
    .IEmergencyClear                 @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                         
    @        bXm�b      ���     ���            VC_BOOLEANSTATUS                                    s    ���        @
                                               @         Name   bFlag        'Pressure Applied'   .IPressureApplied    ��� �   ��   �   ��   � � � ���     �   ,��  �   ��   � � � ���                  $   , b�b,           VC_BOOLEANSTATUS �/N^
    @    K1N^   d                                                                                                          
    @            �  < 
   ��� ��� ���                                        $Name$	   %s :  @                           ���        @
                       @                                                                                                          
    @        �   �  � 
   ���     ��                                     $bFlag$        @                          ���        @
                       @           Name              bFlag              �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  %   , O���           VC_Graph_Counters �/N^
    @  	(�/N^   d                                                                                                        
    @           � ) Z         ���     ���         
   VC_Var_Int                                          ���        @
                                               @         Name   unit   VAR        'Metal'   pcs   .CountBallsSortedMetal                                                                                                      
    @            �  Z 
   ���     ���                                            Balls Sorted: @                          ���        @
                       @                                                                                                         
    @          ( � = Z 2        ���     ���         
   VC_Var_Int                                         ���        @
                                               @         Name   unit   VAR        'Wooden'   pcs   .CountBallsSortedWooden                                                                                                    
    @          < � Q Z F        ���     ���         
   VC_Var_Int                                         ���        @
                                               @         Name   unit   VAR        'Wooden, Yellow'   pcs   .CountBallsSortedYellow                                                                                                    
    @          P � e Z Z        ���     ���         
   VC_Var_Int                                         ���        @
                                               @         Name   unit   VAR        'Wooden, Blue'   pcs   .CountBallsSortedBlue                                                                                                    
    @          d � y Z n        ���     ���         
   VC_Var_Int                                         ���        @
                                               @         Name   unit   VAR     	   'Garbage'   pcs   .CountBallsSortedGarbage    ��� �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  &   , �m �4           VC_GRAPH_LIFT �/N^
    @  IN�/N^   d                                                                                                          
    @        
    � �   ���     ���                                             @                           ���        @
                       @                                                                                                           
    @          |) � �  ���     ���                                             @             -1 * PRG_HMI.iLiftPos            ���        @
                       @                                                                                                          
    @        
 |) � �  ���     ���                                NOT .PRG_HMI.bBall_InLift            @             -1 * PRG_HMI.iLiftPos            ���        @
                       @                                                                                                           
    @          � � �   ��     ���                                NOT .OEjector            @             -1 * PRG_HMI.iLiftPos            ���        @
                       @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  '   , ����           VC_GRAPH_SORTER �/N^
    @    �/N^   d                                                                                                          
    @        P F [ e U U    ��     ���                                             @                      
    ���        @
                       @                                                                                                           
    @          ( = G  7   ���     ���                                             @                          ���        @
                       @                                                                                                           
    @        < F o e U U   ���     ���                                             @             -1 * PRG_HMI.iSorterLiftPos        	    ���        @
                       @                                                                                                           
    @        
   )  #    ��     ���                                             @                          ���        @
                       @                                                                                                           
    @         "A n F � �< n d   ���     ���                           @                             ���        @
                                                                                                                               
    @                  ���     ���                                             @                          ���        @
                       @                                                                                                           
    @        
   = 
 (    ��     ���                                .OSorterGate            @                          ���        @
                       @                                                                                                          
    @        F F e e U U   ���     ��                                     .ISensorOpt    	   Light @             -1 * PRG_HMI.iSorterLiftPos            ���        @
                       @                                                                                                          
    @         ( = G - 7   ���     ��                                     .ISensorInd       Ind @                          ���        @
                       @                                                                                                           
    @        F d e � U s   ���     ���                                             @                          ���        @
                       @                                                                                                           
    @        F d Q o F d   ���     ��                                     .ISorterLiftUp        @                          ���        @
                       @                                                                                                           
    @        F x Q � F x   ���     ��                                     .ISorterLiftDown        @                          ���        @
                       @                                                                                                           
    @                  ���     ��                                     .ISorterGateClosed        @                          ���        @
                       @         ��� �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  X   , � � ��           VC_PackMLStates �/N^
    @����d2N^J   n   >                                                                                                       
    @         K�     �  �� �� �^  ^  ^  ���     ���                           @                         B    ���        @
                                                                                                                               
    @          �� hx   ���     ���                                             @                          ���        @
                       @                                                                                                          
    @        � A� ,  ���     ���                                    $PackML$.eState = 4       Stopping @                          ���        @
                       @                                                                                                          
    @        
 Z o � < n   ���     ���                                    $PackML$.eState = 6       Idle @                           ���        @
                       @                                                                                                          
    @        � � � � �   ���     ���                                    $PackML$.eState = 11       Un-Suspending @                          ���        @
                       @                                                                                                          
    @        b�A�,  ���     ���                                    $PackML$.eState = 0       Aborting @                          ���        @
                       @                                                                                                          
    @        �1A�,  ���     ���                                    $PackML$.eState = 1       Aborted @                          ���        @
                       @                                                                                                           
    @        �J�_IT  ���     ���                                        .fbStateModel.eState    State: %s @                      	    ���        @
                       @                                                                                                          
    @        6�Ah,  ���     ���                                    $PackML$.eState = 2       Clearing @                      
    ���        @
                       @                                                                                                          
    @        
 o A< ,  ���     ���                                    $PackML$.eState = 3       Stopped @                          ���        @
                       @                                                                                                          
    @        
 � o � < �   ���     ���                                    $PackML$.eState = 5       Resetting @                          ���        @
                       @                                                                                                          
    @        � Z � � n   ���     ���                                    $PackML$.eState = 7       Starting @                          ���        @
                       @                                                                                                          
    @        6Z �� hn   ���      ��                                    $PackML$.eState = 8       Execute @                          ���        @
                       @                                                                                                          
    @        �Z 1� �n   ���     ���                                    $PackML$.eState = 15       Completing @                          ���        @
                       @                                                                                                          
    @        bZ �� �n   ���     ���                                    $PackML$.eState = 16       Completed @                          ���        @
                       @                                                                                                          
    @        6� �� h�   ���     ���                                    $PackML$.eState = 10       Suspended @                          ���        @
                       @                                                                                                          
    @        �� 1� ��   ���     ���                                    $PackML$.eState = 9       Suspending @                          ���        @
                       @                                                                                                          
    @        �
 13 �   ���     ���                                    $PackML$.eState = 12       Holding @                          ���        @
                       @                                                                                                          
    @        6
 �3 h   ���     ���                                    $PackML$.eState = 13       Held @                          ���        @
                       @                                                                                                          
    @        � 
 3 �    ���     ���                                    $PackML$.eState = 14       Un-Holding @                          ���        @
                       @                                                                                                          
    @         ��� �����  ���       �   �                       @                        $PackML$.bAbortC    ���        @
                                                                                                                               
    @        {� ��    ���      ��                                    $PackML$.bAbort    	   Abort @                          ���       MS Sans Serif @
                       @                                                                                                          
    @         � � � � � � � �   ���       �   �                       @                        $PackML$.bStop    ���        @
                                                                                                                               
    @        � � � � �     ���      ��                                    $PackML$.bStop       Stop @                          ���       MS Sans Serif @
                       @                                                                                                          
    @         (� � � � � J� J� E� O� J� J�   ���     ���   �                       @                        $PackML$.bSCD    ���        @
                                                                                                                               
    @        � � 
� � �     ���      ��                                    $PackML$.bSC       SC @                          ���       MS Sans Serif @
                       @                                                                                                          
    @         (N � 2 � K JK JZ EP OP JZ JZ   ���     ���   �                       @                        $PackML$.bSC     ���        @
                                                                                                                              
    @         �? |Z |K K 2 �< < 2 2   ���     ���   �                       @                        $PackML$.bHold!    ���        @
                                                                                                                               
    @        �< �L �D     ���      ��                                    $PackML$.bHold       Hold @                      "    ���       MS Sans Serif @
                       @                                                                                                          
    @         ;,b,0,:':10,0,  ���     ���   �                       @                        $PackML$.bSCE    ���        @
                                                                                                                              
    @         2 � 2 2 � 7 � - � 2 � 2 �   ���     ���   �                       @                        $PackML$.bResetF    ���        @
                                                                                                                              
    @         � n n n � n � i � s � n � n   ���     ���   �                       @                        $PackML$.bStartG    ���        @
                                                                                                                              
    @         � 36,","T� T� ,n ,x 'x 1n ,� ,� ,  ���     ���   �                       @                        $PackML$.bSCH    ���        @
                                                                                                                               
    @        � < L � D     ���      ��                                    $PackML$.bSC       SC @                      %    ���       MS Sans Serif @
                       @                                                                                                          
    @         �� |� |� � � �� � � �   ���     ���   �                       @                        $PackML$.bSuspend&    ���        @
                                                                                                                               
    @        �� �� ��     ���      ��                                    $PackML$.bSuspend       Suspend @                      '    ���       MS Sans Serif @
                       @                                                                                                           
    @        x � -� %    ���      ��                                    $PackML$.bSC       SC @                      (    ���       MS Sans Serif @
                       @                                                                                                           
    @        :Y-I%    ���      ��                                    $PackML$.bSC       SC @                      )    ���       MS Sans Serif @
                       @                                                                                                          
    @         �,�,�,�'�1�,�,  ���     ���   �                       @                        $PackML$.bClear*    ���        @
                                                                                                                               
    @        ��-�%    ���      ��                                    $PackML$.bClear    	   Clear @                      +    ���       MS Sans Serif @
                       @                                                                                                          
    @         *n n 6n ,i ,s 6n 6n   ���     ���   �                       @                        $PackML$.bSC,    ���        @
                                                                                                                               
    @        	_ (o g     ���      ��                                    $PackML$.bSC       SC @                      -    ���       MS Sans Serif @
                       @                                                                                                           
    @        n _ � o � g     ���      ��                                    $PackML$.bStart    	   Start @                      .    ���       MS Sans Serif @
                       @                                                                                                           
    @        # � L 
7     ���      ��                                    $PackML$.bReset    	   Reset @                      /    ���       MS Sans Serif @
                       @                                                                                                          
    @         �� �� �� �� �� �� ��   ���     ���   �                       @                        $PackML$.bSC0    ���        @
                                                                                                                               
    @        �� �� ��     ���      ��                                    $PackML$.bSC       SC @                      1    ���       MS Sans Serif @
                       @                                                                                                          
    @         � � � � �# � �   ���     ���   �                       @                        $PackML$.bSC2    ���        @
                                                                                                                               
    @        � � �     ���      ��                                    $PackML$.bSC       SC @                      3    ���       MS Sans Serif @
                       @                                                                                                          
    @         � 6� � � � � �   ���     ���   �                       @                        $PackML$.bUn_Suspend4    ���        @
                                                                                                                               
    @        � 7� �     ���      ��                                    $PackML$.bUn_Suspend       Un-Sus
pend @                      5    ���       MS Sans Serif @
                       @                                                                                                          
    @          6   #     ���     ���   �                       @                        $PackML$.bUn_Hold6    ���        @
                                                                                                                               
    @         7      ���      ��                                    $PackML$.bUn_Hold       Un-Hold @                      7    ���       MS Sans Serif @
                       @                                                                                                          
    @         �n �n �n �i �s �n �n   ���     ���   �                       @                        $PackML$.bComplete8    ���        @
                                                                                                                               
    @        �_ �o �g     ���      ��                                    $PackML$.bComplete       Complete @                      9    ���       MS Sans Serif @
                       @                                                                                                          
    @         Vn 0n bn Xi Xs bn bn   ���     ���   �                       @                        $PackML$.bSC:    ���        @
                                                                                                                               
    @        5_ To Dg     ���      ��                                    $PackML$.bSC       SC @                      ;    ���       MS Sans Serif @
                       @                                                                                                          
    @         2 � 2 � 2 � 7 � - � 2 � 2 �   ���     ���   �                       @                        $PackML$.bSC<    ���        @
                                                                                                                               
    @        - � L � < �     ���      ��                                    $PackML$.bSC       SC @                      =    ���       MS Sans Serif @
                       @                                                                                                          
    @         h� �� �� 2 � 2 �   ���     ���   �                       @                     )   $PackML$.bReset OR $PackML$.Ack_CompletedI    ���        @
                                                                                                                               
    @        � @� !�     ���      ��                                    $PackML$.bReset       Reset OR @                      >    ���       MS Sans Serif @
                       @                                                                                                           
    @        ?� �� o�     ���      ��                                    $PackML$.bAck_Completed       Ack Completed @                      ?    ���       MS Sans Serif @
                       @                                                                                                           
    @        
 
 y 3 A      ���     ���                                            PackML
state model @                      A    ���       MS Sans Serif @                       @           PackML    :                     	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   �η �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ^   , _ l ��           VC_PANEL_MACHINECONTROL �/N^
    @�����/N^   �                                                                                                         
    @           V B + -   ���     ��                                     .I_Btn_EStop       Emergency
Stop @                           ���        @
    .I_Btn_EStop                 @                                                                                                          
    @        Z  � B � -   ���     ��                                     .IRun    	   Start @                          ���        @
    .IRun   .I_Btn_Start             @                                                                                                          
    @          F V e + U   ���     ��                                     .I_Btn_Reset    	   Reset @                          ���        @
        .I_Btn_Reset             @                                                                                                           
    @             � 
   ���     ���                                            Machine Control Panel @                          ���       MS Sans Serif @                       @                                                                                                           
    @        d x � � �   ���     ���                                        .fbStateModel.eMode    Mode : %s @                          ���        @
                       @                                                                                                           
    @        d � � � �   ���     ���                                        .fbStateModel.eState    State : %s @                          ���        @
                       @                                                                                                         
    @          n ` � 0 �        ���     ��� ���        VC_Panel_ModeSelector                                          ���        @
                                               @                                                                                                                   
    @        i _ � o � g    ���     ���                                            Running @                      	    ���        @
                       @                                                                                                           
    @        � _ � o � g    ���     ���                                            Stopped @                      
    ���        @
                       @                                                                                                          
    @        n F � e � U   ���      �                                     .O_Light_Start        @                          ���        @
                       @                                                                                                          
    @        � F � e � U   ���     �                                      .O_Light_Stop        @                          ���        @
                       @                                                                                                         
    @        K 7 V B P <        ���     ��� ���     	   VC_sensor                                         ���        @
                                               @         VAR        .IEmergencyClear                                                                                                     
    @        �  B � -   ���     ��                                     .IRun       Stop @                          ���        @
    .IRun
   I_Btn_Stop             @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  \   , 8h           VC_PANEL_MODESELECTOR �/N^
    @�����/N^   �                                                                                                         
    @           t . : !   ���     ��                                     .HMI_uModeReq=3    
   Manual @                          ���        @
                  "   INTERN ASSIGN HMI_uModeReq:=(3) @                                                                                                           
    @            t  : 
   ���     ���                                            Mode Select @                          ���       MS Sans Serif @
                       @                                                                                                          
    @          - t G : :   ���     ��                                     .HMI_uModeReq=1       Automatic @                          ���        @
                  "   INTERN ASSIGN HMI_uModeReq:=(1) @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ]   , ��!s           VC_PIPE �/N^
    @�����/N^   d   	                                                                                                       
    @         � Z 
 2 ^d ^� 
 P   ���     ���                           @                             ���        @
                                                                                                                               
    @        JF ie YU   ���     ���                                NOT .IPressureApplied            @                           ���        @
                       @                                                                                                           
    @        Td _� Tn    ��     �                               2   NOT $FB$.o_bGateIsClosed  OR NOT .IPressureApplied            @     Output cmd to open gate                    ���        @
    $FB$.i_bOpenGateCommand   $FB$.i_bOpenGateCommand             @                                                                                                           
    @        JZ Ue JZ   ���     ��                                     $FB$.o_bGateIsClosed        @     Gate is closed input                    ���        @
                       @                                                                                                           
    @          * 
 2 < 2    (  (   ���     ���                           @                        $FB$.i_bBallComingToPipe    ���        @
                                                                                                                              
    @        "Z Ay 1i   ���     ���                                    $FB$.o_bBallExistInThePipe        @                          ���        @
                       @                                                                                                           
    @        x  � 3 � (   ���     ���                                        $FB$.i_strPipeName   %s @                          ���        @
                       @                                                                                                           
    @        TF _e TP    ��     �                                  $FB$.o_bGateIsClosed            @     Output cmd to open gate                	    ���        @
    $FB$.i_bOpenGateCommand   $FB$.i_bOpenGateCommand             @                                            geMode = eMode_Automatic                                                              
    @        ^F �� wd     ���     ���                                             @                          ���        @
    $FB$.i_bOpenGateCommand                 @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  _   ,   N~        	   VC_sensor �/N^
    @�����/N^   d                                                                                                          
    @                  ���     ���                                    $VAR$        @                           ���        @
                       @           VAR               �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  (   , ��        
   VC_Var_Int �/N^
    @    �/N^   d                                                                                                          
    @            �  A 
   ��� ��� ���                                        $Name$	   %s :  @                           ���        @
                       @                                                                                                           
    @        �   �  � 
   ��� ��� ���                                        $VAR$   %d $unit$  @                          ���        @
                       @           Name              unit             VAR              �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����, . @ ��         #   STANDARD.LIB 16.8.17 14:08:57 @��1^      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @                            , U , k           2 � �               �{�{�{�{�{�{ .fbDrive.bMoveDone
 .fbDrive.bStart
 .fbDrive.bMoveDone
             ����  ��0��rPt        ����, � � L)                      POUs               Example                 EXAMPLES     ����              FBs                 FB_DriveMovement2  	                   FB_SimpleManager  `                   FB_StateModel_ST  
                   FB_Wait     ����           	   Processes                 PRG_ProcessAuto  p                   PRG_ProcessManual  |   ����              Programs                 PRG_Blinking                     PRG_Drive_Link                    PRG_Initialisation                     PRG_Sorting     ����           
   Simulation                 Simu_F_ClearBall  M                   Simu_F_MoveBall  L                   Simu_FB_CylinderModel  D                   Simu_FB_DriveModel  C                   Simu_PRG_Simulation  B   ����               MAIN                actAborting  �                  HMI_and_UI_Update                        PRG_HMI      ����           
   Data types              
   E_ModeCtrl  !                
   E_ModeProc  "                  E_State  #                   Simu_ST_Ball  J   ����              Visualizations            
   Components                 VC_BooleanStatus  $                   VC_Graph_Counters  %                   VC_Graph_Lift  &                   VC_Graph_Sorter  '                   VC_PIPE  ]                
   VC_Var_Int  (   ����              FBs_Visu                 FB_DriveMovement2  )                   FB_VC_Drive_Status  *   ����           
   Simulation                 Simu_VC_Virtual_Ball  K   ����           	   Simulator            
   Components              	   VC_sensor  _   ����              MachineComponents                 VC_Panel_MachineControl  ^                   VC_PANEL_MODESELECTOR  \   ��������              Visual Components                 VC_PackMLStates  X   ����                V_Drive  +                   V_MAIN  ,                  V_VIRTUAL_MACHINE  H   ����              Global Variables                 Global_Variables                     Global_Variables_CodeSys                     Global_Variables_TwinCAT                     Variable_Configuration     ����                                                              �e�?                         	   localhost            P      	   localhost            P      	   localhost            P          ����