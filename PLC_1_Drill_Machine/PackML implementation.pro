CoDeSys+   ?                    @        @   2.3.9.62?    @   ConfigExtension?          CommConfigEx7             CommConfigExEnd   ME?                  IB                    % QB                    %   ME_End   CM?      CM_End   CT?   ????????   CT_End   ConfigExtensionEnd/    @                             ??D^ +    @      ????????             M+D^           @                 FB_PACKMLSTATEMODEL_ST        	   RTrig_bSC                R_TRIG            "   Rising trigger for State Completed   RTrig_StateChange                R_TRIG               Rising trigger for State signal   bResetLocal                         Paikallinen Reset	   bInitDone              !          Initialisation      bResetFB                       Resets whole FB   eModeReq               E_Mode   	          Requested mode   wIgnoreState            
       G   Ignoring states. See bit from E_PackMLState definition. Aborting = bit0   bSC                       Step Completed acknoledgement   bAbort                        Abortting signal = EmergencyStop   bClear                       Clear signal   bReset                       Reseting signal   bStart                       Start signal   bHold                       Hold signal   bUn_Hold                       Un-Hold signal   bSuspend                       Suspend signal   bUn_Suspend                       Un-Suspend signal   bStop                       Stop signal	   bComplete                       Complete signal   bAck_Completed                    "   Acknoledgement for Complete signal      eMode               E_Mode             Current mode   eState               E_PackMLState             Current state   strState                          State as String            \+D^  @   ????           FB_SFC_EXAMPLE           bLocalReset                        Performs local reset   SFCReset              	       B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            MAINLOOP                         	   _MAINLOOP                         	   UPDATEIOS                         
   _UPDATEIOS                            SFCRESETSTEP                            _SFCRESETSTEP                               bReset                       Reset Request                \+D^  @   ????           PLC_PRG                             T+D^  @   ????           PRG_BLINKING     	   	   bInitDone                        Ohjelman initialisointi   TP_Delay                TP               Nopein taajuus / 2 tuottaja   bBaseHz                        Nopein taajuus/2   iBaseHz                      Base taajuus (Hz)   RTRIG_2Hz_Sign                R_TRIG               2Hz signaalin generointi   RTRIG_1Hz_Sign                R_TRIG               1Hz signaalin generointi   RTRIG_0_5Hz_Sign                R_TRIG               0,5Hz signaalin generointi   tBaseTaajuus                    "   Base vilkutuksen timerin arvo. f/2   fPLC_CYCLE_TIME                                    PLC:n cycli aika. Sekunttia          bSign4Hz             	       0   4 Hz (240krt/min) taajudella vaihteleva signaali   bSign2Hz             
       0   2 Hz (120krt/min) taajudella vaihteleva signaali   bSign1Hz                    /   1 Hz (60krt/min) taajudella vaihteleva signaali
   bSign0_5Hz                    1   0,5 Hz (30krt/min) taajudella vaihteleva signaali            \+D^  @   ????           PRG_MAIN_SAMPLE           bBlink                         1s blinkg for CodeSys Simulation   c                       Support variable for blinking                    \+D^  @   ????            
          ( ?      K   ?     K   ?     K        K                     -         +     ??localhost ?0??? ? ???v?\E ???v            @       H? |??   ?    @         ?\E     p? ??? ?? ??   s?? @???              ?\E     ?<? x? ?? ???? ?? 	   ??       ?\E @???9?? 8? ?? 08? ?????? ???                  ?? ?9???     ,   ,                                                        K        @   M+D^?+        ????????                     CoDeSys 1-2.2   ????  ????????                                ?      
   ?         ?         ?          ?                    "          $                                                   '          (          ?          ?          ?          ?          ?         ?          ?          ?          ?         ?          ?          ?          ?          ?         ?      ?   ?       P  ?          ?         ?       ?  ?                    ~          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?       @  ?       @  ?       @  ?       @  ?       @  ?       @  ?         ?         ?          ?       ?  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         ?          ?         ?      
   ?         ?         ?         ?         ?         ?          ?          ?         ?      ?????          ?          ?      (                                                                        "         !          #          $         ?          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          ?          ?          l          o          p          q          r          s         u          ?          v         ?          ?      ????|         ~         ?         x          z      (   ?          ?         %         ?          ?          ?         @         ?          ?          ?         &          ?          	                   ?          ?          ?         ?          ?         ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?                            I         J         K          	          L         M          ?                             ?          P         Q          S          )          	          	          ?           	          +	       @  ,	       @  -	      ????Z	      ????[	      ????????        ????????????????  ????????              Standard Parameter OD                        ????    ???                  ????    ???                                Choose entry type.      
      BOOL   8-bit-Integer   16-bit-Integer   32-bit-Integer   byte   word   double word   real   string   long real (64-bit)                          low   middle   high                       	   read only
   write only
   read-write                             Standard Variable OD                        ????    ???                  ????    ???                          low   middle   high                       	   read only
   write only
   read-write                                                 ?  	   	   Name                 ????
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
   Value                Variable       Min                Variable       Max                Variable                         ????  ????????               ?   _Dummy@    @   @@    @   @             ??@             ??@@   @     ?v@@   ; @+   ????  ????????                                  ?v@      4@   ?             ?v@      D@   ?                       ?       @                           ?f@      4@     ?f@                ?v@     ?f@     @u@     ?f@        ???           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    M+D^	\+D^     ????????           VAR_GLOBAL
END_VAR
                                                                                  "     ????????              M+D^                 $????  ????????               ????????           Standard M+D^	M+D^      ????????                         	\+D^     ????????           VAR_CONFIG
END_VAR
                                                                                   '                ????????           Global_Variables N+D^	\+D^     ????????           VAR_GLOBAL
END_VAR
                                                                                               '           	     ????????           Variable_Configuration N+D^	N+D^	     ????????           VAR_CONFIG
END_VAR
                                                                                                 ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               4     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             System      ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '        ????????           E_Mode \+D^	\+D^      ????????        ?   TYPE E_Mode :
(*UserModes: Modes for different production states*)
(
	eMode_undefined := 0,
	eMode_Automatic :=1,
	eMode_Manual :=3,
	eMode_Production1 :=5,
	eMode_Production2 :=6
);
END_TYPE                  ????????        
   E_ModeProc \+D^	\+D^      ????????        ?   TYPE E_ModeProc :
(*Procedural control modes. Can be changed in any state*)
(
	eModeProc_undefined := 0,
	eModeProc_Automatic :=1,
	eModeProc_SemiAutomatic :=2,
	eModeProc_Manual :=3
);
END_TYPE                  ????????           E_PackMLState \+D^	\+D^      ????????        K  TYPE E_PackMLState :
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
END_TYPE                 , ?S ?|           FB_PackMLStateModel_ST \+D^	\+D^      ????????          FUNCTION_BLOCK FB_PackMLStateModel_ST
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
END_VAR   IF bResetFB THEN	(*Reseting FB*)
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
END_CASE;                  , N N ??           FB_SFC_Example \+D^	\+D^      ????????          FUNCTION_BLOCK FB_SFC_Example
VAR_INPUT
	bReset		: BOOL;	(*Reset Request*)
END_VAR
VAR_OUTPUT
END_VAR
VAR
	bLocalReset	: BOOL;	(*Performs local reset*)
	SFCReset 	: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init      ????????           Action Init \+D^)   SFCReset := FALSE;
bLocalReset	:= FALSE;    
   NOT bReset           WaitForSFCReset              MainLoop         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       bLocalReset OR bReset         SFCResetStep      ????????           Action SFCResetStep \+D^   SFCReset := TRUE;       FALSE     Initd                  
   , Kv           PLC_PRG T+D^	T+D^      ????????           PROGRAM PLC_PRG
VAR
END_VAR                      , ? ? ?           PRG_Blinking \+D^	\+D^      ????????        -  PROGRAM PRG_Blinking
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
END_IF;                  ,   a?           PRG_MAIN_SAMPLE \+D^	\+D^      ????????        ?   PROGRAM PRG_MAIN_SAMPLE
VAR
(*	fbStateModel		: FB_PackMLStateModel_ST;	(*FB for executing PackML state model*)		*)
	bBlink				: BOOL;	(*1s blinkg for CodeSys Simulation*)
	c					: INT;	(*Support variable for blinking*)
END_VAR?  (* ****** Section 1: Initialisations and default values. Initial conditions for variables on every PLC cycle*)
fbStateModel.bSC := FALSE;

(* ****** Section 2: Actions in your program without considering the Control Mode. I.e. actions are performed same way indenpendent on
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

(* ****** Section 3: Actions in your program which are Control Mode specific. Two nested case structures where outer one selects the
control mode and inner the PackML state. In order to avoid conflicts, it would be better to process each PackML state either in Section 2 
or Section 3, but not in both. *)
(*Execution mode related state actions*)
CASE fbStateModel.eMode OF
(*MODE: MANUAL*)
eMode_Manual:
	(* ****** Section 3.1: PackML state based processing actions when Control Mode is Manual.*)
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
	(* ****** Section 3.2: PackML state based processing actions when Control Mode is Automatic.*)
	CASE fbStateModel.eState OF
	eSt_Idle:
		fbStateModel.bAck_Completed := FALSE;		(*TODO: Remove/Replace this row with desired actions*)
	eSt_Starting:
		fbStateModel.bSC := TRUE;					(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completing:
		fbStateModel.bSC := TRUE;					(*TODO: Remove/Replace this row with desired actions*)
	eSt_Completed:
		;
		(*fbStateModel.bAck_Completed:= I_Btn_Start;*)
	END_CASE;

(*MODE: UNKNOWN*)
ELSE	(*This is an Error branch.*)
	; (*TODO: Make implementation*)
END_CASE;

(* ****** Section 4: Grouping PackML states for calling Programs or FB instances.
This is to avoid repetition inside case structure in Section 3. With IF clause setting lower (and upper) state limits we can filter out the states when we want to call 
specific programs. The order of states is defined in Tab:Data types > E_PackMLState. eSt_Aborting is lowest and eSt_Completed is highest.
Here we filter calling programs, only when we are in higher states than Stopped. Inside IF there is again CASE which process each Control Mode separately.*)
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
HMI_and_UI_Update;    , 4 4 {?           actAborting \+D^?   (*You can add here Aborting related actions as one central collection.
This action can be called from multiple places, in case needed, 
but is part of program*)
;   , h h ??           HMI_and_UI_Update \+D^1  (*HMI Update*)
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
END_CASE;                   ????????           VC_PackMLStates \+D^
    @????????J   n   >                                                                                                       
    @         K?     ?  ?? ?? ?^  ^  ^  ???     ???                           @                         B    ???        @
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
    @         ??? ?????  ???       ?   ?                       @                        $PackML$.bAbortC    ???        @
                                                                                                                               
    @        {? ??    ???      ??                                    $PackML$.bAbort    	   Abort @                          ???       MS Sans Serif @
                       @                                                                                                          
    @         ? ? ? ? ? ? ? ?   ???       ?   ?                       @                        $PackML$.bStop    ???        @
                                                                                                                               
    @        ? ? ? ? ?     ???      ??                                    $PackML$.bStop       Stop @                          ???       MS Sans Serif @
                       @                                                                                                          
    @         (? ? ? ? ? J? J? E? O? J? J?   ???     ???   ?                       @                        $PackML$.bSCD    ???        @
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
    @         ;,b,0,:':10,0,  ???     ???   ?                       @                        $PackML$.bSCE    ???        @
                                                                                                                              
    @         2 ? 2 2 ? 7 ? - ? 2 ? 2 ?   ???     ???   ?                       @                        $PackML$.bResetF    ???        @
                                                                                                                              
    @         ? n n n ? n ? i ? s ? n ? n   ???     ???   ?                       @                        $PackML$.bStartG    ???        @
                                                                                                                              
    @         ? 36,","T? T? ,n ,x 'x 1n ,? ,? ,  ???     ???   ?                       @                        $PackML$.bSCH    ???        @
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
    @         h? ?? ?? 2 ? 2 ?   ???     ???   ?                       @                     )   $PackML$.bReset OR $PackML$.Ack_CompletedI    ???        @
                                                                                                                               
    @        ? @? !?     ???      ??                                    $PackML$.bReset       Reset OR @                      >    ???       MS Sans Serif @
                       @                                                                                                           
    @        ?? ?? o?     ???      ??                                    $PackML$.bAck_Completed       Ack Completed @                      ?    ???       MS Sans Serif @
                       @                                                                                                           
    @        
 
 y 3 A      ???     ???                                            PackML
state model @                      A    ???       MS Sans Serif @                       @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????  ????????                            ????????         ??2                ????????????????  
             ????  ????????        ????  ????????                      POUs               Examples                 FB_SFC_Example                    PRG_MAIN_SAMPLE                actAborting                    HMI_and_UI_Update        ????              FBs                FB_PackMLStateModel_ST     ????               Programs                 PRG_Blinking     ????                PLC_PRG  
   ????          
   Data types                 E_Mode                  
   E_ModeProc                     E_PackMLState     ????             Visualizations                Visual Components                 VC_PackMLStates     ????????               Global Variables                 Global_Variables                     Variable_Configuration  	   ????                                         ????????             N+D^                         	   localhost            P      	   localhost            P      	   localhost            P     R+D^  )Ns?