CoDeSys+S   ?                   @        @   2.3.9.62?    @   ConfigExtension?          CommConfigEx7             CommConfigExEnd   ME?                  IB                    % QB                    %   ME_End   CM?      CM_End   CT?   ????????   CT_End   ConfigExtensionEnd?    @                                     XJ^ A   C:\TwinCAT\Plc\Upload\ @        ?               S?U   |C:\TwinCAT\Plc\Upload\VisuBmp\   C:\TwinCAT\Plc\Upload\PLCCONF\|3   @   @   C:\APPS\APP-V\CODESYS 2.3.9.62\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         ?HJ^  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??	           Load Start Value    PV           ??
           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             ?HJ^  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??	           Reset Counter to 0    PV           ??
           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             ?HJ^  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??
       
    Count Up    CD            ??           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             ?HJ^  ?   ????           DELETE               STR               ??              LEN           ??	              POS           ??
                 DELETE                                         ?HJ^  ?   ????           F_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             ?HJ^  ?   ????           FIND               STR1               ??	              STR2               ??
                 FIND                                     ?HJ^  ?   ????           INSERT               STR1               ??	              STR2               ??
              POS           ??                 INSERT                                         ?HJ^  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         ?HJ^  ?   ????           LEN               STR               ??                 LEN                                     ?HJ^  ?   ????           MID               STR               ??              LEN           ??	              POS           ??
                 MID                                         ?HJ^  ?   ????           R_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             ?HJ^  ?   ????           REPLACE               STR1               ??	              STR2               ??
              L           ??              P           ??                 REPLACE                                         ?HJ^  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         ?HJ^  ?   ????           RS               SET            ??              RESET1            ??	                 Q1            ??                       ?HJ^  ?   ????           RTC           M             ??              DiffTime            ??                 EN            ??              PDT           ??                 Q            ??              CDT           ??                       ?HJ^  ?   ????           SEMA           X             ??                 CLAIM            ??
              RELEASE            ??                 BUSY            ??                       ?HJ^  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??                       ?HJ^  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??       2    is FALSE, PT seconds after IN had a falling edge    ET           ??           elapsed time             ?HJ^  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??       0    is TRUE, PT seconds after IN had a rising edge    ET           ??           elapsed time             ?HJ^  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??           The pulse    ET           ??       &    The current phase of the High-Signal             ?HJ^  ?   ????                  FB_PACKMLSTATEMODEL_ST        	   RTrig_bSC                 R_TRIG   +        "   Rising trigger for State Completed   RTrig_StateChange                 R_TRIG   +           Rising trigger for State signal   bResetLocal             +            Paikallinen Reset	   bInitDone             + !          Initialisation      bResetFB            +           Resets whole FB   eModeReq               E_Mode  + 	          Requested mode   wIgnoreState           + 
       G   Ignoring states. See bit from E_PackMLState definition. Aborting = bit0   bSC            +           Step Completed acknoledgement   bAbort            +            Abortting signal = EmergencyStop   bClear            +           Clear signal   bReset            +           Reseting signal   bStart            +           Start signal   bHold            +           Hold signal   bUn_Hold            +           Un-Hold signal   bSuspend            +           Suspend signal   bUn_Suspend            +           Un-Suspend signal   bStop            +           Stop signal	   bComplete            +           Complete signal   bAck_Completed            +        "   Acknoledgement for Complete signal      eMode               E_Mode  +           Current mode   eState               E_PackMLState  +           Current state   strState               +           State as String            ^?Q\  @   ????           FB_PROCESS3           iProcessCount            H        !   Counter for demonstrating process   bLocalReset             H           Performs local reset   SFCReset             H        B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETSTEP                            _SFCRESETSTEP                            INITIALISATION                            _INITIALISATION                         	   DOINGINIT                         
   _DOINGINIT                            _timeDOINGINIT                           _starttimeDOINGINIT                           INITCOMPLETED                            _INITCOMPLETED                            MAINLOOP                         	   _MAINLOOP                            RUNNINGPROCESS                            _RUNNINGPROCESS                            _timeRUNNINGPROCESS                           _starttimeRUNNINGPROCESS                           PROCESSCOMPLETED                            _PROCESSCOMPLETED                            _timePROCESSCOMPLETED                           _starttimePROCESSCOMPLETED                           MOVETONEXTROUND                            _MOVETONEXTROUND                         	   UPDATEIOS                         
   _UPDATEIOS                               bReset            H           Reset Request   packML_State               E_PackMLState  H               packML_Mode               E_Mode  H               	   bInitDone            H           Initialisation completed   bStopOK            H 	          Stopping OK            ^?Q\  @   ????           FB_SFC_EXAMPLE           bLocalReset             3           Performs local reset   SFCReset             3 	       B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            MAINLOOP                         	   _MAINLOOP                         	   UPDATEIOS                         
   _UPDATEIOS                            SFCRESETSTEP                            _SFCRESETSTEP                               bReset            3           Reset Request                ^?Q\  @   ????           PRG_APPLICATION        	   bInitDone             0                                ^?Q\  @   ????           PRG_BLINKING     	   	   bInitDone                        Ohjelman initialisointi   TP_Delay                   TP              Nopein taajuus / 2 tuottaja   bBaseHz                        Nopein taajuus/2   iBaseHz                      Base taajuus (Hz)   RTRIG_2Hz_Sign                 R_TRIG              2Hz signaalin generointi   RTRIG_1Hz_Sign                 R_TRIG              1Hz signaalin generointi   RTRIG_0_5Hz_Sign                 R_TRIG              0,5Hz signaalin generointi   tBaseTaajuus                    "   Base vilkutuksen timerin arvo. f/2   fPLC_CYCLE_TIME                                    PLC:n cycli aika. Sekunttia          bSign4Hz             	       0   4 Hz (240krt/min) taajudella vaihteleva signaali   bSign2Hz             
       0   2 Hz (120krt/min) taajudella vaihteleva signaali   bSign1Hz                    /   1 Hz (60krt/min) taajudella vaihteleva signaali
   bSign0_5Hz                    1   0,5 Hz (30krt/min) taajudella vaihteleva signaali            ^?Q\  @   ????           PRG_INITIALISATION           SFCReset             7 
       B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETTING                            _SFCRESETTING                         
   MAKEHOMING                            _MAKEHOMING                            INITDONE                         	   _INITDONE                               bReset            7           Performs reset   	   bInitDone            7           Initialisation is completed            ^?Q\  @   ????           PRG_MAIN           TON_Reset_Long                    TON   	               TON_Reset_System                    TON   	               tonStarting                    TON   	               bBlink             	        "   1s blinking for CodeSys Simulation   c            	           Support variable for blinking
   fbProcess3        $                                          FB_Process3   	        #   FB Instance representing Process 3                     ^?Q\  @   ????           PRG_MAIN_SAMPLE           bBlink             ,            1s blinkg for CodeSys Simulation   c            ,           Support variable for blinking                    ^?Q\  @   ????           PRG_PRODUCTION1           iCycleCount            / 
          Cycle counter      bReset            /           Performs reset      bStopOK            /           Stopping OK            ^?Q\  @   ????           PRG_PRODUCTION2           iCycleCount            < 
          Cycle counter      bReset            <           Performs reset      bStopOK            <           Stopping OK            ^?Q\  @   ????           PRG_SIMU           c                                            ^?Q\  @   ????            
 ?        <      H   /   *   7   ( ?5      K   ?5     K   ?5     K   ?5     K   ?5                 6         +     ??localhost "ژrw           8?fH "`"h?k@"H?  ? ?? $? ?q?w߬?{???????w???w    
?@             
?@     ? tV?  pk   X?k?? #??w`?kF  ?? ?? ??? ????    ??]@?           
?@ 4?     
?@            
?@     ? tV? ? ?? tV? ??b?????? }?     ,   ,                                                        K        @   ^?Q\?N     , ? ? ?
        !      @     CoDeSys 1-2.2   ????  ????????                                ?      
   ?         ?         ?          ?                    "          $                                                   '          (          ?          ?          ?          ?          ?         ?          ?          ?          ?         ?          ?          ?          ?          ?         ?      ?   ?       P  ?          ?         ?       ?  ?                    ~          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?       @  ?       @  ?       @  ?       @  ?       @  ?       @  ?         ?         ?          ?       ?  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         ?          ?         ?      
   ?         ?         ?         ?         ?         ?          ?          ?         ?      ?????          ?          ?      (                                                                        "         !          #          $         ?          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          ?          ?          l          o          p          q          r          s         u          ?          v         ?          ?      ????|         ~         ?         x          z      (   ?          ?         %         ?          ?          ?         @         ?          ?          ?         &          ?          	                   ?          ?          ?         ?          ?         ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?                            I         J         K          	          L         M          ?                             ?          P         Q          S          )          	          	          ?           	          +	       @  ,	       @  -	      ????Z	      ????[	      ????????        ????????????  ????????                                                   ?  	   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ????
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             ????   Index-Offset                 ??         SubIndex-Offset                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          ?  	   	   Name                 ????   Member    	             ????
   Value                Member    
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          ?  	   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ????
   Value                Variable       Min                Variable       Max                Variable                         ????  ????????               ?   _Dummy@    @   @@    @   @             ??@             ??@@   @     ?v@@   ; @+   ????  ????????                                  ?v@      4@   ?             ?v@      D@   ?                       ?       @                           ?f@      4@     ?f@                ?v@     ?f@     @u@     ?f@        ???           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    ^?Q\	^?Q\                       VAR_GLOBAL
END_VAR
                                                                                  "   , V \ ?             Standard
        PRG_MAIN();????               ^?Q\                 $????, ? ? ?s               ?X?Z[?Z           Standard S?U	S?U      ?AJ?G?9                         	^?Q\     S     ?            VAR_CONFIG
END_VAR
                                                                                   '               , -b a           Global_Variables ^?Q\	^?Q\      d6??           -
  VAR_GLOBAL
(* -------------INPUTS-------------------*)
	I_Btn_Reset			(*AT %I* *)		:BOOL;	(*Reset button*)
	I_Btn_Start			(* AT %I* *)	:BOOL;	(*Start button*)
	I_Btn_Stop			(* AT %I* *)	:BOOL;	(*Stop button*)
	I_EStopClear 		(* AT %I* *)	:BOOL :=TRUE;	(*EStop is cleared*)
	I_CoversClosed 		(* AT %I* *)	:BOOL :=TRUE;	(*Covers are completely closed*)

(* -------------OUTPUTS-------------------*)
	O_LightON_up 		(* AT %Q* *)	:BOOL;	(*Light ON - Up*)
	O_LightON_low 		(* AT %Q* *)	:BOOL;	(*Light ON - Lower*)
	OuLight_up 			(* AT %Q* *)	:INT;	(*Light Analog - Up*)
	OuLight_low 		(* AT %Q* *)	:INT;	(*Light Analog - Lower*)
	O_Light_Start 		(* AT %Q* *)	:BOOL;	(*Light Button Start*)
	O_Light_Stop 		(* AT %Q* *)	:BOOL;	(*Light Button Stop*)
	O_Light_Warning 		(* AT %Q* *):BOOL;	(*Light Button Warning*)
	O_Light_Error 		(* AT %Q* *)	:BOOL;	(*Light Button Error*)
	O_RelayStop 			(* AT %Q* *):BOOL;	(*Relay out : Stop*)
	O_RelayEStop			(* AT %Q* *):BOOL;	(*Relay out : EStop*)
	O_RelayEnableLED_Pwr_Along	(* AT %Q* *):BOOL;	(*Relay out : Enable LED power along belt*)

	bReset_System		: BOOL;			(*System reset*)
	bReset_System_Long	: BOOL;			(*System reset - Long*)
	bReqShutdown		: BOOL;			(*Request shutdown*)
	bDisplayOn			: BOOL;			(*Display on*)

(* -------------HMI INPUTS (from HMI to PLC) -------------------*)
	HMI_wControlWord	: WORD;			(*Control bits: 0=*)
	HMI_uModeReq		: UINT :=5;		(*Mode request. DEFAULT:PRODUCTION1*)

(* -------------HMI OUTPUTS (from PLC to HMI) -------------------*)
	PLC_wStatusWord		: WORD;			(*Status bits: 0=*)
	PLC_uModeCurrent	: UINT;			(*Current Mode*)
	PLC_uStateCurrent	: UINT;			(*Current State*)
	fAngle1				: REAL := 50;	(*Process: Angle1*)
	fAngle2				: REAL := 90;	(*Process: Angle2*)


(*-----------------------FUNCTION BLOCKS----------------*)
	fbStateModel		: FB_PackMLStateModel_ST;	(*FB for executing PackML state model*)

(*-----------------------OTHER GLOBAL VARS ----------------*)
	uCounterPosCurr_SIMU	: UDINT;	(*Current Counter position*)

END_VAR

(*------------------------- PERSISTENT VARIABLES --------------------------------*)
VAR_GLOBAL PERSISTENT

END_VAR

(*------------------------- CONSTANT VARIABLES --------------------------------*)
VAR_GLOBAL CONSTANT
(*-----------------------Setup Constants----------------------------*)
	bSIMU			: BOOL 	:= TRUE;	(*In simulation mode*)

(*-----------------------TIME Constants----------------------------*)
	TRESET_SYSTEM	: TIME := T#3s;		(*Delay for System Reset*)
	TRESET_LONG		: TIME := T#10s;	(*Delay for Long Reset*)

END_VAR
                                                                                               '              ,  ? ??           Variable_Configuration ^?Q\	^?Q\     d6??              VAR_CONFIG
END_VAR
                                                                                                 ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               4     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             System      ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '             ,  , ?X           E_Mode ^?Q\	^?Q\      8 ? 8??        ?   TYPE E_Mode :
(*UserModes: Modes for different production states*)
(
	eMode_undefined := 0,
	eMode_Automatic :=1,
	eMode_Manual :=3,
	eMode_Production1 :=5,
	eMode_Production2 :=6
);
END_TYPE                , N 3 ?+        
   E_ModeProc ^?Q\	^?Q\          Z           ?   TYPE E_ModeProc :
(*Procedural control modes. Can be changed in any state*)
(
	eModeProc_undefined := 0,
	eModeProc_Automatic :=1,
	eModeProc_SemiAutomatic :=2,
	eModeProc_Manual :=3
);
END_TYPE             .   , 94 E?           E_PackMLState ^?Q\	^?Q\      hS  ?          K  TYPE E_PackMLState :
(*PackML States*)
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
END_TYPE              +   , @??X           FB_PackMLStateModel_ST ^?Q\	^?Q\      Abti :0;          FUNCTION_BLOCK FB_PackMLStateModel_ST
(*PackML State model implementation for applications.
Author: Niko Siltala, niko.siltala@tut.fi, Tampere University of Technology / MEI
Date: 2016-12-12
Version: 1.0
*)
VAR_INPUT
	bResetFB	: BOOL;		(*Resets whole FB*)
	eModeReq	: E_Mode;	(*Requested mode*)
	wIgnoreState: DWORD;	(*Ignoring states. See bit from E_PackMLState definition. Aborting = bit0*)
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
	eMode	: E_Mode;		(*Current mode*)
	eState	: E_PackMLState;(*Current state*)
	strState : STRING(15);		(*State as String*)
END_VAR
VAR
	RTrig_bSC		: R_TRIG; 		(*Rising trigger for State Completed*)
	RTrig_StateChange : R_TRIG; 	(*Rising trigger for State signal*)
	bResetLocal		: BOOL:=FALSE;	(*Paikallinen Reset*)
	bInitDone		: BOOL;			(*Initialisation*)
END_VAR  IF bResetFB THEN	(*Reseting FB*)
	bInitDone := FALSE;
END_IF;

(*Initialisation*)
IF NOT bInitDone THEN
	eState:= eSt_Aborting;
	strState:='Aborting';
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
	strState:='Aborting';
	IF bSC THEN
		eState:=eSt_Aborted;
	END_IF;

eSt_Aborted:
	strState:='Aborted';
	eMode:=eModeReq;	(*Change Mode allowed*)
	IF bClear AND NOT bAbort THEN
		eState:=eSt_Clearing;
	END_IF;

eSt_Clearing:
	strState:='Clearing';
	IF bAbort THEN
		eState:=eSt_Aborting;
	ELSIF bSC THEN
		eState:=eSt_Stopped;
		RTrig_StateChange(CLK:=bReset , Q=> );
	END_IF;

eSt_Stopping:
	strState:='Stopping';
	IF bSC THEN
		eState:=eSt_Stopped;
		RTrig_StateChange(CLK:=bReset , Q=> );
	END_IF;

eSt_Stopped:
	strState:='Stopped';
	eMode:=eModeReq;	(*Change Mode allowed*)
	RTrig_StateChange(CLK:=bReset , Q=> );
(*	ELSIF NOT bStop AND (RTrig_StateChange.Q OR (wIgnoreState.5 AND bStart) ) THEN*)
	IF NOT bStop THEN	(*Stop signal is not active.*)
		IF wIgnoreState.5 AND bStart THEN	(*Reset state is ignored and going directly to start *)
			eState:=eSt_Idle;
(*		ELSIF RTrig_StateChange.Q THEN 	(*Rising edge for reset*)*)
		ELSIF bReset THEN 	(*Reset*)
			eState:=eSt_Resetting;
		END_IF;
	END_IF;

eSt_Resetting:
	strState:='Resetting';
	IF bSC OR wIgnoreState.5 THEN
		eState:=eSt_Idle;
	END_IF;

eSt_Idle:
	strState:='Idle';
	eMode:=eModeReq;	(*Change Mode allowed*)
	IF bStart OR wIgnoreState.6 THEN (* IDLE state is ignoered*)
		eState:=eSt_Starting;
	END_IF;

eSt_Starting:
	strState:='Starting';
	IF bSC OR wIgnoreState.7 THEN (* STARTING state is ignoered*)
		eState:=eSt_Execute;
	END_IF;

eSt_Execute:
	strState:='Execute';
	IF bComplete THEN
		eState:=eSt_Completing;
	ELSIF bHold THEN
		eState:=eSt_Holding;
	ELSIF bSuspend THEN
		eState:=eSt_Suspending;
	END_IF;

eSt_Holding:
	strState:='Holding';
	IF bSC THEN
		eState:=eSt_Held;
	END_IF;

eSt_Held:
	strState:='Held';
	IF bUn_Hold AND NOT bHold THEN
		eState:=eSt_UnHolding;
	END_IF;

eSt_UnHolding:
	strState:='Un-Holding';
	IF bSC THEN
		eState:=eSt_Execute;
	END_IF;

eSt_Suspending:
	strState:='Suspending';
	IF bSC THEN
		eState:=eSt_Suspended;
	END_IF;

eSt_Suspended:
	strState:='Suspended';
	IF bUn_Suspend AND NOT bSuspend THEN
		eState:=eSt_Unsuspending;
	END_IF;

eSt_Unsuspending:
	strState:='Un-Suspending';
	IF bSC THEN
		eState:=eSt_Execute;
	END_IF;

eSt_Completing:
	strState:='Completing';
	IF RTrig_bSC.Q THEN
		eState:=eSt_Completed;
	END_IF;

eSt_Completed:
	strState:='Completed';
	IF bReset OR bAck_Completed THEN
		eState:=eSt_Resetting;
	END_IF;

ELSE
	(*Default error handler. Undefined state set*)
	eState:=eSt_Aborting;
END_CASE;


               H   ,  ??D?           FB_Process3 ^?Q\	^?Q\      ????????        ?  FUNCTION_BLOCK FB_Process3
VAR_INPUT
	bReset		: BOOL;	(*Reset Request*)
	packML_State	: E_PackMLState;
	packML_Mode	: E_Mode;
END_VAR
VAR_OUTPUT
	bInitDone		: BOOL; 	(*Initialisation completed*)
	bStopOK		: BOOL;	(*Stopping OK*)
END_VAR
VAR
	iProcessCount	: INT := 0;	(*Counter for demonstrating process*)
	bLocalReset	: BOOL;	(*Performs local reset*)
	SFCReset 	: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init I     ????????           Action Init ߙQ\>   SFCReset := FALSE;
bLocalReset	:= FALSE;
bInitDone := FALSE;    
   NOT bReset           WaitForSFCReset         bLocalReset OR bReset         SFCResetStep J     ????????           Action SFCResetStep ߙQ\   SFCReset := TRUE;            Initialisation      -   packML_State = eSt_Starting AND NOT bInitDone      	   DoingInitT#5s  K     ????????           Action DoingInit ߙQ\   iProcessCount := 0;   P     ????????           Action DoingInit - Exit ߙQ\   bStopOK := TRUE;
   TRUE         InitCompleted   Q     ????????           Action InitCompleted - Entry ߙQ\   bInitDone := TRUE;     NOT bInitDone     Initialisation        MainLoop     M     ????????           Action MainLoop - Exit ߙQ\   bStopOK  := FALSE;,   bInitDone AND (packML_State > eSt_Starting )         RunningProcessT#2s    N     ????????           Action RunningProcess - Entry ߙQ\#   iProcessCount := iProcessCount + 1;       iProcessCount >= 5         ProcessCompletedT#1s  O     ????????           Action ProcessCompleted ߙQ\(   bStopOK  := TRUE;
iProcessCount := 0;
       bStopOK      TRUE         MoveToNextRound         TRUE     RunningProcess   MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       FALSE     Initd                  3   , K K ?P           FB_SFC_Example ^?Q\	^?Q\      ????????          FUNCTION_BLOCK FB_SFC_Example
VAR_INPUT
	bReset		: BOOL;	(*Reset Request*)
END_VAR
VAR_OUTPUT
END_VAR
VAR
	bLocalReset	: BOOL;	(*Performs local reset*)
	SFCReset 	: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init 4     ????????           Action Init hrQ\)   SFCReset := FALSE;
bLocalReset	:= FALSE;    
   NOT bReset           WaitForSFCReset              MainLoop         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       bLocalReset OR bReset         SFCResetStep 5     ????????           Action SFCResetStep hrQ\   SFCReset := TRUE;       FALSE     Initd                  0   ,  ?E           PRG_Application ^?Q\	^?Q\      ib*.b@cr        9   PROGRAM PRG_Application
VAR
	bInitDone	: BOOL;
END_VAR?  (*Application specific program routine.*)
(* It can utilise the same main state model and modes also internally, and filtter
its execution conditions according that information. Alternative option is to call
this program from Main, but only when certain conditions are met. Then special care 
should be taken what the outputs are when it is NOT called!.*)


(*Initialisation procedures*)
IF NOT bInitDone THEN
	(*TODO: Do some init actions*)
	bInitDone:=TRUE;
END_IF;

(*Mode and state analysis*)
(*Execution mode*)
IF bSIMU THEN
	PRG_SIMU();
END_IF;


IF (fbStateModel.eState >= eSt_Stopped) THEN
	(*State is equal or above Stopped*)			(*TODO: Remove/Replace this row with desired actions*)
	CASE fbStateModel.eMode OF
		(*MODE: MANUAL*)
		eMode_Manual:
			(*TODO: Do some actions in manual mode*)
			(*E.g. calling some other PRG or FB implementing manual operations*)
			;									(*TODO: Remove/Replace this row with desired actions*)

		(*MODE: AUTOMATIC*)
		eMode_Automatic:
			(*TODO: Do some actions in automatic mode*)
			(*E.g. calling some other PRG or FB implementing automatic operations*)
			;									(*TODO: Remove/Replace this row with desired actions*)
		ELSE	(*Error*)
			; (*TODO*)
	END_CASE;
END_IF;


(*Enable LED powers*)
O_RelayEnableLED_Pwr_Along := (fbStateModel.eState >= eSt_Stopped);	(*TODO: Remove/Replace this row with desired actions*)


(*Clear LED output values in case 'low' states *)
IF (fbStateModel.eState <= eSt_Clearing) THEN
	(*TODO: Actions for clearing states *)
	(*UP*)
	O_LightON_up := FALSE;				(*TODO: Remove/Replace this row with desired actions*)
	OuLight_up := 0;					(*TODO: Change...*)
	(*Low*)
	O_LightON_low := FALSE;				(*TODO: Change...*)
	OuLight_low := 0;
END_IF;

                  ,     ??           PRG_Blinking ^?Q\	^?Q\      ;Bu;Do        -  PROGRAM PRG_Blinking
(*Avustavia laskentaoperaatioita
- vilkutussignaalit
Author: Niko Siltala, niko.siltala@tut.fi, Tampere University of Technology / MEI
Date: 2016-12-12
Version: 1.0
*)
VAR_OUTPUT
	bSign4Hz:BOOL;					(*4 Hz (240krt/min) taajudella vaihteleva signaali*)
	bSign2Hz:BOOL;					(*2 Hz (120krt/min) taajudella vaihteleva signaali*)
	bSign1Hz:BOOL;					(*1 Hz (60krt/min) taajudella vaihteleva signaali*)
	bSign0_5Hz:BOOL;				(*0,5 Hz (30krt/min) taajudella vaihteleva signaali*)
END_VAR
VAR
	bInitDone	: BOOL	:=FALSE;	(*Ohjelman initialisointi*)
	TP_Delay:TP;				(*Nopein taajuus / 2 tuottaja*)
	bBaseHz:BOOL:=FALSE;		(*Nopein taajuus/2*)
	iBaseHz:UINT:=4;				(*Base taajuus (Hz)*)
	(*RTRIG_BASE: R_TRIG;		(*Base signaali nousee*)*)
	RTRIG_2Hz_Sign : R_TRIG;		(*2Hz signaalin generointi*)
	RTRIG_1Hz_Sign : R_TRIG;		(*1Hz signaalin generointi*)
	RTRIG_0_5Hz_Sign : R_TRIG;	(*0,5Hz signaalin generointi*)
	tBaseTaajuus:TIME;			(*Base vilkutuksen timerin arvo. f/2*)
	fPLC_CYCLE_TIME: LREAL;	(*PLC:n cycli aika. Sekunttia*)

END_VAR?  (*Ohjelman initialisoinnit - Suoritetaan vain kertaalleen*)
IF NOT bInitDone THEN
	(*fPLC_CYCLE_TIME := UDINT_TO_LREAL(SystemTaskInfoArr[1].cycleTime) / 10E6; (*[s]*)*)
	fPLC_Cycle_Time := 1;	(*[s]*)
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
END_IF;               7   , 2 2 ?           PRG_Initialisation ^?Q\	^?Q\      ????????        U  PROGRAM PRG_Initialisation
(*Example program to demonstrate imagenary Initialisation and Homing process*)
VAR_INPUT
	bReset		: BOOL;	(*Performs reset*)
END_VAR
VAR_OUTPUT
	bInitDone	: BOOL;	(*Initialisation is completed*)
END_VAR
VAR
	SFCReset 	: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init 8     ????????           Action Init ?_wX$   SFCReset := FALSE;
bReset	:= FALSE;    
   NOT bReset           WaitForSFCReset         bReset         SFCResetting 9     ????????           Action SFCResetting ?_wX   SFCReset := TRUE;         
   MakeHoming :     ????????           Action MakeHoming ?_wX_  bInitDone := FALSE;
(*Return pointer1 to home. CCW rotation*)
fAngle1 := fAngle1 - 0.5;
IF fAngle1 <= 0 THEN
	fAngle1 := 0;
END_IF;

(*Return pointer2 to home. CCW rotation*)
IF fAngle2 <> 0 THEN
	IF fAngle2 < 0 THEN
		fAngle2 := fAngle2 + 360;
	END_IF;
	fAngle2 := fAngle2 - 0.5;
	IF fAngle2 <= 0 THEN
		fAngle2 := 0;
	END_IF;
END_IF;       fAngle1=0 AND fAngle2=0         InitDone   ;     ????????           Action InitDone - Entry ?_wX   bInitDone := TRUE;     FALSE  
   MakeHoming       FALSE     Initj                  	   , w h6           PRG_MAIN XJ^	^?Q\        ?qXF            PROGRAM PRG_MAIN
VAR
	TON_Reset_Long		: TON;
	TON_Reset_System	: TON;
	tonStarting			: TON;
	bBlink				: BOOL;	(*1s blinking for CodeSys Simulation*)
	c					: INT;	(*Support variable for blinking*)
	fbProcess3		: FB_Process3; (*FB Instance representing Process 3 *)
END_VAR?&  (* ****** Section 1: Initialisations and default values. Initial conditions for variables on every PLC cycle*)
fbStateModel.bSC := FALSE;
fbProcess3.packML_State := fbStateModel.eState;
fbProcess3.packML_Mode := fbStateModel.eMode;

PRG_MAIN_SAMPLE();

IF bSIMU THEN
	(*TODO set counter source*)
	;
END_IF;

(*System resets*)
TON_Reset_System(IN:=I_Btn_Reset,
		PT:=TRESET_SYSTEM ,
		Q=> , ET=> );		(*Simple Reset actions should happen after this*)
TON_Reset_Long(IN:=I_Btn_Reset,
		PT:=TRESET_LONG ,
		Q=>bReset_System_Long , ET=> );	(*Complete Reset actions should happen after this*)
bReset_System := TON_Reset_System.Q;

(* ****** Section 2: Grouping PackML states for calling Programs or FB instances.
This is to avoid repetition inside case structure in Section 3. With IF clause setting lower (and upper) state limits we can filter out the states when we want to call 
specific programs. The order of states is defined in Tab:Data types > E_PackMLState. eSt_Aborting is lowest and eSt_Completed is highest.
Here we filter calling programs, only when we are in higher states than Stopped. Inside IF there is again CASE which process each Control Mode separately.*)
(*Execution part. Making calls for program if we are on states above Stopped*)
IF (fbStateModel.eState > eSt_Stopped) THEN
	(*State is equal or above Stopped*)			(*TODO: Remove/Replace this row with desired actions*)
	CASE fbStateModel.eMode OF
		(*MODE: MANUAL*)
		eMode_Manual:
			(*TODO: Do some actions in manual mode*)
			(*E.g. calling some other PRG or FB implementing manual operations*)
			;									(*TODO: Remove/Replace this row with desired actions*)

		(*MODE: PRODUCTION1*)
		eMode_Production1:
			(*TODO: Do some actions in production1 mode*)
			(*E.g. calling some other PRG or FB implementing automatic operations*)
			PRG_Production1();					(*TODO: Remove/Replace this row with desired actions*)
			;									(*TODO: Remove/Replace this row with desired actions*)
			(*Calling Process 3*)
			fbProcess3(
				bReset:= FALSE);

		(*MODE: PRODUCTION2*)
		eMode_Production2:
			(*TODO: Do some actions in production2 mode*)
			(*E.g. calling some other PRG or FB implementing automatic operations*)
			PRG_Production1();					(*TODO: Remove/Replace this row with desired actions*)
			PRG_Production2();					(*TODO: Remove/Replace this row with desired actions*)
		ELSE	(*Error*)
			; (*TODO*)
	END_CASE;
END_IF;

(* ****** Section 3: Actions in your program without considering the Control Mode. I.e. actions are performed same way indenpendent on
current Control Mode selection.*)
(*PackML state actions which are Mode independent*)
CASE fbStateModel.eState OF
eSt_Aborting:
	(*Make here possible power off or braking procedures. The same action could be called from multiple places.*)
	actAborting;
	PRG_Initialisation(bReset := TRUE);
	fbProcess3(
		bReset:= TRUE);
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Clearing:
	(*Make here clearing and reseting actions*)
	PRG_Initialisation(bReset := FALSE);
	fbProcess3(
		bReset:= FALSE);
	uCounterPosCurr_SIMU:=0;		(*TODO: Remove/Replace this row. It is for demo actions.*)
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Resetting:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Holding:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_UnHolding:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Suspending:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Unsuspending:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
END_CASE;

(* ****** Section 4: Actions in your program which are Control Mode specific. Two nested case structures where outer one selects the
control mode and inner the PackML state. In order to avoid conflicts, it would be better to process each PackML state either in Section 2 
or Section 3, but not in both. *)
(*PackML state actions related to User/Production mode *)
CASE fbStateModel.eMode OF
(*MODE: MANUAL*)
eMode_Manual:
	(* ****** Section 3.1: PackML state based processing actions when Control Mode is Manual.*)
	CASE fbStateModel.eState OF
	eSt_Idle:
		fbStateModel.bAck_Completed := FALSE;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Starting:
		fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completing:
		fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completed:
		fbStateModel.bAck_Completed := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Stopping:
		fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
	END_CASE;

(*MODE: PRODUCTION1*)
eMode_Production1:
	(* ****** Section 3.2: PackML state based processing actions when Control Mode is Production 1.*)
	CASE fbStateModel.eState OF
	eSt_Idle:
		fbStateModel.bAck_Completed := FALSE;			(*TODO: Remove/Replace this row with desired actions*)
		tonStarting(IN:=FALSE , PT:= , Q=> , ET=> );	(*TODO: Remove/Replace this row. It is for demo actions.*)
	eSt_Starting:
		tonStarting(IN:=TRUE , PT:=T#2s , Q=> , ET=> );	(*TODO: Remove/Replace this row. It is for demo actions.*)
		PRG_Initialisation(bInitDone=> );				(*TODO: Remove/Replace this row with desired actions*)
		fbStateModel.bSC := tonStarting.Q AND PRG_Initialisation.bInitDone AND fbProcess3.bInitDone;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completing:
		fbStateModel.bSC := PRG_Production1.bStopOK;			(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completed:
		;
		(*fbStateModel.bAck_Completed:= I_Btn_Start;*)
	eSt_Stopping:
		(*fbStateModel.bSC := TRUE;		*)(*TODO: Remove/Replace this row with desired actions*)
		fbStateModel.bSC := NOT PRG_Initialisation.bInitDone OR (PRG_Production1.bStopOK AND fbProcess3.bStopOK);	(*TODO: Remove/Replace this row with desired actions*)
	END_CASE;

(*MODE: PRODUCTION2*)
eMode_Production2:
	CASE fbStateModel.eState OF
	eSt_Idle:
		fbStateModel.bAck_Completed := FALSE;			(*TODO: Remove/Replace this row with desired actions*)
		tonStarting(IN:=FALSE , PT:= , Q=> , ET=> );	(*TODO: Remove/Replace this row. It is for demo actions.*)
	eSt_Starting:
		tonStarting(IN:=TRUE , PT:=T#0s , Q=> , ET=> );	(*TODO: Remove/Replace this row. It is for demo actions.*)
		PRG_Initialisation(bInitDone=> );				(*TODO: Remove/Replace this row with desired actions*)
		fbStateModel.bSC := tonStarting.Q AND PRG_Initialisation.bInitDone;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completing:
		fbStateModel.bSC := (PRG_Production1.bStopOK AND PRG_Production2.bStopOK);	(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completed:
		;
		(*fbStateModel.bAck_Completed:= I_Btn_Start;*)
	eSt_Stopping:
		fbStateModel.bSC := NOT PRG_Initialisation.bInitDone OR (PRG_Production1.bStopOK AND PRG_Production2.bStopOK);	(*TODO: Remove/Replace this row with desired actions*)
	END_CASE;

(*MODE: UNKNOWN*)
ELSE	(*This is an Error branch.*)
	; (*TODO: Make implementation*)
END_CASE;

(* ****** Section 5: Calling the fbStateModel instance.
Here the instance of state model is called and all triggering inputs are set, but bSC (State Completed), which you control in your programs. This is indication that your program 
has  finished certain stage.
- Pay attention where the instance fbStateModel is defined. Do you do it in global variables or e.g. here in PRG_MAIN? Important is to use the same instance in all places, so that
machine state is unique and shared. Remember, if you have multiple definitions, the PRG_MAIN "hides" the global one, and might lead to problems elswhere, when you think you 
are using the same instance, but actually are not. 
- In case you are using the PackML visualisation (VC_PackMLStates), make sure you connect its placeholder to the very same PackML FB instance.
- The Mask for wIgnoreState is created as following. I use binary base for the value(2#). The lowest bit in the mask corresponds the  eSt_Aborting in E_PackMLState.
The next is eSt_Aborted, and so on. Specific state is ignored and jumped over when it is masked out i.e. ignored by having 1 in that position. Note that implementation allows 
this only for selected states. See FB_PackMLStateModel_ST code for further details.*)
(*Calling & Updating the state model*)
(*TODO: Evaluate and change all input conditions according your application needs*)
fbStateModel(
	bResetFB:= bReset_System_Long,
	eModeReq:= HMI_uModeReq,
	wIgnoreState := 2#000000,		(*TODO: Which states should be ignodered. Default: 2#100000*)
	bSC:= ,			(*Must NOT be assigned ANY variable, because fb input is directly assigned above!!!*)
	bAbort:= bReset_System OR bReqShutdown OR NOT (I_CoversClosed AND I_EStopClear),
	bClear:= I_Btn_Reset,
	bReset:= I_Btn_Start,
	bStart:= (I_Btn_Start OR HMI_wControlWord.1) AND I_EStopClear,
	bHold:= HMI_wControlWord.3,
	bUn_Hold:= I_Btn_Reset OR HMI_wControlWord.5 OR HMI_wControlWord.7,
	bSuspend:= HMI_wControlWord.4,
	bUn_Suspend:= I_Btn_Reset OR HMI_wControlWord.6 OR HMI_wControlWord.7,
	bStop:= I_Btn_Stop OR HMI_wControlWord.2,
	bComplete:= ,
	bAck_Completed:= ,
	eMode=> PLC_uModeCurrent,
	eState=> PLC_uStateCurrent);

(* ****** Section 6: Here we update all outputs according the current state of our PackML model. This allows us to process the in single location.
The control of outputs is bind to state, not e.g. to inputs. The inputs are the one driving the PackML model forward. Again CASE structure can be used.*)
(*Call for HMI and UI update*)
HMI_and_UI_Update;


 *   , ? ? ?P           actAborting ^?Q\(   (*Add here Aborting related actions*)
;   , M  ??           HMI_and_UI_Update ^?Q\f  (*HMI Update*)
(*Calling blinking sub-program*)
PRG_Blinking (bSign4Hz=> , bSign2Hz=> , bSign1Hz=> , bSign0_5Hz=> );

(*Codesys simulation 1Hz blinking*)
c:= c + 1;
IF c > 1 THEN
	c:=0;
END_IF;
bBlink := (c=0);	(*Blink is true if c=0*)

(*Init values*)
O_Light_Stop := FALSE;	(*TODO: Change initial values according your app needs*)
O_Light_Warning:=FALSE;	(*TODO: Change initial values according your app needs*)
O_Light_Error:=FALSE;	(*TODO: Change initial values according your app needs*)

(*TODO: Change values according range of states *)
(*Start light*)
O_Light_Start :=  (fbStateModel.eState >= eSt_Resetting) AND (fbStateModel.eState < eSt_Completed);

(*TODO: Change output values according states *)
CASE fbStateModel.eState OF
eSt_Aborting, eSt_Aborted:
	O_Light_Stop := bBlink;	(*TODO: Change initial values according your app needs*)
	O_RelayStop := FALSE;					(*TODO: Change initial values according your app needs*)
	O_RelayEStop := FALSE;					(*TODO: Change initial values according your app needs*)
eSt_Clearing:
	O_Light_Stop := bBlink; 					(*TODO: Change initial values according your app needs*)
eSt_Stopping:
	O_Light_Stop := bBlink;					(*TODO: Change initial values according your app needs*)
	O_RelayStop := FALSE;					(*TODO: Change ...*)
eSt_Stopped, eSt_Completed:
	O_Light_Stop := TRUE;					(*TODO: Change initial values according your app needs*)
	O_RelayStop := FALSE;					(*TODO: Change ...*)
eSt_Starting:
	O_Light_Start := bBlink;					(*TODO: Change ...*)
	O_RelayStop := TRUE;						(*TODO: Change ...*)
	O_RelayEStop := TRUE;					(*TODO: Change ...*)
END_CASE;

             ,   , D? ?b           PRG_MAIN_SAMPLE iƕ]	^?Q\      ????????        ?   PROGRAM PRG_MAIN_SAMPLE
VAR
(*	fbStateModel		: FB_PackMLStateModel_ST;	(*FB for executing PackML state model*)		*)
	bBlink				: BOOL;	(*1s blinkg for CodeSys Simulation*)
	c					: INT;	(*Support variable for blinking*)
END_VAR?  (* ****** Section 1: Initialisations and default values. Initial conditions for variables on every PLC cycle*)
fbStateModel.bSC := FALSE;

(* ****** Section 2: Grouping PackML states for calling Programs or FB instances.
This is to avoid repetition inside case structure in Section 4. With IF clause setting lower (and upper) state limits we can filter out the states when we 
want to call specific programs. The order of states is defined in Tab:Data types > E_PackMLState. eSt_Aborting is the lowest and eSt_Completed is 
the highest. Here we filter out calling of the programs - we call them only when we are in higher states than Stopped. Inside IF there is again CASE 
which process each Control Mode separately.*)
(*Execution part. Making calls for program if we are on states above Stopped*)
IF (fbStateModel.eState > eSt_Stopped) THEN
	CASE fbStateModel.eMode OF
		(*MODE: MANUAL*)
		eMode_Manual:
			;
		(*MODE: AUTOMATIC*)
		eMode_Automatic:
			;
	END_CASE;
END_IF;

(* ****** Section 3: Actions in your program without considering the Control Mode. I.e. actions are performed same way indenpendent on
current Control Mode selection.*)
(*Mode independent state actions*)
CASE fbStateModel.eState OF
eSt_Aborting:
	(* One can make specific actions in case of specific Mode-State combination.
	   One can also consider to call a specific program when in specific Mode-State combination*)
	actAborting;
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Clearing:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Stopping:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Resetting:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Holding:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_UnHolding:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Suspending:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
eSt_Unsuspending:
	fbStateModel.bSC := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
END_CASE;

(* ****** Section 4: Actions in your program which are Control Mode specific. Two nested case structures where outer one selects the
control mode and inner the PackML state. In order to avoid conflicts, it would be better to process each PackML state either in Section 3 
or Section 4, but not in both. *)
(*Execution mode related state actions*)
CASE fbStateModel.eMode OF
(*MODE: MANUAL*)
eMode_Manual:
	(* ****** Section 4.1: PackML state based processing actions when Control Mode is Manual.*)
	CASE fbStateModel.eState OF
	eSt_Idle:
		fbStateModel.bAck_Completed := FALSE;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Starting:
		fbStateModel.bSC := TRUE;					(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completing:
		fbStateModel.bSC := TRUE;					(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completed:
		fbStateModel.bAck_Completed := TRUE;		(*TODO: Remove/Replace this row with desired actions*)
	END_CASE;

(*MODE: AUTOMATIC*)
eMode_Automatic:
	(* ****** Section 4.2: PackML state based processing actions when Control Mode is Automatic.*)
	CASE fbStateModel.eState OF
	eSt_Idle:
		fbStateModel.bAck_Completed := FALSE;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Starting:
		fbStateModel.bSC := TRUE;					(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completing:
		fbStateModel.bSC := TRUE;					(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completed:
		;
		(*fbStateModel.bAck_Completed:= TRUE;*)
	END_CASE;

(*MODE: UNKNOWN*)
ELSE	(*This is an Error branch.*)
	; (*TODO: Make implementation*)
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
	eModeReq:= ,
	wIgnoreState := 2#000000,		(*TODO: Which states should be ignodered. Default: 2#000000 or 2#100000*)
	bSC:= ,		(*Must NOT be assigned ANY variable, because fb input is directly assigned above by your programs!!!*)
	bAbort:= ,
	bClear:= ,
	bReset:= ,
	bStart:= ,
	bHold:= ,
	bUn_Hold:= ,
	bSuspend:= ,
	bUn_Suspend:= ,
	bStop:= ,
	bComplete:= ,
	bAck_Completed:= ,
	eMode=> ,
	eState=> );

(* ****** Section 6: Here we update all outputs according the current state of our PackML model. This allows us to process the in single location.
The control of outputs is bind to state, not e.g. to inputs. The inputs are the one driving the PackML model forward. Again CASE structure can be used.*)
(*Call for HMI and UI update*)
HMI_and_UI_Update;


 1   , ? ? ?1           actAborting ^?Q\?   (*You can add here Aborting related actions as one central collection.
This action can be called from multiple places, in case needed, 
but is part of program*)
;-   , ? ? ?1           HMI_and_UI_Update \?\5  (*HMI Update*)
(*Calling blinking sub-program*)
(*PRG_Blinking (bSign4Hz=> , bSign2Hz=> , bSign1Hz=> , bSign0_5Hz=> );*)
(*Codesys simulation 1Hz blinking*)
c:= c + 1;
IF c > 1 THEN
	c:=0;
END_IF;
bBlink := (c=0);	(*bBlink is true if c=0*)

(*Init values*)
O_Light_Stop := FALSE;	(*TODO: Change initial values according your app needs*)

(*TODO: Change values according range of states *)
(*Start light*)
(*O_Light_Start :=  (fbStateModel.eState >= eSt_Resetting) AND (fbStateModel.eState < eSt_Completed); *)

(*TODO: Change output values according states *)
CASE fbStateModel.eState OF
eSt_Aborting, eSt_Aborted:
	O_Light_Stop := bBlink;					(*TODO: Change initial values according your app needs*)
eSt_Clearing:
	O_Light_Stop := bBlink; 					(*TODO: Change initial values according your app needs*)
eSt_Stopping, eSt_Stopped, eSt_Completed:
	O_Light_Stop := TRUE;					(*TODO: Change initial values according your app needs*)
eSt_Starting:
	;
	(*O_Light_Start := bBlink;	*)				(*TODO: Change initial values according your app needs*)
END_CASE;

             /   ,   " &Q           PRG_Production1 ^?Q\	^?Q\      ????????        ?   PROGRAM PRG_Production1
(*Example program to demonstrate imagenary Production1 process*)
VAR_INPUT
	bReset		: BOOL;	(*Performs reset*)
END_VAR
VAR_OUTPUT
	bStopOK		: BOOL;	(*Stopping OK*)
END_VAR
VAR
	iCycleCount	: INT;	(*Cycle counter*)
END_VAR?  bStopOK := FALSE;

CASE fbStateModel.eState OF
eSt_Execute:		(*Actions during normal execution*)
	fAngle1 := fAngle1 + 4;
(*	IF fAngle1 >= 360 THEN
		fAngle1 := 0;
		iCycleCount := iCycleCount +1;
	END_IF;*)

eSt_Stopping, eSt_Completing :
(*What should happen during stopping*)
	IF fAngle1 <> 0 THEN
		fAngle1 := fAngle1 + 4;
	END_IF;
(*	IF fAngle1 >= 360 THEN
		fAngle1 := 0;
		iCycleCount := iCycleCount +1;
	END_IF;*)

	(*Stopping condition*)
	IF fAngle1 = 0 THEN
		bStopOK := TRUE;
	END_IF;

END_CASE;

(*Check angle overrun*)
IF fAngle1 >= 360 THEN
	fAngle1 := 0;
	iCycleCount := iCycleCount +1;
END_IF;
               <   , nb ?"           PRG_Production2 ^?Q\	^?Q\      ????????        ?   PROGRAM PRG_Production2
(*Example program to demonstrate imagenary Production2 process*)
VAR_INPUT
	bReset		: BOOL;	(*Performs reset*)
END_VAR
VAR_OUTPUT
	bStopOK		: BOOL;	(*Stopping OK*)
END_VAR
VAR
	iCycleCount	: INT;	(*Cycle counter*)
END_VAR?  bStopOK := FALSE;

CASE fbStateModel.eState OF
eSt_Execute:		(*Actions during normal execution*)
	fAngle2 := fAngle2 - 3;


eSt_Stopping, eSt_Completing : (*What should happen during stopping*)
	IF fAngle2 <> 0 THEN
		fAngle2 := fAngle2 - 3;
	END_IF;
	(*Stopping condition*)
	IF (fAngle2 = 0) THEN
		bStopOK := TRUE;
	END_IF;
END_CASE;

(*Check angle overrun*)
IF fAngle2 <= -360 THEN
	fAngle2 := 0;
	iCycleCount := iCycleCount +1;
END_IF;                  ,  ?	           PRG_SIMU ^?Q\	^?Q\      ed
	bSte        )   PROGRAM PRG_SIMU
VAR
	c	: INT;
END_VAR?  (*This just simulator part, when program is used in simulated environment*)
IF fbStateModel.eState = eSt_Clearing THEN
uCounterPosCurr_SIMU := 0;
END_IF;

IF (fbStateModel.eState > eSt_Idle) AND (fbStateModel.eState < eSt_Completed) AND
		NOT ((fbStateModel.eState = eSt_Held) OR (fbStateModel.eState = eSt_Suspended)) THEN
	c:=c+1;
	IF c >= 5 THEN
		uCounterPosCurr_SIMU := uCounterPosCurr_SIMU + 1;
		c:=0;
	END_IF;
END_IF;                   , ?U G?           V_StateModelTest ^?Q\
    @    ?HJ^?   d   %                                                                                                       
    @         ?t ?  ?  ?	J	J_ ?_ ?_   ?η     ???                           @                         ???? ???        @
                                                                                                                              
    @        Y} ?? ??   ???     ???                                             @                      l    ???        @
                       @                                                                                                           
    @          ??e  2    ???     ??                                  #   .I_Btn_Reset OR .HMI_wControlWord.0    	   Clear @                           ???        @
        .I_Btn_Reset             @                                                                                                           
    @        s ???  ?    ???      ?                                  #   .I_Btn_Start OR .HMI_wControlWord.1    	   Start @                          ???        @
        .I_Btn_Start             @                                                                                                           
    @        ? ???  ?    ???     ?                                   "   .I_Btn_Stop OR .HMI_wControlWord.2       Stop @                          ???        @
        .I_Btn_Stop             @                                                                                                           
    @        ? d ? ? ? s   ???     ??                                     .HMI_wControlWord.3       Hold @                          ???        @
    .HMI_wControlWord.3                 @                                                                                                           
    @        ? ? ? ? ? ?   ???     ?                                      .HMI_wControlWord.4       Suspend @                          ???        @
    .HMI_wControlWord.4                 @                                                                                                           
    @        	??? m   ???     ???                                        .fbStateModel.eMode    Mode : %s @                          ???        @
                       @                                                                                                           
    @        	 ?3 m#   ???     ???                                        .fbStateModel.eState    State: %s @                          ???        @
                       @                                                                                                           
    @          ? e ? 2 ?   ???     ??                                     .HMI_uModeReq=3    
   Manual @                          ???        @
                  "   INTERN ASSIGN HMI_uModeReq:=(3) @                                                                                                           
    @          n e ? 2 x   ???     ???                                            Mode Selection @                          ???        @
                       @                                                                                                           
    @          ? e ? 2 ?   ???     ??                                     .HMI_uModeReq=5       Production1 @                      	    ???        @
                  "   INTERN ASSIGN HMI_uModeReq:=(5) @                                                                                                           
    @          < e [ 2 K   ???     ??                                     .I_CoversClosed       Covers Closed @                      
    ???        @
    .I_CoversClosed                 @                                                                                                           
    @        ? d F? s   ???     ??                                     .HMI_wControlWord.5       Un-Hold @                          ???        @
        .HMI_wControlWord.5             @                                                                                                           
    @        ? ? F? ?   ???     ??                                     .HMI_wControlWord.6       Un-Suspend @                          ???        @
        .HMI_wControlWord.6             @                                                                                                           
    @        ?  ? = ? -   ???     ??                                     .fbStateModel.bComplete       Complete @                          ???        @
        .fbStateModel.bComplete             @                                                                                                           
    @        ? < ? [ ? K   ???     ??                                     .fbStateModel.bAck_Completed       ACK Completed @                          ???        @
        .fbStateModel.bAck_Completed             @                                                                                                          
    @        	2 <[ "F   ???      ?                                     .O_Light_Start    	   Start @                          ???        @
                       @                                                                                                          
    @        ;2 n[ TF   ???     ?                                      .O_Light_Stop       Stop @                          ???        @
                       @                                                                                                          
    @        m2 ?[ ?F   ???     ??@                                    .O_Light_Warning       Warning @                          ???        @
                       @                                                                                                          
    @        ?2 ?[ ?F   ???     ?                                      .O_Light_Error    	   Error @                          ???        @
                       @                                                                                                          
    @        ? @.    ???     ???                                    .O_RelayStop       R: StopClear @                          ???        @
                       @                                                                                                          
    @        ?- @V A   ???     ???                                    .O_RelayEStop       R: Emergency
StopClear @                          ???        @
                       @                                                                                                           
    @           e = 2 -   ???     ??                                     .I_EStopClear       E-Stop Clear @                           ???        @
    .I_EStopClear                 @                                                                                                           
    @        ? ? F? ?   ???     ??                                     .HMI_wControlWord.7       Continue @                      +    ???        @
        .HMI_wControlWord.7             @                                                                                                           
    @         ?? ?? ?? ?? ?? ??   ??      ???                           @                .fAngle1        k    ???        @
                                                                                                                              
    @        ?? ?? ??   ???     ???                                             @                      m    ???        @
                       @                                                                                                           
    @        ^? ???   ???     ???                                        PRG_Production1.iCycleCount   Cycle: %d @                      n    ???        @
                       @                                                                                                          
    @        ?} @? ?   ???     ???                                             @                      o    ???        @
                       @                                                                                                           
    @         ? ? ?? ? ? ?     ?     ???                           @                .fAngle2        p    ???        @
                                                                                                                              
    @        ? ? ?   ???     ???                                             @                      q    ???        @
                       @                                                                                                           
    @          ? e ? 2 ?   ???     ??                                     .HMI_uModeReq=6       Production2 @                      s    ???        @
                  "   INTERN ASSIGN HMI_uModeReq:=(6) @                                                                                                           
    @        ^d ?y ?n   ???     ???                                            Process 1 @                      t    ???        @
                       @                                                                                                           
    @        ?d ;y n   ???     ???                                            Process 2 @                      u    ???        @
                       @                                                                                                           
    @        ?? ;?   ???     ???                                        PRG_Production2.iCycleCount   Cycle: %d @                      v    ???        @
                       @                                                                                                         
    @          E,"?       ???     ???            VC_PackMLStates                                     x    ???        @
                                               @         PackML        .fbStateModel                                                                                                    
    @        ? ? P
 ?       ???     ???            VC_FB_Process3                                    ?    ???        @
                                               @         fb        PRG_MAIN.fbProcess3    ?η ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  R   , ? ? ?3           VC_FB_Process3 ^?Q\
    @????^?Q\   d                                                                                                          
    @            t V : +   ?η     ???                                             @                          ???        @
                       @                                                                                                           
    @          j  7    ???     ???                                            Process 3 @                           ???        @
                       @                                                                                                           
    @         # j 8 7 -   ???     ???                                        $fb$.iProcessCount   Nbr : %d @                          ???        @
                       @                                                                                                           
    @          < 8 Q  F   ???     ???                                    $fb$.bInitDone       InitDone @                          ???        @
                       @                                                                                                           
    @        7 < o Q S F   ???     ???                                    $fb$.bStopOK    
   StopOK @                          ???        @
                       @           fb                ?η ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  )   , " jo~           VC_PackMLStates ^?Q\
    @????^?Q\B   n   >                                                                                                       
    @         K?     ?  ?? ?? ?^  ^  ^  ???     ???                           @                         ???? ???        @
                                                                                                                               
    @          ?? hx   ???     ???                                             @                          ???        @
                       @                                                                                                          
    @        ? A? ,  ???     ???                                    $PackML$.eState = 4       Stopping @                          ???        @
                       @                                                                                                          
    @        
 Z o ? < n   ???     ???                                    $PackML$.eState = 6       Idle @                           ???        @
                       @                                                                                                          
    @        ? ? ? ? ?   ???     ???                                    $PackML$.eState = 11       Un-Suspending @                          ???        @
                       @                                                                                                          
    @        b?A?,  ???     ???                                    $PackML$.eState = 0       Aborting @                          ???        @
                       @                                                                                                          
    @        ?1A?,  ???     ???                                    $PackML$.eState = 1       Aborted @                          ???        @
                       @                                                                                                           
    @        ?J?_IT  ???     ???                                        $PackML$.strState    State: %s @                      	    ???        @
                       @                                                                                                          
    @        6?Ah,  ???     ???                                    $PackML$.eState = 2       Clearing @                      
    ???        @
                       @                                                                                                          
    @        
 o A< ,  ???     ???                                    $PackML$.eState = 3       Stopped @                          ???        @
                       @                                                                                                          
    @        
 ? o ? < ?   ???     ???                                    $PackML$.eState = 5       Resetting @                          ???        @
                       @                                                                                                          
    @        ? Z ? ? n   ???     ???                                    $PackML$.eState = 7       Starting @                          ???        @
                       @                                                                                                          
    @        6Z ?? hn   ???      ??                                    $PackML$.eState = 8       Execute @                          ???        @
                       @                                                                                                          
    @        ?Z 1? ?n   ???     ???                                    $PackML$.eState = 15       Completing @                          ???        @
                       @                                                                                                          
    @        bZ ?? ?n   ???     ???                                    $PackML$.eState = 16       Completed @                          ???        @
                       @                                                                                                          
    @        6? ?? h?   ???     ???                                    $PackML$.eState = 10       Suspended @                          ???        @
                       @                                                                                                          
    @        ?? 1? ??   ???     ???                                    $PackML$.eState = 9       Suspending @                          ???        @
                       @                                                                                                          
    @        ?
 13 ?   ???     ???                                    $PackML$.eState = 12       Holding @                          ???        @
                       @                                                                                                          
    @        6
 ?3 h   ???     ???                                    $PackML$.eState = 13       Held @                          ???        @
                       @                                                                                                          
    @        ? 
 3 ?    ???     ???                                    $PackML$.eState = 14       Un-Holding @                          ???        @
                       @                                                                                                          
    @         ??? ?????  ???       ?   ?                       @                        $PackML$.bAbort???? ???        @
                                                                                                                               
    @        {? ??    ???      ??                                    $PackML$.bAbort    	   Abort @                          ???       MS Sans Serif @
                       @                                                                                                          
    @         ? ? ? ? ? ? ? ?   ???       ?   ?                       @                        $PackML$.bStop    ???        @
                                                                                                                               
    @        ? ? ? ? ?     ???      ??                                    $PackML$.bStop       Stop @                          ???       MS Sans Serif @
                       @                                                                                                          
    @         (? ? ? ? ? J? J? E? O? J? J?   ???     ???   ?                       @                        $PackML$.bSC???? ???        @
                                                                                                                               
    @        ? ? 
? ? ?     ???      ??                                    $PackML$.bSC       SC @                          ???       MS Sans Serif @
                       @                                                                                                          
    @         (N ? 2 ? K JK JZ EP OP JZ JZ   ???     ???   ?                       @                        $PackML$.bSC     ???        @
                                                                                                                              
    @         ?? |Z |K K 2 ?< < 2 2   ???     ???   ?                       @                        $PackML$.bHold!    ???        @
                                                                                                                               
    @        ?< ?L ?D     ???      ??                                    $PackML$.bHold       Hold @                      "    ???       MS Sans Serif @
                       @                                                                                                          
    @         ;,b,0,:':10,0,  ???     ???   ?                       @                        $PackML$.bSC???? ???        @
                                                                                                                              
    @         2 ? 2 2 ? 7 ? - ? 2 ? 2 ?   ???     ???   ?                       @                        $PackML$.bReset???? ???        @
                                                                                                                              
    @         ? n n n ? n ? i ? s ? n ? n   ???     ???   ?                       @                        $PackML$.bStart???? ???        @
                                                                                                                              
    @         ? 36,","T? T? ,n ,x 'x 1n ,? ,? ,  ???     ???   ?                       @                        $PackML$.bSC???? ???        @
                                                                                                                               
    @        ? < L ? D     ???      ??                                    $PackML$.bSC       SC @                      %    ???       MS Sans Serif @
                       @                                                                                                          
    @         ?? |? |? ? ? ?? ? ? ?   ???     ???   ?                       @                        $PackML$.bSuspend&    ???        @
                                                                                                                               
    @        ?? ?? ??     ???      ??                                    $PackML$.bSuspend       Suspend @                      '    ???       MS Sans Serif @
                       @                                                                                                           
    @        x ? -? %    ???      ??                                    $PackML$.bSC       SC @                      (    ???       MS Sans Serif @
                       @                                                                                                           
    @        :Y-I%    ???      ??                                    $PackML$.bSC       SC @                      )    ???       MS Sans Serif @
                       @                                                                                                          
    @         ?,?,?,?'?1?,?,  ???     ???   ?                       @                        $PackML$.bClear*    ???        @
                                                                                                                               
    @        ??-?%    ???      ??                                    $PackML$.bClear    	   Clear @                      +    ???       MS Sans Serif @
                       @                                                                                                          
    @         *n n 6n ,i ,s 6n 6n   ???     ???   ?                       @                        $PackML$.bSC,    ???        @
                                                                                                                               
    @        	_ (o g     ???      ??                                    $PackML$.bSC       SC @                      -    ???       MS Sans Serif @
                       @                                                                                                           
    @        n _ ? o ? g     ???      ??                                    $PackML$.bStart    	   Start @                      .    ???       MS Sans Serif @
                       @                                                                                                           
    @        # ? L 
7     ???      ??                                    $PackML$.bReset    	   Reset @                      /    ???       MS Sans Serif @
                       @                                                                                                          
    @         ?? ?? ?? ?? ?? ?? ??   ???     ???   ?                       @                        $PackML$.bSC0    ???        @
                                                                                                                               
    @        ?? ?? ??     ???      ??                                    $PackML$.bSC       SC @                      1    ???       MS Sans Serif @
                       @                                                                                                          
    @         ? ? ? ? ?# ? ?   ???     ???   ?                       @                        $PackML$.bSC2    ???        @
                                                                                                                               
    @        ? ? ?     ???      ??                                    $PackML$.bSC       SC @                      3    ???       MS Sans Serif @
                       @                                                                                                          
    @         ? 6? ? ? ? ? ?   ???     ???   ?                       @                        $PackML$.bUn_Suspend4    ???        @
                                                                                                                               
    @        ? 7? ?     ???      ??                                    $PackML$.bUn_Suspend       Un-Sus
pend @                      5    ???       MS Sans Serif @
                       @                                                                                                          
    @          6   #     ???     ???   ?                       @                        $PackML$.bUn_Hold6    ???        @
                                                                                                                               
    @         7      ???      ??                                    $PackML$.bUn_Hold       Un-Hold @                      7    ???       MS Sans Serif @
                       @                                                                                                          
    @         ?n ?n ?n ?i ?s ?n ?n   ???     ???   ?                       @                        $PackML$.bComplete8    ???        @
                                                                                                                               
    @        ?_ ?o ?g     ???      ??                                    $PackML$.bComplete       Complete @                      9    ???       MS Sans Serif @
                       @                                                                                                          
    @         Vn 0n bn Xi Xs bn bn   ???     ???   ?                       @                        $PackML$.bSC:    ???        @
                                                                                                                               
    @        5_ To Dg     ???      ??                                    $PackML$.bSC       SC @                      ;    ???       MS Sans Serif @
                       @                                                                                                          
    @         2 ? 2 ? 2 ? 7 ? - ? 2 ? 2 ?   ???     ???   ?                       @                        $PackML$.bSC<    ???        @
                                                                                                                               
    @        - ? L ? < ?     ???      ??                                    $PackML$.bSC       SC @                      =    ???       MS Sans Serif @
                       @                                                                                                          
    @         h? ?? ?? 2 ? 2 ?   ???     ???   ?                       @                     )   $PackML$.bReset OR $PackML$.Ack_Completed???? ???        @
                                                                                                                               
    @        ? @? !?     ???      ??                                    $PackML$.bReset       Reset OR @                      >    ???       MS Sans Serif @
                       @                                                                                                           
    @        ?? ?? o?     ???      ??                                    $PackML$.bAck_Completed       Ack Completed @                      ?    ???       MS Sans Serif @
                       @                                                                                                           
    @        
 
 y 3 A      ???     ???                                            PackML
state model @                      A    ???       MS Sans Serif @                       @           PackML    ;                        	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <       ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                     , k? ?@        
   VC_Var_Int ^?Q\
    @    ^?Q\   d                                                                                                         
    @            ?  F 
   ???     ??                                         $label$   %s  @                           ???        @
                       @                                                                                                          
    @        ?   ?  ? 
   ???     ??                                         $VAR$   %5d $unit$  @                          ???        @
                       @           label              unit             VAR          ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                     , z ??           VC_Var_Int_edit ^?Q\
    @    ^?Q\   d                                                                                                         
    @            ?  F 
   ???     ??                                         $label$   %s  @                           ???        @
                       @                                                                                                 	   $min_val$	   $max_val$
    @        ?   ?  ? 
   ???     ??                                         $VAR$   %5d $unit$  @                          ???        @
                      @           label              unit             VAR             min_val             max_val          ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                     , 	F??           VC_Var_Real ^?Q\
    @ ] ^?Q\   d                                                                                                         
    @            ?  F 
   ???     ??                                         $label$   %s  @                           ???        @
                       @                                                                                                          
    @        ?   ?  ? 
   ???     ??                                         $VAR$   %4.2f $unit$  @                          ???        @
                       @           label              unit             VAR          ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                     , \ ???           VC_Var_Real_edit ^?Q\
    @C) -^?Q\   d                                                                                                         
    @            ?  F 
   ???     ??                                         $label$   %s  @                           ???        @
                       @                                                                                                 	   $min_val$	   $max_val$
    @        ?   ?  ? 
   ???     ??                                         $VAR$   %4.2f $unit$  @                          ???        @
                      @           label              unit             VAR             min_val             max_val          ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????, y " ??         "   STANDARD.LIB 5.6.98 13:03:02 @??1^      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @                            , ???	           c                     ?{?{?{?{% PRG_Trigger.fbTriggerCam_Up.bTrigger
% PRG_Trigger.fbTriggerCam_Up.bTrigger
$ PRG_Trigger.fbTriggerCam_Up.obLight
) PRG_Trigger.fbTriggerCam_Up.obCamTrigger
" PRG_Trigger.fbTriggerCam_Up.bBusy
             ????, ? ? g?        ????  at:=riSt                      POUs               Examples                 FB_SFC_Example  3                  PRG_MAIN_SAMPLE                actAborting  1                  HMI_and_UI_Update  -   ,   ????              FBs                 FB_PackMLStateModel_ST  +   ????              Func  ????              Programs                 FB_Process3  H                   PRG_Application  0                   PRG_Blinking                    PRG_Initialisation  7                   PRG_Production1  /                   PRG_Production2  <                   PRG_SIMU     ????               PRG_MAIN                actAborting  *                  HMI_and_UI_Update     	   ????           
   Data types                E_Mode                  
   E_ModeProc                     E_PackMLState  .   ????              Visualizations               Visual Components                 VC_FB_Process3  R                  VC_PackMLStates  )   ????              Visualisation items              
   VC_Var_Int                     VC_Var_Int_edit                     VC_Var_Real                     VC_Var_Real_edit     ????                V_StateModelTest     ????              Global Variables                Global_Variables                      Variable_Configuration     ????                                                            S?U                         	   localhost            P      	   localhost            P      	   localhost            P     ??Y ??9?