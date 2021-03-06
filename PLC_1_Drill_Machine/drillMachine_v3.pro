CoDeSys+?   ?               ,   Use of different IEC-61131-3 languages @       1.0.0 @   2.3.9.62?   Niko Siltala (TUT) @   ConfigExtension?          CommConfigEx7             CommConfigExEnd   ME?                  IB                    % QB                    %   ME_End   CM?      CM_End   CT?   ????????   CT_End   ConfigExtensionEnd}   Use of different IEC-61131-3 languages to control a lift door. @                                     ?=^ +    @                           wTV        ?   @   @   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\UTIL.LIB       
   BCD_TO_INT               B           ??           byte containing the BCD value    
   BCD_TO_INT                                     ?U=^  ?    ????           BLINK           CLOCK                   TP    ??                 ENABLE            ??       +    TRUE:run Blink, FALSE: OUT keeps its value   TIMELOW           ??           Time for OUT=FALSE    TIMEHIGH           ??           Time for OUT=TRUE       OUT            ??	       &    output variable, starting with FALSE             ?U=^  ?    ????        	   CHARCURVE           I            ??                 IN           ??           input signal    N           ??       @    number of  points defining the characteristic curve : 2<=N<=11       OUT           ??           output variable    ERR           ??       ?    error :
												0 : 	no error
												1 :	error in ARRAY: wrong sequence ( completely tested, only if IN is equal to largest X-value of P)
												2 :	IN outside of limits of P
												4 :	number of POINTS (N) invalid       P    	  
                    POINT          ??       8    ARRAY of N points to describe the characteristic curve         ?U=^  ?    ????        
   DERIVATIVE           X3             ??              X2             ??              X1             ??              T2            ??              T1            ??              INIT            ??                 IN            ??           input variable    TM           ??           time since last call in msec    RESET            ??           reset: set OUT to zero       OUT            ??
           derivative             ?U=^  ?    ????           EXTRACT               X           ??           value    N           ??           number of bit to be extracted       EXTRACT                                      ?U=^  ?    ????           FREQ_MEASURE           OLDIN             ??              INIT             ??              OLDT            ??              DIFF            ??              ADIFF   	  	                        ??              V            ??              B            ??              I            ??                 IN            ??           input signal    PERIODS           
              ??       A    out is the average frequency during PERIODS (number of periods)    RESET            ??           reset measurement       OUT            ??	           frequency [Hz]   VALID            ??
       \    FALSE: not yet PERIODS measurements done OR time distance between two rising edges > 3*OUT             ?U=^  ?    ????           GEN           CET            ??              PER            ??              COUNTER            ??              CLOCK                    TON    ??              help             ??                 MODE               GEN_MODE   ??       p   define type :
								TRIANGLE				triangular	from - AMPL. to + AMPL.
								TRIANGLE_POS		triangular	from 0 to AMPL. 
								SAWTOOTH_RISE	sawtooth increasing from -AMPL. to +AMPL.
								SAWTOOTH_FALL	sawtooth decreasing from AMPL to -AMPL
								RECTANGLE			rectangular switching from  -AMPL. to +AMPL 
								SINUS					sinus
								COSINUS				cosinus    BASE            ??       A    FALSE: period referring to call; TRUE: period referring to time    PERIOD    ?     ??       )    period time, only relevant if BASE=TRUE    CYCLES    ?     ??       9    number of calls per period, only relevant if BASE=FALSE 	   AMPLITUDE           ??           amplitude    RESET            ??           reset       OUT           ??           generated function variable             ?U=^  ?    ????        
   HYSTERESIS               IN           ??           input value    HIGH           ??           upper threshold value    LOW           ??           lower threshold value       OUT            ??	           hysteresis value             ?U=^  ?    ????        
   INT_TO_BCD               I           ??       !    INT value to be converted to BCD   
   INT_TO_BCD                                     ?U=^  ?    ????           INTEGRAL               IN            ??           input variable    TM           ??           time since last call in msec    RESET            ??       1    reset: OUT is set to zero and OVERFLOW to false       OUT            ??	           value of the integral    OVERFLOW            ??
       
    overflow             ?U=^  ?    ????        
   LIMITALARM               IN           ??           INPUT value    HIGH           ??           upper threshold value    LOW           ??           lower threshold value       O            ??	            TRUE, if IN > HIGH, else FALSE    U            ??
           TRUE, if IN < LOW, else FALSE    IL            ??           neither O nor U             ?U=^  ?    ????        	   LIN_TRAFO           Diff             ??                 IN            ??           input value   IN_MIN            ??           minimum input value    IN_MAX            ??           maximum input value    OUT_MIN            ??       $    corresponding minimum output value    OUT_MAX            ??       $    corresponding maximum output value       OUT            ??           output value    ERROR            ??       .    error: IN_MIN = IN_MAX or IN out of interval             ?U=^  ?    ????           PACK               B0            ??           value of bit 0    B1            ??           value of bit 1    B2            ??           value of bit 2    B3            ??           value of bit 3    B4            ??           value of bit 4    B5            ??	           value of bit 5    B6            ??
           value of bit 6    B7            ??           value of bit 7       PACK                                     ?U=^  ?    ????           PD     
      CLOCK                    TON    ??              D        
             
   DERIVATIVE    ??              TMDIFF            ??              ERROR             ??              INIT            ??              Y_ADDOFFSET             ??              KPcopy             ??              TVcopy             ??              rTemp1             ??              rTemp2             ??           
      ACTUAL            ??            actual value, process variable 	   SET_POINT            ??           desired value, set point    KP            ??           proportionality const. (P)   TV            ??       '    rate time, derivative time (D) in sec    Y_MANUAL            ??       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ??	       !    offset for manipulated variable    Y_MIN            ??
       (    minimum value for manipulated variable    Y_MAX            ??       (    maximum value for manipulated variable    MANUAL            ??       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ??       !    reset: set Y output to Y_OFFSET       Y            ??            manipulated variable, set value   LIMITS_ACTIVE            ??       1    true set value would exceed limits Y_MIN, Y_MAX             ?U=^  ?    ????           PID           CLOCK                    TON    ??              I                   INTEGRAL    ??              D        
             
   DERIVATIVE    ??              TMDIFF            ??              ERROR             ??              INIT            ??              Y_ADDOFFSET             ??              KPcopy             ??              TNcopy             ??              TVcopy             ??               rTemp1             ??!              rTemp2             ??"                 ACTUAL            ??            actual value, process variable 	   SET_POINT            ??           desired value, set point    KP            ??           proportionality const. (P)   TN            ??           reset time (I) in sec    TV            ??       &    rate time, derivative time (D) in sec   Y_MANUAL            ??	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ??
       !    offset for manipulated variable    Y_MIN            ??       (    minimum value for manipulated variable    Y_MAX            ??       (    maximum value for manipulated variable    MANUAL            ??       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ??       9    reset: set Y output to Y_OFFSET and reset integral part       Y            ??            manipulated variable, set value   LIMITS_ACTIVE            ??       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ??           overflow in integral part             ?U=^  ?    ????           PID_FIXCYCLE           I                   INTEGRAL    ??              D        
             
   DERIVATIVE    ??              TMDIFF            ??              ERROR             ??              INIT            ??              Y_ADDOFFSET             ??              KPcopy             ??              TNcopy             ??              TVcopy             ??               rTemp1             ??!              rTemp2             ??"                 ACTUAL            ??            actual value, process variable 	   SET_POINT            ??           desired value, set point    KP            ??           proportionality const. (P)   TN            ??           reset time (I) in sec    TV            ??       &    rate time, derivative time (D) in sec   Y_MANUAL            ??	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ??
       !    offset for manipulated variable    Y_MIN            ??       (    minimum value for manipulated variable    Y_MAX            ??       (    maximum value for manipulated variable    MANUAL            ??       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ??       9    reset: set Y output to Y_OFFSET and reset integral part    CYCLE            ??           time in s between two calls       Y            ??            manipulated variable, set value   LIMITS_ACTIVE            ??       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ??           overflow in integral part             ?U=^  ?    ????           PUTBIT               X           ??           value to be manipulated    N           ??           position of bit to be changed    B            ??           value of specified bit       PUTBIT                                     ?U=^  ?    ????           RAMP_INT           DIFF            ??              OLD_IN            ??              TB            ??              CET            ??              CH            ??              CLOCK                    TON    ??                 IN           ??           input variable    ASCEND           ??           maximum positive slope    DESCEND           ??       )    maximum negative slope (non-negative!!)    TIMEBASE           ??       ?    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ??
           reset       OUT           ??       &    value of function with limited slope             ?U=^  ?    ????        	   RAMP_REAL           DIFF             ??              OLD_IN             ??              TB            ??              CET            ??              CLOCK                    TON    ??              probe             ??                 IN            ??           input variable    ASCEND            ??           maximum positive slope    DESCEND            ??       )    maximum negative slope (non-negative!!)    TIMEBASE           ??       ?    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ??
           reset       OUT            ??       &    value of function with limited slope             ?U=^  ?    ????           STATISTICS_INT           SUM            ??              COUNTER            ??                 IN           ??           input value   RESET            ??       J    reset: average set to 0, min and max to minimum and maximum possible INTs      MN    ?     ??           minimum value   MX     ???   ??	           maximum value   AVG           ??
           average value            ?U=^  ?    ????           STATISTICS_REAL           COUNTER            ??              SUM             ??                 IN            ??           input value   RESET            ??       K    reset: average set to 0, min and max to minimum and maximum possible REALs      MN    ??a   3E+38   ??           minimum value   MX    ?   1E-37   ??	           maximum value   AVG            ??
           average value            ?U=^  ?    ????           UNPACK               B           ??           byte to be unpacked       B0            ??           value of bit 0    B1            ??           value of bit 1    B2            ??	           value of bit 2    B3            ??
           value of bit 3    B4            ??           value of bit 4    B5            ??           value of bit 5    B6            ??           value of bit 6    B7            ??           value of bit 7             ?U=^  ?    ????           VARIANCE           Z            ??              A             ??              B             ??                 IN            ??           input variable    RESET            ??           reset       OUT            ??       
    variance             ?U=^  ?    ????           VERSION_UTIL               B            ??                 Version_Util                                     ?U=^  ?    ????    D   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         ?U=^  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??	           Load Start Value    PV           ??
           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             ?U=^  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??	           Reset Counter to 0    PV           ??
           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             ?U=^  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??
       
    Count Up    CD            ??           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             ?U=^  ?   ????           DELETE               STR               ??              LEN           ??	              POS           ??
                 DELETE                                         ?U=^  ?   ????           F_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             ?U=^  ?   ????           FIND               STR1               ??	              STR2               ??
                 FIND                                     ?U=^  ?   ????           INSERT               STR1               ??	              STR2               ??
              POS           ??                 INSERT                                         ?U=^  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         ?U=^  ?   ????           LEN               STR               ??                 LEN                                     ?U=^  ?   ????           MID               STR               ??              LEN           ??	              POS           ??
                 MID                                         ?U=^  ?   ????           R_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             ?U=^  ?   ????           REPLACE               STR1               ??	              STR2               ??
              L           ??              P           ??                 REPLACE                                         ?U=^  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         ?U=^  ?   ????           RS               SET            ??              RESET1            ??	                 Q1            ??                       ?U=^  ?   ????           RTC           M             ??              DiffTime            ??                 EN            ??              PDT           ??                 Q            ??              CDT           ??                       ?U=^  ?   ????           SEMA           X             ??                 CLAIM            ??
              RELEASE            ??                 BUSY            ??                       ?U=^  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??                       ?U=^  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??       2    is FALSE, PT seconds after IN had a falling edge    ET           ??           elapsed time             ?U=^  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??       0    is TRUE, PT seconds after IN had a rising edge    ET           ??           elapsed time             ?U=^  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??           The pulse    ET           ??       &    The current phase of the High-Signal             ?U=^  ?   ????               	   BIT_COUNT               IN           C               	   BIT_COUNT                                     ??;^  @    ????           D_TRUNC               X            O                  D_TRUNC                                     ??;^  @    ????        
   F_COPYPART                
   F_CopyPart                             
   stPartFrom                   ST_Part  b           The copied part - From   stPartTo                   ST_Part  b           Where to copy the part        ??;^  @    ????           F_MOVEPARTFORWARD           i            Z 	          indexer   j            Z 
          indexer          F_MovePartForward                                arrParts    	  
                      ST_Part          Z           Array of parts        ??;^  @    ????           FB_CONVEYOR_LEFT           bStartTrans             ?            
   bStopTrans             ?               bTranFinished             ?               bMachineReady             ?               bLocalReset             ?           Performs local reset   SFCReset             ?        B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            MAINLOOP                         	   _MAINLOOP                            WAITFORPART                            _WAITFORPART                            TRANSPORTTOEND                            _TRANSPORTTOEND                            PARTREADYTOPICKUP                            _PARTREADYTOPICKUP                            EXCHANGEISON                            _EXCHANGEISON                            WAITFORHANDSHAKE                            _WAITFORHANDSHAKE                            EXCHANGECOMPLETE                            _EXCHANGECOMPLETE                         	   UPDATEIOS                         
   _UPDATEIOS                            SFCRESETSTEP                            _SFCRESETSTEP                               bRun            ?               I_Reset            ?               I_PartEndSensor            ?            SMEMA Handshake Inputs    hiPartAvail_FromLeft            ?               hiRdyToReceive_FromRight            ? 	                 hoReadyToRecieve_ToLeft            ?               hoPartAvail_ToRight            ?               O_ConvRunning            ?                        g=^  @    ????           FB_CONVEYOR_RIGHT           bStartTrans             ?            
   bStopTrans             ?               bTranFinished             ?               bMachineReady             ?               bLocalReset             ?           Performs local reset   SFCReset             ?        B   Resets the execution of SFC to init once this SFCFlag is set true    I_Sensor_PartInsideMachine             ?               INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            MAINLOOP                         	   _MAINLOOP                            WAITPARTFROMPREVIOUS                            _WAITPARTFROMPREVIOUS                            EXCHANGEISON                            _EXCHANGEISON                            TRANSPORTPARTINTOMACHINE                            _TRANSPORTPARTINTOMACHINE                         	   PARTATEND                         
   _PARTATEND                            TRANSFERCOMPLETE                            _TRANSFERCOMPLETE                         	   UPDATEIOS                         
   _UPDATEIOS                            SFCRESETSTEP                            _SFCRESETSTEP                               bRun            ?               I_Reset            ?               I_PartEndSensor            ?            SMEMA Handshake Inputs    hiPartAvail_FromLeft            ?               hiRdyToReceive_FromRight            ? 	                 hoReadyToRecieve_ToLeft            ?               hoPartAvail_ToRight            ?               O_ConvRunning            ?                        sb=^  @    ????           FB_CONVEYORSFC           bStartTrans             \            
   bStopTrans             \               bTranFinished             \               bMachineReady             \               bLocalReset             \           Performs local reset   SFCReset             \        B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            MAINLOOP                         	   _MAINLOOP                            WAITFORPART                            _WAITFORPART                            PARTAVALIBLE                            _PARTAVALIBLE                            TRANSPORTTOEND                            _TRANSPORTTOEND                            READYFOREXCHANGE                            _READYFOREXCHANGE                            EXCHANGEHAPPENING                            _EXCHANGEHAPPENING                            HANDOVERCTRL                            _HANDOVERCTRL                         	   UPDATEIOS                         
   _UPDATEIOS                            SFCRESETSTEP                            _SFCRESETSTEP                               bRun            \               I_Reset            \               I_PartEndSensor            \            SMEMA Handshake Inputs    hiPartAvail_FromLeft            \               hiRdyToReceive_FromRight            \ 	                 hoReadyToRecieve_ToLeft            \               hoPartAvail_ToRight            \               O_ConvRunning            \                        ?\=^  @    ????           FB_DRILL     /      bDrillHomed             } &              bStartCycle             } '              bLocalReset             } (          Performs local reset   SFCReset             } )       B   Resets the execution of SFC to init once this SFCFlag is set true    tonMoveDelay                    TON    } *           
   tMoveDelay    ?      } +              fas             } ,              INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            MAINLOOP                         	   _MAINLOOP                            MOVETOINITPOS                            _MOVETOINITPOS                         
   INIT_MANIP                           _INIT_MANIP                           DRIVETOHOME                            _DRIVETOHOME                            OPENFIXTURE_INIT                            _OPENFIXTURE_INIT                            DONE                            _DONE                            WAITFORPART                            _WAITFORPART                            WAITFORDELIVERY                            _WAITFORDELIVERY                            EXECUTECYCLE                            _EXECUTECYCLE                            CLOSEFIXTURE                            _CLOSEFIXTURE                            MOVEDRILLDOWN                            _MOVEDRILLDOWN                         	   EMPTYWAIT                         
   _EMPTYWAIT                            MOVEDRILLUP                            _MOVEDRILLUP                            STOPDRILLOPENFIXTURE                            _STOPDRILLOPENFIXTURE                            OPENFIXTURE                            _OPENFIXTURE                            WAITFORPICKUP                            _WAITFORPICKUP                         	   UPDATEIOS                         
   _UPDATEIOS                            SFCRESETSTEP                            _SFCRESETSTEP                               I_Enable            }               I_Reset            }            SMEMA HandshakeInputs    hiPartAvail_FromLeft            }               hiRdyToReceive_FromRight            }            Drill Sensor    I_Drill_Limit_Up            }           Drill: Limit: Up   I_Drill_Limit_Dn            }           Drill: Limit: Down   I_Drill_Limit_Home            }           Drill: Home sensor   I_Drill_Fixture_Open            }           Drill: Fixture is open   I_Drill_Fixture_Closed            }           Drill: Fixture is closed   fDrill_axZ_CurrPos            }           Drill: Z-axis: Current position   bDrill_axZ_InTargetPos            }        )   Drill: Z-axis: Target position is reached	      O_Drill_Spindle_On            }           Drill: Turn on drill spindle.   O_Drill_Fixture_Close            }        )   Drill: Closes Fixture. Controls the valve   bBusy            }            SMEMA HandshakeInputs    hoReadyToRecieve_ToLeft            }               hoPartAvail_ToRight            }            Drill Outputs    bDrill_axZ_Enable            }           Drill: Z-axis: enable   bDrill_axZ_Start            }            Drill: Z-axis: Start motion   fDrill_axZ_Velo            } !          Drill: Z-axis: Velocity   fDrill_axZ_TargetPos            } "          Drill: Z-axis: Target position            ?;=^  @    ????        	   FB_LIGHTS           bLocalReset             d           Performs local reset   SFCReset             d        B   Resets the execution of SFC to init once this SFCFlag is set true 	   fbBlinker                   BLINK    d               bBlinkEnable             d               blinkInterval    X     d               INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETSTEP                            _SFCRESETSTEP                            STOPPED                            _STOPPED                            RUNNING                            _RUNNING                         	   UPDATEIOS                         
   _UPDATEIOS                               bReset            d           Reset Request	   I_Running            d                  O_Light_Start            d           Light: Running   O_Light_Stop            d           Light: Stopped   O_Beacon_Red            d 	          Beacon Light: red   O_Beacon_Yellow            d 
          Beacon Light: yellow   O_Beacon_Green            d                        ??;^  @    ????           FB_MANIPULATOR     W      bPick             { -              bPicked             { .              bPlace             { /              bPlaced             { 0              bManipulatorHomed             { 1              bLocalReset             { 3          Performs local reset   SFCReset             { 4       B   Resets the execution of SFC to init once this SFCFlag is set true    tonMoveDelay                    TON    { 5              tonHomeDelay                    TON    { 6           
   tMoveDelay    ?      { 7           
   tHomeDelay    ?      { 8              INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            MAINLOOP                         	   _MAINLOOP                            MOVETOINITPOS                            _MOVETOINITPOS                         
   INIT_MANIP                           _INIT_MANIP                           STOP                            _STOP                         	   FINDLIMIT                         
   _FINDLIMIT                            DRIVETOHOME                            _DRIVETOHOME                            ZHOME                            _ZHOME                            DONE                            _DONE                            WAITTOTRANSFER_PICK                            _WAITTOTRANSFER_PICK                            EXCHANGEPICK                            _EXCHANGEPICK                            PICK                           _PICK                        
   WAITTOPICK                            _WAITTOPICK                         
   MOVEZ_PICK                            _MOVEZ_PICK                            TURNLEFT                         	   _TURNLEFT                            IDLEWAIT                         	   _IDLEWAIT                            APPROACH_PICK_LEFTMANIP                            _APPROACH_PICK_LEFTMANIP                            APPROACH_PICK_RIGHTMANIP                            _APPROACH_PICK_RIGHTMANIP                            CLOSEGRIPPER_PICK                            _CLOSEGRIPPER_PICK                            DEPART_PICK                            _DEPART_PICK                            DONE_PICK_UP                            _DONE_PICK_UP                            WAITTOTRANSFER_PLACE                            _WAITTOTRANSFER_PLACE                            PLACE                            _PLACE                         
   INIT_PLACE                           _INIT_PLACE                           WAITTOPLACE                            _WAITTOPLACE                         	   TURNRIGHT                         
   _TURNRIGHT                            PLACEDECISION                            _PLACEDECISION                            PLACELEFTMANIP                            _PLACELEFTMANIP                            PLACERIGHTMANIP                            _PLACERIGHTMANIP                            OPENGRIPPER_PLACE                            _OPENGRIPPER_PLACE                            DEPARTPLACE                            _DEPARTPLACE                            TURNDECISION                            _TURNDECISION                            TURNLEFTAFTERPLACE                            _TURNLEFTAFTERPLACE                            REMAININPOS                            _REMAININPOS                         	   DONEPLACE                         
   _DONEPLACE                         	   UPDATEIOS                         
   _UPDATEIOS                            SFCRESETSTEP                            _SFCRESETSTEP                               I_Enable            {               I_Reset            {               b_LeftManip            {            SMEMA HandshakeInputs    hiPartAvail_FromLeft            {               hiRdyToReceive_FromRight            { 	           Manipulator Sensor    I_Mani_Limit_Up            {           Manipulator Left: Limit: Up   I_Mani_Limit_Dn            {           Manipulator Left: Limit: Down   I_Mani_Limit_Home            {           Manipulator Left: Home sensor   I_Mani_Turned_Left            {            Manipulator Left: Turned to left   I_Mani_Turned_Right            {        !   Manipulator Left: Turned to right   I_Mani_Gripper_Open            {        !   Manipulator Left: Gripper is open   I_fMani_axZ_CurrPos            {        *   Manipulator Left: Z-axis: Current position   I_bMani_axZ_InTargetPos            {        4   Manipulator Left: Z-axis: Target position is reached
      bBusy            {            SMEMA HandshakeInputs    hoReadyToRecieve_ToLeft            {               hoPartAvail_ToRight            {            Manipulator Outputs    O_Mani_Turn_Left            {         ;   Manipulator Left: Turn to left position. Controls the valve   O_Mani_Turn_Right            { !       <   Manipulator Left: Turn to right position. Controls the valve   O_Mani_Gripper_Close            { "       4   Manipulator Left: Closes Gripper. Controls the valve   O_bMani_axZ_Enable            { %           Manipulator Left: Z-axis: enable   O_bMani_axZ_Start            { &       &   Manipulator Left: Z-axis: Start motion   O_fMani_axZ_Velo            { '       "   Manipulator Left: Z-axis: Velocity   O_fMani_axZ_TargetPos            { (       )   Manipulator Left: Z-axis: Target position            ?=^  @    ????           FB_PICK           O_bMani_axZ_Enable             ?               bPicked             ?               INIT                           _INIT                        
   WAITTOPICK                            _WAITTOPICK                         
   MOVEZ_PICK                            _MOVEZ_PICK                            TURNLEFT                         	   _TURNLEFT                            STEP5                            _STEP5                            APPROACH_PICK_LEFTMANIP                            _APPROACH_PICK_LEFTMANIP                            APPROACH_PICK_RIGHTMANIP                            _APPROACH_PICK_RIGHTMANIP                            CLOSEGRIPPER                            _CLOSEGRIPPER                            DEPART                            _DEPART                            PICKDONE                         	   _PICKDONE                               bEmergencyClear            ?           Emergency cleared   bReset            ?           Reset signal   bExecute            ?           Start signal   bStop            ?           Stop signal   bLeftManipulator            ?                  bDone            ? 
          Action Done   bBusy            ?           Busy            ??;^  @    ????           FB_SFC_EXAMPLE           bLocalReset             ?           Performs local reset   SFCReset             ? 	       B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETSTEP                            _SFCRESETSTEP                            MAINLOOP                         	   _MAINLOOP                         	   UPDATEIOS                         
   _UPDATEIOS                               bReset            ?           Reset Request                ??;^  @    ????           FB_SIMPLEMANAGER           rsEmergency                 RS    g            	   rsRunning                 RS    g               bResetRequired            g           reset is required      bEmergencyClear            g           Emergency cleared   bReset            g           Reset signal   bStart            g 	          Start signal   bStop            g 
          Stop signal      oEmergencyClear            g           Emergency is cleared   oRun            g        !   System can be started and running            ??;^  @    ????           FB_SIMU_DRILL           fPos_height             `            Manipulators height position   fPos_Y             `            Manipulator's Y position
   fBasePos_Y             `           Position of manipulator base   iState_Lift            `            State of beam model   iRPMCurrent            ` !          Current RPM   fPosJawDiff             ` "       5   Right fixture jaw position. 0 position when grasping.   fPOS_MAX_DOWN      *C   170   ` %          Max position for down movement   iSPINDLE_RPM_MAX    X     ` &          Max RPM for Spindle      bEnable           `           Enable drill   bLift_Start            ` 	       4   Triggers and starts the lift movement at rising edge
   fLift_Velo       A   10   ` 
          Velocity   fLift_TargetPos            `           Target position   bDrillOn            `           Drill is On   bFixture_Close            `           Close Fixture	   bInitDone            `        )   Initialisation done for simulated machine      bLift_InTarget            `           Lift has reached the target   fLift_CurrentPos            `           Current position of the lift
   bLimit_Top            `           Height position at top limit   bLimit_Bottom            `           Height position at bottom limit   bHome_Sensor            `           Height position at home limit   bFixture_Open            `           Fixture is Open   bFixture_Closed            `           Fixture is Closed      stPart_inFixture                   ST_Part  `           Data structure for the part        ??;^  @    ????           FB_SIMU_MANIPULATOR        
   fPos_angle      ?B   70    /           Angle of beam [deg]   fPos_height             /            Manipulators height position   fPos_X             /             Manipulator's X position   fPos_Y             / !           Manipulator's Y position
   fBasePos_Y             / "          Position of manipulator base   iState_Lift            / #          State of beam model   fPos_Beam_L             / $          Beam position left end   fPos_Beam_R             / %          Beam position right end   bGripperClosed             / &          Gripper is closed   fPosFingerDiff             / '       0   Right finger position. 0 poistion when grasping.	   bInitDone             / (       )   Initialisation done for simulated machine   iBEAM_LENGTH    x      / +          length of the beam   fPOS_MAX_DOWN      \C   220   / ,          Max position for down movement      bEnable           /           Enable manipulator   bLift_Start            / 	       4   Triggers and starts the lift movement at rising edge
   fLift_Velo       A   10   / 
          Velocity   fLift_TargetPos            /           Target position
   bBeam_Left            /           Turn beam at left   bBeam_Right            /           Turn beam at right   bGripper_Close            /           Close Gripper      bGripperIsOpen            /           Gripper is open   bLift_InTarget            /           Lift has reached the target   fLift_CurrentPos            /           Current position of the lift
   bLimit_Top            /           Height position at top limit   bLimit_Bottom            /           Height position at bottom limit   bHome_Sensor            /           Height position at home limit   bBeamAtRight            /           Beam turned into right limit   bBeamAtLeft            /           Beam turned into left limit      stPart_inGripper                   ST_Part  /           Data structure for the part        ??;^  @    ????           FRACT               x            Q                  FRACT                                      ??;^  @    ????           PRG_INITMANIPULATOR           bLocalReset             k           Performs local reset   SFCReset             k        B   Resets the execution of SFC to init once this SFCFlag is set true    ton_MoveDelay                    TON    k            
   tDelayTime    ?      k               ton_ConveyorDelay             k               INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETSTEP                            _SFCRESETSTEP                            MAINLOOP                         	   _MAINLOOP                            STOPPED                            _STOPPED                            MOVEDOWN                         	   _MOVEDOWN                            DRIVETOHOMELIMIT                            _DRIVETOHOMELIMIT                            DRIVETOCENTER                            _DRIVETOCENTER                         	   UPDATEIOS                         
   _UPDATEIOS                               bReset            k           Reset Request   bInitToLeft            k           ManipulatorHome Orientation   I_Mani_Limit_Up            k           Manipulator Left: Limit: Up   I_Mani_Limit_Home            k           Manipulator Left: Home sensor   I_Mani_Turned_Left            k            Manipulator Left: Turned to left   I_Mani_Turned_Righ            k        !   Manipulator Left: Turned to right   I_Mani_Gripper_Open            k 	       !   Manipulator Left: Gripper is open      bDone            k               O_Mani_Turn_Left            k        ;   Manipulator Left: Turn to left position. Controls the valve   O_Mani_Turn_Right            k        <   Manipulator Left: Turn to right position. Controls the valve   O_Mani_Gripper_Close            k                        ??;^  @    ????           PRG_MAIN           fbSFCExample                           FB_SFC_Example    .               fbMngr        	               FB_SimpleManager    .               fbLights                                   	   FB_Lights    .               fbConveyorLeft        $                                          FB_Conveyor_Left    .               fbConveyorRight        #                                         FB_Conveyor_Right    .               fbManipulatorLeft        n                                                                                                                    FB_Manipulator   .               fbDrill        C                                                                         FB_Drill    . 	              fbManipulatorRight        n                                                                                                                    FB_Manipulator   . 
                               ?e=^  @   ????           PRG_SFC_EXAMPLE           bLocalReset             P           Performs local reset   SFCReset             P 	       B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETSTEP                            _SFCRESETSTEP                            MAINLOOP                         	   _MAINLOOP                         	   UPDATEIOS                         
   _UPDATEIOS                               bReset            P           Reset Request                ??;^  @    ????           PRG_SIMULATOR     #      bBtn_EmergencyStop             -           Emergency Stop button   rsEmergencyClear                 RS    -        '   RS - flip-flop for Emergency clear info   i            -               c            -               fbManipLeft                                           FB_Simu_Manipulator    -           Left simulated manipulator    fbManipRight                                           FB_Simu_Manipulator    -           Right simulated manipulator    fbDrill                                     FB_Simu_Drill    -           Drill machine simulated   arrParts_ConvIn   	  
                      ST_Part            -           Parts on input conveyour   arrParts_ConvOut   	  
                      ST_Part            -           Parts on output conveyour   stPart_inMLeftGripper                  ST_Part    -           Data structure for the part   stPart_inMRightGripper                  ST_Part    -           Data structure for the part   stPart_inDrillFixture                  ST_Part    -           Data structure for the part   bAddPartOnConvIn             -           Adds new part on conveyor   bClearErrors             -           Clear Errors   bClearSystem             -           Clears system from parts 
   RT_AddPart                 R_TRIG    -               wError_ManipL            -        (   Error bits between convIn and Manip_Left   wError_Drill            -           Error bits at drill   wError_ManipR            -        (   Error bits between convIn and Manip_Left	   iState_IF   	                         -        o   State variable; Exchange between 1=ConvIn->ManipL, 2=ManipL->Drill, 3=Drill->ManipR, 4=ManipR->ConvOut, 5=Drill   tofPartLeavesConvOut                    TOF    -           Off timer for out sensor   bMANUAL_CONTROLS            - "          Manual override for controls   fPOS_MANIP_CONV_NO_PART_SAFE      ?B   90   - #       /   Manipulator on conv with NO part - Safe to move   fPOS_MANIP_CONV_WITH_PART_SAFE      ?B   70   - $       ,   Manipulator on conv with part - Safe to move   fPOS_MANIP_CONV_PICK_LEVEL      ?B   120   - %       $   Manipulator Pick/place level on conv   fPOS_MANIP_DRILL_WITH_PART_SAFE      TB   53   - &       4   Manipulator coming to drill with part - Safe to move   fPOS_MANIP_DRILL_NO_PART_SAFE      8B   46   - '       7   Manipulator coming to drill with NO part - Safe to move   fPOS_MANIP_DRILL_PICK_LEVEL      ?B   74   - (       %   Manipulator Pick/place level on Drill   fPOS_MANIP_PICK_TOLERANCE      ?A   30   - )       @   Manipulator Pick level tolerance from the part (=fingers length)   fPART_HEIGH      HB   50   - *          Part height   fPART_PICK_TOLERANCE       A   10   - +       3   Part pick & place (negative) tolerance from Levels.   fPART_HOLE_DEPTH_REQ       B   40   - ,          Part required Hole depth   fPART_HOLE_DEPTH_MAX      4B   45   - -          Max Hole depth   fPOS_DRILL_BIT_TOUCHES      ?B   100   - .          Drill touches the part   iDRILL_SPINDLE_MIN_FOR_DRILLING    ?     - /       "   Minimum spindle speed for drilling                    ??;^  @    ????           RDM           tn            U               tc            U                  last            U                  RDM                                      ??;^  @    ????           T_PLC_MS           debug            V               N           V               offset           V               tx            V                      T_PLC_MS                                     ??;^  @    ????            
 B   ?   {   ?   |   ?   ?   ?   J   ( ?      K   ??     K   ??     K   ??     K   ??                 ??         +     ??localhost ?ژ?w          ???H ?`?????p?H?  ? ?? $? E1?wF?????????w???w    
?@             
?@     ? tV? ??   ????? ??w ??F  ?? ?? ??? ????    )@?           
?@ 4?     
?@            
?@     ? tV? ? ?? tV? ??b?????? }?     ,   ,                                                        K    X   C:\Local\nikke\Data\prog\CoDeSys\DrillMachineExercise\drillMachine_POLKU_20170308.pro @   ??;^??     , CONF?OtF
        !      @     CoDeSys 1-2.2   ????  ????????                                ?      
   ?         ?         ?          ?                    "          $                                                   '          (          ?          ?          ?          ?          ?         ?          ?          ?          ?         ?          ?          ?          ?          ?         ?      ?   ?       P  ?          ?         ?       ?  ?                    ~          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?       @  ?       @  ?       @  ?       @  ?       @  ?       @  ?         ?         ?          ?       ?  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         ?          ?         ?      
   ?         ?         ?         ?         ?         ?          ?          ?         ?      ?????          ?          ?      (                                                                        "         !          #          $         ?          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          ?          ?          l          o          p          q          r          s         u          ?          v         ?          ?      ????|         ~         ?         x          z      (   ?          ?         %         ?          ?          ?         @         ?          ?          ?         &          ?          	                   ?          ?          ?         ?          ?         ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?                            I         J         K          	          L         M          ?                             ?          P         Q          S          )          	          	          ?           	          +	       @  ,	       @  -	      ????Z	      ????[	      ????????        ????????????????  ????????                                                   ?  	   	   Name                 ????
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
   Value                Variable       Min                Variable       Max                Variable                         ????  ????????               ?   _Dummy@    @   @@    @   @             ??@             ??@@   @     ?v@@   ; @+   ????  ????????                                  ?v@      4@   ?             ?v@      D@   ?                       ?       @                           ?f@      4@     ?f@                ?v@     ?f@     @u@     ?f@        ???           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    ??;^	?U=^     ????????           VAR_GLOBAL
END_VAR
                                                                                  "   ,  ? =E             Defaultd         PRG_MAIN();PRG_Simulator();????               ??;^                 $????, 3 ?^?               ????????           Watch0 =Y4^	=Y4^      ????????           .O_Light_Start
             	??;^                        VAR_CONFIG
END_VAR
                                                                                   '               , &?9d           Global_Variables ??;^	??;^        ??            T  VAR_GLOBAL
	(*Math constants*)
	MATH 				: CONSTANTS_MATH;		(*Mathematical constants from OSCAT 333*)
	lastRandom			: REAL;		(*Last Random number*)

	(*ConveyourIn - Left*)
	I_ConvIn_PartPresent: BOOL;	(*Sensor: Part is present*)
	O_ConvIn_MotON		: BOOL;	(*Conveyour In: Motor ON*)

	(*ConveyourOut - Right*)
	I_ConvOut_PartPresent: BOOL;(*Sensor: Part is present*)
	O_ConvOut_MotON		: BOOL;	(*Conveyour Out: Motor ON*)

	(*Manipulator - Left*)
	I_ManiL_Limit_Up	: BOOL;	(*Manipulator Left: Limit: Up*)
	I_ManiL_Limit_Dn	: BOOL;	(*Manipulator Left: Limit: Down*)
	I_ManiL_Limit_Home	: BOOL;	(*Manipulator Left: Home sensor*)
	I_ManiL_Turned_Left	: BOOL;	(*Manipulator Left: Turned to left*)
	I_ManiL_Turned_Right: BOOL;	(*Manipulator Left: Turned to right*)
	I_ManiL_Gripper_Open: BOOL;	(*Manipulator Left: Gripper is open*)

	O_ManiL_Turn_Left	: BOOL;	(*Manipulator Left: Turn to left position. Controls the valve*)
	O_ManiL_Turn_Right	: BOOL;	(*Manipulator Left: Turn to right position. Controls the valve*)
	O_ManiL_Gripper_Close: BOOL;(*Manipulator Left: Closes Gripper. Controls the valve*)

	bManiL_axZ_Enable	: BOOL;	(*Manipulator Left: Z-axis: enable*)
	bManiL_axZ_Start	: BOOL;	(*Manipulator Left: Z-axis: Start motion*)
	fManiL_axZ_Velo		: REAL;	(*Manipulator Left: Z-axis: Velocity*)
	fManiL_axZ_TargetPos: REAL;	(*Manipulator Left: Z-axis: Target position*)
	fManiL_axZ_CurrPos	: REAL;	(*Manipulator Left: Z-axis: Current position*)
	bManiL_axZ_InTargetPos	: BOOL;	(*Manipulator Left: Z-axis: Target position is reached*)

	(*Drilling Machine*)
	I_Drill_Limit_Up	: BOOL;	(*Drill: Limit: Up*)
	I_Drill_Limit_Dn	: BOOL;	(*Drill: Limit: Down*)
	I_Drill_Limit_Home	: BOOL;	(*Drill: Home sensor*)
	I_Drill_Fixture_Open: BOOL;	(*Drill: Fixture is open*)
	I_Drill_Fixture_Closed: BOOL;	(*Drill: Fixture is closed*)

	O_Drill_Spindle_On	: BOOL;	(*Drill: Turn on drill spindle.*)
	O_Drill_Fixture_Close: BOOL;(*Drill: Closes Fixture. Controls the valve*)

	bDrill_axZ_Enable	: BOOL;	(*Drill: Z-axis: enable*)
	bDrill_axZ_Start	: BOOL;	(*Drill: Z-axis: Start motion*)
	fDrill_axZ_Velo		: REAL;	(*Drill: Z-axis: Velocity*)
	fDrill_axZ_TargetPos: REAL;	(*Drill: Z-axis: Target position*)
	fDrill_axZ_CurrPos	: REAL;	(*Drill: Z-axis: Current position*)
	bDrill_axZ_InTargetPos	: BOOL;	(*Drill: Z-axis: Target position is reached*)

	(*Manipulator - Right*)
	I_ManiR_Limit_Up	: BOOL;	(*Manipulator Right: Limit: Up*)
	I_ManiR_Limit_Dn	: BOOL;	(*Manipulator Right: Limit: Down*)
	I_ManiR_Limit_Home	: BOOL;	(*Manipulator Right: Home sensor*)
	I_ManiR_Turned_Left	: BOOL;	(*Manipulator Right: Turned to left*)
	I_ManiR_Turned_Right: BOOL;	(*Manipulator Right: Turned to right*)
	I_ManiR_Gripper_Open: BOOL;	(*Manipulator Right: Gripper is open*)

	O_ManiR_Turn_Left	: BOOL;	(*Manipulator Right: Turn to left position. Controls the valve*)
	O_ManiR_Turn_Right	: BOOL;	(*Manipulator Right: Turn to right position. Controls the valve*)
	O_ManiR_Gripper_Close: BOOL;(*Manipulator Right: Closes Gripper. Controls the valve*)

	bManiR_axZ_Enable	: BOOL;	(*Manipulator Right: Z-axis: enable*)
	bManiR_axZ_Start	: BOOL;	(*Manipulator Right: Z-axis: Start motion*)
	fManiR_axZ_Velo		: REAL;	(*Manipulator Right: Z-axis: Velocity*)
	fManiR_axZ_TargetPos: REAL;	(*Manipulator Right: Z-axis: Target position*)
	fManiR_axZ_CurrPos	: REAL;	(*Manipulator Right: Z-axis: Current position*)
	bManiR_axZ_InTargetPos	: BOOL;	(*Manipulator Right: Z-axis: Target position is reached*)


	(*Control panel and indications*)
	I_EmergencyClear	: BOOL;	(*Emergency Circuit is clear*)
	I_Btn_Reset		: BOOL;	(*Button: Reset*)
	I_Btn_Start		: BOOL;	(*Button: Start*)
	I_Btn_Stop		: BOOL;	(*Button: Stop*)

	O_Light_Start	: BOOL;	(*Light: Running*)
	O_Light_Stop	: BOOL;	(*Light: Stopped*)
	O_Beacon_Red	: BOOL;	(*Beacon Light: red*)
	O_Beacon_Yellow	: BOOL;	(*Beacon Light: yellow*)
	O_Beacon_Green	: BOOL;	(*Beacon Light: green*)

(* -------------HMI INPUTS (from HMI to PLC) -------------------*)
	HMI_uModeReq		: UINT :=5;		(*Mode request. DEFAULT:PRODUCTION1*)
(* -------------HMI OUTPUTS (from PLC to HMI) -------------------*)
	PLC_uModeCurrent	: UINT;			(*Current Mode*)
	PLC_uStateCurrent	: UINT;			(*Current State*)

(*-----------------------FUNCTION BLOCKS----------------*)
(*	fbStateModel		: FB_PackMLStateModel_ST;	(*FB for executing PackML state model*) *)
END_VAR
                                                                                               '              , N N ??           Variable_Configuration ??;^	??;^       ??               VAR_CONFIG
END_VAR
                                                                                                 ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               4     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             System      ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '          X     ????????           CONSTANTS_MATH ??;^	??;^      ????????        [  TYPE CONSTANTS_MATH :
STRUCT
	PI : REAL := 	3.14159265358979323846264338327950288;		(* Kreiszahl PI *)
	PI2 : REAL := 	6.28318530717958647692528676655900576;	(* PI * 2 *)
	PI4 : REAL :=  12.56637061435917295385057353311801152;	(* PI * 4 *)
	PI05 : REAL :=  1.5707963267949;							(* PI / 2 *)
	PI025 : REAL := 0.785398163397448;							(* PI / 4 *)
	PI_INV : REAL := 0.318309886183791;						(* 1 / PI *)
	E : REAL := 	2.71828182845904523536028747135266249;		(* Euler constant e *)
	E_INV : REAL := 0.367879441171442;							(* 1 / e *)
	SQ2 : REAL :=	1.4142135623731;							(* Wurzel von 2 *)
	FACTS : ARRAY[0..12] OF DINT := 1,1,2,6,24,120,720,5040,40320,362880,3628800,39916800,479001600;
END_STRUCT
END_TYPE



(*
From OSCAT 333
revision history
hm	26.10.2008	rev 1.0
	original version

hm	26. mar. 2011	rev 1.1
	added array facts
*)             1   ,   -\           ST_Part ??;^	??;^      ????????        ?   TYPE ST_Part :
(*Data structure for the simulated parts *)
STRUCT
	bExists		: BOOL;	(* Part exists *)
	bHasHole	: BOOL;	(* Part has hole *)
	posX		: REAL;	(* X-position of the part*)
	posY		: REAL;	(* Y-position of the part*)
END_STRUCT
END_TYPE              C     ????????        	   BIT_COUNT ??;^	??;^      ????????        :  FUNCTION BIT_COUNT : INT
VAR_INPUT
	IN : DWORD;
END_VAR
VAR
END_VAR
(*
OSCAT 333
version 1.1	10 sep 2007
programmer 	hugo
tested by		tobias

BIT_COUNT counts the amount True of bits in a dword.
for exabple: bit_count(3) returns 2 because two bits (bits 0 and 1) are true and all others are false. 
*)8  WHILE in > 0 DO
	IF in.0 THEN Bit_Count := Bit_Count + 1; END_IF;
	in := SHR(in,1);
END_WHILE;



(* revision history
5.7.2007	rev 1.0		original version

10.9.2007	rev 1.1		hm
	changed algorithm for better performace
	the execution time has reduced by a factor of 5
	deleted unused variable temp
*)               O     ????????           D_TRUNC ??;^	??;^      ????????        y  FUNCTION D_TRUNC : DINT
VAR_INPUT
	X : REAL;
END_VAR
VAR
END_VAR
(*
From OSCAT 333
version 1.2	10. mar. 2009
programmer 	hugo
tested by		oscat

d_trunc truncates a real to a dint 1.5 will be 1 and -1.5 will be -1
d_trunc is necessary because many systems do not offer a trunc to a dint
also real_to_dint will not deliver the same result on different systems

*)?  D_TRUNC := REAL_TO_DINT(X);
IF X > 0.0 THEN
	IF DINT_TO_REAL(D_TRUNC) > X THEN D_TRUNC := D_TRUNC - 1; END_IF;
ELSE
	IF DINT_TO_REAL(D_TRUNC) < X THEN D_TRUNC := D_TRUNC + 1; END_IF;
END_IF;


(* for systems that support a dint truncation this routine can be replaced by trunc() *)


(* revision history
hm	21. mar. 2008	rev 1.0
	original version

hm	31. oct. 2008	rev 1.1
	optimized performance

hm	10. mar. 2009	rev 1.2
	real constants updated to new systax using dot
*)               b   , ? ? /4        
   F_CopyPart ??;^	??;^      ????????        ?   FUNCTION F_CopyPart : BOOL
(*Moves part data from part to part*)
VAR_INPUT
END_VAR
VAR_IN_OUT
	stPartFrom : ST_Part;	(*The copied part - From*)
	stPartTo : ST_Part;	(*Where to copy the part*)
END_VAR
VAR
END_VAR?   (*Moves part data from part to part*)
stPartTo.bExists := stPartFrom.bExists;
stPartTo.bHasHole := stPartFrom.bHasHole;
stPartTo.posX := stPartFrom.posX;
stPartTo.posY := stPartFrom.posY;

F_CopyPart:=TRUE;               Z   , ? ? !?           F_MovePartForward ??;^	??;^      ????????        ?   FUNCTION F_MovePartForward : BOOL
(*Moves parts forward on conveyour, if possible*)
VAR_INPUT
END_VAR
VAR_IN_OUT
	arrParts : ARRAY [0..10] OF ST_Part;	(*Array of parts*)
END_VAR
VAR
	i : INT;	(*indexer*)
	j : INT;	(*indexer*)
END_VARA  (*Moves parts forward as much there is free places*)
FOR i:= 0 TO 9 DO
	j := i +1;
	IF NOT arrParts[i].bExists THEN
		IF arrParts[j].bExists THEN
			F_CopyPart(arrParts[j], arrParts[i]);
			arrParts[j].bExists := FALSE;
			arrParts[j].bHasHole := FALSE;
		END_IF;
	END_IF;
END_FOR;

F_MovePartForward := TRUE;               ?   , L   ?z           FB_Conveyor_Left Ç=^	g=^      ????????        ?  FUNCTION_BLOCK FB_Conveyor_Left
VAR_INPUT
	bRun		 				: BOOL;
	I_Reset		 			: BOOL;
	I_PartEndSensor 			: BOOL;

	(* SMEMA Handshake Inputs *)
	hiPartAvail_FromLeft			: BOOL;
	hiRdyToReceive_FromRight	: BOOL;
END_VAR
VAR_OUTPUT
	(* SMEMA Handshake Outputs *)
	hoReadyToRecieve_ToLeft	: BOOL;
	hoPartAvail_ToRight			: BOOL;
	O_ConvRunning			       : BOOL;
END_VAR
VAR
	bStartTrans				: BOOL := FALSE;
	bStopTrans				: BOOL := FALSE;
	bTranFinished			: BOOL := FALSE;
	bMachineReady			: BOOL := FALSE;
	bLocalReset				: BOOL := FALSE;	(*Performs local reset*)
	SFCReset 				: BOOL := FALSE;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init ?     ????????           Action Init Ç=^B   SFCReset := FALSE;
bLocalReset	:= FALSE;
O_ConvRunning := FALSE;       NOT I_Reset           WaitForSFCReset              MainLoop ?     ????????           Action MainLoop Ç=^!   hoPartAvail_toRight := FALSE;

       bRun         WaitForPart ?     ????????           Action WaitForPart Ç=^    hoReadyToRecieve_ToLeft := TRUE;       hiPartAvail_FromLeft         TransportToEnd ?     ????????           Action TransportToEnd Ç=^   O_ConvRunning := TRUE;       I_PartEndSensor         PartReadyToPickup ?     ????????           Action PartReadyToPickup Ç=^   hoPartAvail_ToRight := TRUE;       hiRdyToReceive_FromRight         ExchangeIsOn         NOT I_PartEndSensor         WaitForHandshake ?     ????????           Action WaitForHandshake Ç=^   hoPartAvail_ToRight := FALSE;       NOT hiRdyToReceive_FromRight         ExchangeComplete         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       bLocalReset OR I_Reset         SFCResetStep ?     ????????           Action SFCResetStep Ç=^   SFCReset := TRUE;       FALSE     Initd                  ?   ,     ?6           FB_Conveyor_Right sb=^	sb=^      ????????        ?  FUNCTION_BLOCK FB_Conveyor_Right
VAR_INPUT
	bRun		 				: BOOL;
	I_Reset		 			: BOOL;
	I_PartEndSensor 			: BOOL;

	(* SMEMA Handshake Inputs *)
	hiPartAvail_FromLeft			: BOOL;
	hiRdyToReceive_FromRight	: BOOL;
END_VAR
VAR_OUTPUT
	(* SMEMA Handshake Outputs *)
	hoReadyToRecieve_ToLeft	: BOOL;
	hoPartAvail_ToRight			: BOOL;
	O_ConvRunning			       : BOOL;

END_VAR
VAR
	bStartTrans				: BOOL := FALSE;
	bStopTrans				: BOOL := FALSE;
	bTranFinished			: BOOL := FALSE;
	bMachineReady			: BOOL := FALSE;
	bLocalReset				: BOOL := FALSE;	(*Performs local reset*)
	SFCReset 				: BOOL := FALSE;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
	I_Sensor_PartInsideMachine: BOOL;
END_VAR       Init ?     ????????           Action Init 8b=^B   SFCReset := FALSE;
bLocalReset	:= FALSE;
O_ConvRunning := FALSE;       NOT I_Reset           WaitForSFCReset              MainLoop ?     ????????           Action MainLoop 8b=^B   hoPartAvail_toRight := FALSE;
hoReadyToRecieve_ToLeft := FALSE;
       bRun         WaitPartFromPrevious ?     ????????           Action WaitPartFromPrevious 8b=^"   hoReadyToRecieve_ToLeft := TRUE;
       hiPartAvail_FromLeft         ExchangeIsOn ?     ????????           Action ExchangeIsOn 8b=^   O_ConvRunning := TRUE;   ?     ????????           Action ExchangeIsOn - Exit 8b=^   O_ConvRunning := FALSE;   NOT hiPartAvail_FromLeft         TransportPartIntoMachine ?     ????????           Action TransportPartIntoMachine 8b=^   O_ConvRunning := TRUE;       I_PartEndSensor      	   PartAtEnd ?     ????????           Action PartAtEnd 8b=^5   O_ConvRunning := FALSE;
hoPartAvail_ToRight := TRUE;       NOT I_PartEndSensor         TransferComplete         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       bLocalReset OR I_Reset         SFCResetStep ?     ????????           Action SFCResetStep 8b=^   SFCReset := TRUE;       FALSE     Initd                  \   , ?  ?           FB_ConveyorSFC b]=^	?\=^      ????????        ?  FUNCTION_BLOCK FB_ConveyorSFC
VAR_INPUT
	bRun		 				: BOOL;
	I_Reset		 			: BOOL;
	I_PartEndSensor 			: BOOL;

	(* SMEMA Handshake Inputs *)
	hiPartAvail_FromLeft			: BOOL;
	hiRdyToReceive_FromRight	: BOOL;
END_VAR
VAR_OUTPUT
	(* SMEMA Handshake Outputs *)
	hoReadyToRecieve_ToLeft	: BOOL;
	hoPartAvail_ToRight			: BOOL;
	O_ConvRunning			       : BOOL;
END_VAR
VAR
	bStartTrans				: BOOL := FALSE;
	bStopTrans				: BOOL := FALSE;
	bTranFinished			: BOOL := FALSE;
	bMachineReady			: BOOL := FALSE;
	bLocalReset				: BOOL := FALSE;	(*Performs local reset*)
	SFCReset 				: BOOL := FALSE;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init ]     ????????           Action Init b]=^B   SFCReset := FALSE;
bLocalReset	:= FALSE;
O_ConvRunning := FALSE;       NOT I_Reset           WaitForSFCReset              MainLoop x     ????????           Action MainLoop b]=^@   hoPartAvail_toRight := FALSE;
hoReadyToRecieve_ToLeft := FALSE;       bRun         WaitForPart ~     ????????           Action WaitForPart b]=^    hoReadyToRecieve_ToLeft := TRUE;       hiPartAvail_FromLeft         PartAvalible         NOT I_PartEndSensor         TransportToEnd ?     ????????           Action TransportToEnd b]=^   O_ConvRunning := TRUE;   ?     ????????           Action TransportToEnd - Exit b]=^   O_ConvRunning := FALSE;   I_PartEndSensor         ReadyForExchange ?     ????????           Action ReadyForExchange b]=^   hoPartAvail_ToRight	:= TRUE;       hiRdyToReceive_FromRight         ExchangeHappening ?     ????????           Action ExchangeHappening b]=^   hoPartAvail_ToRight := TRUE;       NOT hiRdyToReceive_FromRight         HandOverCtrl         NOT I_PartEndSensor     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       bLocalReset OR I_Reset         SFCResetStep c     ????????           Action SFCResetStep b]=^   SFCReset := TRUE;       FALSE     Initd                  }   , ?????           FB_Drill ?;=^	?;=^      ????????          FUNCTION_BLOCK FB_Drill
VAR_INPUT
	I_Enable		 				: BOOL;
	I_Reset		 				: BOOL;

	(* SMEMA HandshakeInputs *)
	hiPartAvail_FromLeft			: BOOL;
	hiRdyToReceive_FromRight	: BOOL;

	(* Drill Sensor *)
	I_Drill_Limit_Up				: BOOL;	(*Drill: Limit: Up*)
	I_Drill_Limit_Dn				: BOOL;	(*Drill: Limit: Down*)
	I_Drill_Limit_Home			: BOOL;	(*Drill: Home sensor*)
	I_Drill_Fixture_Open			: BOOL;	(*Drill: Fixture is open*)
	I_Drill_Fixture_Closed		: BOOL;	(*Drill: Fixture is closed*)

	(* Drill Inputs Controls *)
	fDrill_axZ_CurrPos			: REAL;	(*Drill: Z-axis: Current position*)
	bDrill_axZ_InTargetPos		: BOOL;	(*Drill: Z-axis: Target position is reached*)
END_VAR
VAR_OUTPUT
	O_Drill_Spindle_On			: BOOL;	(*Drill: Turn on drill spindle.*)
	O_Drill_Fixture_Close		: BOOL;	(*Drill: Closes Fixture. Controls the valve*)
	bBusy							: BOOL;

	(* SMEMA HandshakeInputs *)
	hoReadyToRecieve_ToLeft	: BOOL;
	hoPartAvail_ToRight			: BOOL;

	(* Drill Outputs *)
	bDrill_axZ_Enable			: BOOL;	(*Drill: Z-axis: enable*)
	bDrill_axZ_Start				: BOOL;	(*Drill: Z-axis: Start motion*)
	fDrill_axZ_Velo				: REAL;	(*Drill: Z-axis: Velocity*)
	fDrill_axZ_TargetPos			: REAL;	(*Drill: Z-axis: Target position*)

END_VAR
VAR
	bDrillHomed				: BOOL := FALSE;
	bStartCycle				: BOOL := FALSE;
	bLocalReset				: BOOL := FALSE;	(*Performs local reset*)
	SFCReset 				: BOOL := FALSE;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
	tonMoveDelay				: TON;
	tMoveDelay				: TIME := T#1s;
	fas: BOOL;
END_VAR       Init ?     ????????           Action Init *9=^K   bDrillHomed 		:= FALSE;
SFCReset 				:= FALSE;
bLocalReset				:= FALSE;
       NOT I_Reset           WaitForSFCReset              MainLoop         I_Enable         MoveToInitPos ?     ????????           Action MoveToInitPos *9=^	    
   Init_Manip ?     ????????           Action Init_Manip *9=^X   bDrillHomed := FALSE;
hoReadyToRecieve_ToLeft := FALSE;
hoPartAvail_ToRight  := FALSE;       TRUE         DriveToHome ?     ????????           Action DriveToHome *9=^r   bDrill_axZ_Enable		:= TRUE;
fDrill_axZ_TargetPos		:= -10;
fDrill_axZ_Velo			:= 5;
bDrill_axZ_Start			:= TRUE;
   ?     ????????           Action DriveToHome - Exit *9=^   bDrill_axZ_Start := FALSE;
   bDrill_axZ_InTargetPos         OpenFixture_INIT ?     ????????           Action OpenFixture_INIT *9=^   O_Drill_Fixture_Close := FALSE;       I_Drill_Fixture_Open         Done ?     ????????           Action Done *9=^   bDrillHomed := TRUE;
       FALSE  
   Init_Manipd      e     ????????           Action MoveToInitPos - Exit *9=^   bDrill_axZ_Start := FALSE;

   bDrill_axZ_InTargetPos         WaitForPart ?     ????????           Action WaitForPart *9=^@   hoReadyToRecieve_ToLeft := TRUE;
hoPartAvail_ToRight  := FALSE;       hiPartAvail_FromLeft         WaitForDelivery ?     ????????           Action WaitForDelivery *9=^"   hoReadyToRecieve_ToLeft	:= TRUE;
       NOT hiPartAvail_FromLeft         ExecuteCycle ?     ????????           Action ExecuteCycle *9=^?   hoReadyToRecieve_ToLeft 	:= FALSE;
hoPartAvail_ToRight			:= FALSE;

O_Drill_Spindle_On			:= FALSE;
bDrill_axZ_Enable			:= FALSE;
bDrill_axZ_Start				:= FALSE;
fDrill_axZ_Velo				:= 0;


       I_Enable         CloseFixture ?     ????????           Action CloseFixture *9=^"   O_Drill_Fixture_Close 		:= TRUE;
       I_Drill_Fixture_Closed         MoveDrillDown ?     ????????           Action MoveDrillDown *9=^?   bDrill_axZ_Enable := TRUE;
fDrill_axZ_Velo :=10;
fDrill_axZ_TargetPos := -140;
bDrill_axZ_Start := TRUE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_Drill_Spindle_On := TRUE;

   ?     ????????           Action MoveDrillDown - Exit *9=^5   bDrill_axZ_Start := FALSE;
tonMoveDelay(IN:=FALSE );)   bDrill_axZ_InTargetPos AND tonMoveDelay.Q      	   EmptyWait         TRUE         MoveDrillUp ?     ????????           Action MoveDrillUp *9=^{   tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
fDrill_axZ_Velo :=10;
fDrill_axZ_TargetPos := -10;
bDrill_axZ_Start := TRUE;
   ?     ????????           Action MoveDrillUp - Exit *9=^4   bDrill_axZ_Start := FALSE;
tonMoveDelay(IN:=FALSE);)   bDrill_axZ_InTargetPos AND tonMoveDelay.Q         StopDrillOpenFixture ?     ????????           Action StopDrillOpenFixture *9=^    O_Drill_Spindle_On := FALSE;

       NOT O_Drill_Spindle_On         OpenFixture ?     ????????           Action OpenFixture *9=^   O_Drill_Fixture_Close	:= FALSE;    1   hiRdyToReceive_FromRight AND I_Drill_Fixture_Open         WaitForPickup ?     ????????           Action WaitForPickup *9=^"   hoPartAvail_ToRight  			:= TRUE;
   ?     ????????           Action WaitForPickup - Exit *9=^   bStartCycle := FALSE;   NOT hiRdyToReceive_FromRight     WaitForPart     	   UpdateIOs         FALSE  	   UpdateIOs       bLocalReset OR I_Reset         SFCResetStep ?     ????????           Action SFCResetStep *9=^   SFCReset := TRUE;       FALSE     Initd                  d   ,  ? ?        	   FB_Lights ??;^	??;^      ????????        `  FUNCTION_BLOCK FB_Lights
VAR_INPUT
	bReset				: BOOL;	(*Reset Request*)
	I_Running				: BOOL;
END_VAR
VAR_OUTPUT
	O_Light_Start			: BOOL;	(*Light: Running*)
	O_Light_Stop			: BOOL;	(*Light: Stopped*)
	O_Beacon_Red		: BOOL;	(*Beacon Light: red*)
	O_Beacon_Yellow	: BOOL;	(*Beacon Light: yellow*)
	O_Beacon_Green		: BOOL;
END_VAR
VAR
	bLocalReset			: BOOL;	(*Performs local reset*)
	SFCReset 			: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
 	fbBlinker				: BLINK;
	bBlinkEnable			: BOOL;
END_VAR
VAR CONSTANT
	blinkInterval    			: TIME := t#600ms;
END_VAR       Init h     ????????           Action Init ˸2^F   SFCReset 	:= FALSE;
bLocalReset	:= FALSE;
fbBlinker(ENABLE:= FALSE);    
   NOT bReset           WaitForSFCReset         bLocalReset OR bReset         SFCResetStep m     ????????           Action SFCResetStep ˸2^   SFCReset := TRUE;            Stopped s     ????????           Action Stopped ˸2^  bBlinkEnable		       := FALSE;
fbBlinker(ENABLE:= FALSE);

O_Light_Start			:=  FALSE;	(*Light: Running*)
O_Light_Stop			:= TRUE;	(*Light: Stopped*)
O_Beacon_Red		:= TRUE ;	(*Beacon Light: red*)
O_Beacon_Yellow	:= FALSE;	(*Beacon Light: yellow*)
O_Beacon_Green		:= FALSE;
    	   I_Running         Running p     ????????           Action Running ˸2^;  fbBlinker(ENABLE:= TRUE , TIMELOW:=blinkInterval , TIMEHIGH:=blinkInterval , OUT=> );

O_Light_Start			:= TRUE;	(*Light: Running*)
O_Light_Stop			:= FALSE;	(*Light: Stopped*)
O_Beacon_Red		:= FALSE ;	(*Beacon Light: red*)
O_Beacon_Yellow	:= FALSE;	(*Beacon Light: yellow*)
O_Beacon_Green		 := fbBlinker.OUT;
       NOT I_Running     Stopped     	   UpdateIOs         FALSE  	   UpdateIOs       FALSE     Initj                  {   ,  ????           FB_Manipulator ?=^	?=^      ????????        #  FUNCTION_BLOCK FB_Manipulator
VAR_INPUT
	I_Enable		 				: BOOL;
	I_Reset		 				: BOOL;
	b_LeftManip					: BOOL;

	(* SMEMA HandshakeInputs *)
	hiPartAvail_FromLeft			: BOOL;
	hiRdyToReceive_FromRight	: BOOL;

	(* Manipulator Sensor *)
	I_Mani_Limit_Up				: BOOL;	(*Manipulator Left: Limit: Up*)
	I_Mani_Limit_Dn				: BOOL;	(*Manipulator Left: Limit: Down*)
	I_Mani_Limit_Home			: BOOL;	(*Manipulator Left: Home sensor*)
	I_Mani_Turned_Left			: BOOL;	(*Manipulator Left: Turned to left*)
	I_Mani_Turned_Right			: BOOL;	(*Manipulator Left: Turned to right*)
	I_Mani_Gripper_Open		: BOOL;	(*Manipulator Left: Gripper is open*)

	(* Manipulator Controls *)
	I_fMani_axZ_CurrPos			: REAL;	(*Manipulator Left: Z-axis: Current position*)
	I_bMani_axZ_InTargetPos	: BOOL;	(*Manipulator Left: Z-axis: Target position is reached*)

END_VAR
VAR_OUTPUT
	bBusy							: BOOL;

	(* SMEMA HandshakeInputs *)
	hoReadyToRecieve_ToLeft	: BOOL;
	hoPartAvail_ToRight			: BOOL;

	(* Manipulator Outputs *)
	O_Mani_Turn_Left			: BOOL;	(*Manipulator Left: Turn to left position. Controls the valve*)
	O_Mani_Turn_Right			: BOOL;	(*Manipulator Left: Turn to right position. Controls the valve*)
	O_Mani_Gripper_Close		: BOOL;(*Manipulator Left: Closes Gripper. Controls the valve*)

	(* Manipulator Z axis Control *)
	O_bMani_axZ_Enable		: BOOL;	(*Manipulator Left: Z-axis: enable*)
	O_bMani_axZ_Start			: BOOL;	(*Manipulator Left: Z-axis: Start motion*)
	O_fMani_axZ_Velo			: REAL;	(*Manipulator Left: Z-axis: Velocity*)
	O_fMani_axZ_TargetPos		: REAL;	(*Manipulator Left: Z-axis: Target position*)


END_VAR
VAR
	bPick						: BOOL := FALSE;
	bPicked					: BOOL := FALSE;
	bPlace						: BOOL := FALSE;
	bPlaced					: BOOL := FALSE;
	bManipulatorHomed		: BOOL := FALSE;

	bLocalReset				: BOOL := FALSE;	(*Performs local reset*)
	SFCReset 				: BOOL := FALSE;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
	tonMoveDelay				: TON;
	tonHomeDelay			: TON;
	tMoveDelay				: TIME := T#1s;
	tHomeDelay				: TIME := T#700ms;

END_VAR       Init |     ????????           Action Init ?=^t   bManipulatorHomed 			:= FALSE;
O_Mani_Turn_Right 			:= FALSE;
SFCReset 					:= FALSE;
bLocalReset					:= FALSE;
       NOT I_Reset           WaitForSFCReset              MainLoop         I_Enable         MoveToInitPos w     ????????           Action MoveToInitPos ?=^    
   Init_Manip         TRUE         Stop y     ????????           Action Stop ?=^R   O_fMani_axZ_Velo		:= 0;
O_Mani_Turn_Left		:= FALSE;
O_Mani_Turn_Right		:= FALSE;       TRUE      	   FindLimit z     ????????           Action FindLimit ?=^?   IF b_LeftManip THEN
	O_Mani_Turn_Left 	 := TRUE;
	O_Mani_Turn_Right 	 := FALSE;
ELSE
	O_Mani_Turn_Right	 := TRUE;
	O_Mani_Turn_Left 	 := FALSE;
END_IF

tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);   ?     ????????           Action FindLimit - Exit ?=^U   tonMoveDelay(IN:=FALSE);
O_Mani_Turn_Left 	 := FALSE;
O_Mani_Turn_Right 	 := FALSE;<   I_Mani_Turned_Left OR I_Mani_Turned_Right AND tonMoveDelay.Q         DriveToHome f     ????????           Action DriveToHome ?=^  tonMoveDelay(IN:=TRUE , PT:= tMoveDelay, Q=> , ET=> );
tonHomeDelay(IN:=TRUE , PT:= tHomeDelay, Q=> , ET=> );
IF b_LeftManip THEN
	O_Mani_Turn_Right 	 := TRUE;
	O_Mani_Turn_Left 	 := FALSE;
ELSE
	O_Mani_Turn_Right	 := FALSE;
	O_Mani_Turn_Left 	 := TRUE;
END_IF   i     ????????           Action DriveToHome - Exit ?=^U   tonMoveDelay(IN:=FALSE);
O_Mani_Turn_Left 	 := FALSE;
O_Mani_Turn_Right 	 := FALSE;   tonHomeDelay.Q         ZHome ?     ????????           Action ZHome ?=^?   O_bMani_axZ_Enable		:= TRUE;
O_fMani_axZ_Velo			:= 5;
O_fMani_axZ_TargetPos		:= 0;
O_bMani_axZ_Start			:= TRUE;
O_Mani_Gripper_Close		:= FALSE;   ?     ????????           Action ZHome - Exit ?=^   O_bMani_axZ_Start := FALSE;   I_bMani_axZ_InTargetPos         Done j     ????????           Action Done ?=^   bManipulatorHomed := TRUE;       FALSE  
   Init_Manipd          bManipulatorHomed         WaitToTransfer_Pick ?     ????????           Action WaitToTransfer_Pick ?=^!   hoReadyToRecieve_ToLeft	 := TRUE; ?     ????????        "   Action WaitToTransfer_Pick - Entry ?=^$   bPicked := FALSE;
bPlaced := FALSE;     hiPartAvail_FromLeft         ExchangePick ?     ????????           Action ExchangePick ?=^       Pick ?     ????????           Action Pick ?=^   bPicked := FALSE;       TRUE      
   WaitToPick         bPick      
   MoveZ_Pick ?     ????????           Action MoveZ_Pick ?=^?   O_bMani_axZ_Enable := TRUE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_fMani_axZ_Velo :=10;
O_fMani_axZ_TargetPos := -45;
O_bMani_axZ_Start := TRUE;
   ?     ????????           Action MoveZ_Pick - Exit ?=^6   tonMoveDelay(IN:=FALSE );
O_bMani_axZ_Start := FALSE;*   I_bMani_axZ_InTargetPos AND tonMoveDelay.Q         TurnLeft ?     ????????           Action TurnLeft ?=^e   tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_Mani_Turn_Left 	 := TRUE;
O_Mani_Turn_Right 	 := FALSE;   ?     ????????           Action TurnLeft - Exit ?=^   tonMoveDelay(IN:=FALSE);%   I_Mani_Turned_Left AND tonMoveDelay.Q         IdleWait           b_LeftManip         Approach_Pick_LeftManip ?     ????????           Action Approach_Pick_LeftManip ?=^?   bPicked := FALSE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_fMani_axZ_Velo :=10;
O_fMani_axZ_TargetPos := -120;
O_bMani_axZ_Start := TRUE;   ?     ????????        %   Action Approach_Pick_LeftManip - Exit ?=^5   O_bMani_axZ_Start := FALSE;
tonMoveDelay(IN:=FALSE);*   I_bMani_axZ_InTargetPos AND tonMoveDelay.Q      NOT b_LeftManip         Approach_Pick_RightManip ?     ????????           Action Approach_Pick_RightManip ?=^?   bPicked := FALSE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_fMani_axZ_Velo :=10;
O_fMani_axZ_TargetPos := -74;
O_bMani_axZ_Start := TRUE;   ?     ????????        &   Action Approach_Pick_RightManip - Exit ?=^5   O_bMani_axZ_Start := FALSE;
tonMoveDelay(IN:=FALSE);*   I_bMani_axZ_InTargetPos AND tonMoveDelay.Q         CloseGripper_Pick ?     ????????           Action CloseGripper_Pick ?=^   O_Mani_Gripper_Close := TRUE;       NOT I_Mani_Gripper_Open         Depart_Pick ?     ????????           Action Depart_Pick ?=^|   O_fMani_axZ_Velo :=10;
O_fMani_axZ_TargetPos := -45;
O_bMani_axZ_Start := TRUE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);   ?     ????????           Action Depart_Pick - Exit ?=^5   O_bMani_axZ_Start := FALSE;
tonMoveDelay(IN:=FALSE);*   I_bMani_axZ_InTargetPos AND tonMoveDelay.Q         Done_Pick_Up ?     ????????           Action Done_Pick_Up ?=^i   hoPartAvail_ToRight			 := TRUE;
hoReadyToRecieve_ToLeft	 := FALSE;
bPick		 := FALSE;
bPicked	 := TRUE;       bPicked     Pickd    ?     ????????           Action ExchangePick - Entry ?=^3   hoReadyToRecieve_ToLeft	 := TRUE;
bPick := TRUE;
 ?     ????????           Action ExchangePick - Exit ?=^"   bPick := FALSE;
bPlaced := FALSE;   bPicked         WaitToTransfer_Place         hiRdyToReceive_FromRight         Place ?     ????????           Action Place ?=^    
   Init_Place ?     ????????           Action Init_Place ?=^   bPlaced := FALSE;
       TRUE         WaitToPlace         bPlace      	   TurnRight ?     ????????           Action TurnRight ?=^w   bPlaced := FALSE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_Mani_Turn_Right	 := TRUE;
O_Mani_Turn_Left 	 := FALSE;   ?     ????????           Action TurnRight - Exit ?=^   tonMoveDelay(IN:=FALSE);&   I_Mani_Turned_Right AND tonMoveDelay.Q         PlaceDecision           b_LeftManip         PlaceLeftManip ?     ????????           Action PlaceLeftManip ?=^|   tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_fMani_axZ_Velo :=10;
O_fMani_axZ_TargetPos := -74;
O_bMani_axZ_Start := TRUE;   ?     ????????           Action PlaceLeftManip - Exit ?=^8   O_bMani_axZ_Start 	:= FALSE;
tonMoveDelay(IN		:=FALSE);*   I_bMani_axZ_InTargetPos AND tonMoveDelay.Q      NOT b_LeftManip         PlaceRightManip ?     ????????           Action PlaceRightManip ?=^}   tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_fMani_axZ_Velo :=10;
O_fMani_axZ_TargetPos := -120;
O_bMani_axZ_Start := TRUE;   ?     ????????           Action PlaceRightManip - Exit ?=^5   O_bMani_axZ_Start := FALSE;
tonMoveDelay(IN:=FALSE);*   I_bMani_axZ_InTargetPos AND tonMoveDelay.Q         OpenGripper_Place ?     ????????           Action OpenGripper_Place ?=^   O_Mani_Gripper_Close := FALSE;       I_Mani_Gripper_Open         DepartPlace ?     ????????           Action DepartPlace ?=^}   tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_fMani_axZ_Velo :=5;
O_fMani_axZ_TargetPos := -40;
O_bMani_axZ_Start := TRUE;
   ?     ????????           Action DepartPlace - Exit ?=^5   O_bMani_axZ_Start := FALSE;
tonMoveDelay(IN:=FALSE);*   I_bMani_axZ_InTargetPos AND tonMoveDelay.Q         TurnDecision           b_LeftManip         TurnLeftAfterPlace ?     ????????           Action TurnLeftAfterPlace ?=^d   tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_Mani_Turn_Right	 := FALSE;
O_Mani_Turn_Left 	 := TRUE;   ?     ????????            Action TurnLeftAfterPlace - Exit ?=^   tonMoveDelay(IN:=FALSE);%   I_Mani_Turned_Left AND tonMoveDelay.Q      NOT b_LeftManip         RemainInPos         TRUE      	   DonePlace ?     ????????           Action DonePlace ?=^3   hoPartAvail_ToRight 	:= FALSE;
bPlaced				:= TRUE;        ????????           Action DonePlace - Exit ?=^   bPlaced := FALSE;   bPlaced     WaitToPlaced    ?     ????????           Action Place - Entry ?=^&   bPlace   := TRUE;
bPicked := FALSE;
 ?     ????????           Action Place - Exit ?=^#   bPlace := FALSE;
bPicked := FALSE;   bPlaced     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       bLocalReset OR I_Reset         SFCResetStep ?     ????????           Action SFCResetStep ?=^   SFCReset := TRUE;       FALSE     Initd                  ?   ,     u           FB_Pick??;^	??;^      ????????        x  FUNCTION_BLOCK FB_Pick
VAR_INPUT
	bEmergencyClear		: BOOL;	(*Emergency cleared*)
	bReset				: BOOL;	(*Reset signal*)
	bExecute				: BOOL;	(*Start signal*)
	bStop					: BOOL;	(*Stop signal*)
	bLeftManipulator		: BOOL;
END_VAR
VAR_OUTPUT
	bDone					: BOOL;	(*Action Done*)
	bBusy					: BOOL;	(*Busy*)
END_VAR
VAR
	O_bMani_axZ_Enable: BOOL;
	bPicked: BOOL;
END_VAR       Init ?     ????????           Action Init ??;^!   bDone := FALSE;
bBusy  := FALSE;       TRUE      
   WaitToPick     ?     ????????           Action WaitToPick - Exit ??;^   bBusy := TRUE;   bExecute      
   MoveZ_Pick ?     ????????           Action MoveZ_Pick ??;^?   O_bMani_axZ_Enable := TRUE;
hoReadyToRecieve_ToLeft :=FALSE;
tonMoveDelay(IN:=TRUE , PT:= tMoveDelay);
O_fMani_axZ_Velo :=10;
O_fMani_axZ_TargetPos := -45;
O_bMani_axZ_Start := TRUE;
bPicked := FALSE;       Trans3         TurnLeft         Trans4         Step5           bLeftManipulator         Approach_Pick_LeftManip         Trans7      NOT bLeftManipulator         Approach_Pick_RightManip         Trans6         CloseGripper         Trans8         Depart         Trans10         PickDone     ?     ????????           Action PickDone - Exit ??;^   bDone := TRUE;   TRUE  
   WaitToPickd                  ?   , ( ? ?6           FB_SFC_Example ??;^	??;^      ????????          FUNCTION_BLOCK FB_SFC_Example
VAR_INPUT
	bReset		: BOOL;	(*Reset Request*)
END_VAR
VAR_OUTPUT
END_VAR
VAR
	bLocalReset	: BOOL;	(*Performs local reset*)
	SFCReset 	: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init @     ????????           Action Init ?1^*   SFCReset 	:= FALSE;
bLocalReset	:= FALSE;    
   NOT bReset           WaitForSFCReset         bLocalReset OR bReset         SFCResetStep L     ????????           Action SFCResetStep ?1^   SFCReset := TRUE;            MainLoop         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       FALSE     Initj                  g   ,   V?           FB_SimpleManager ??;^	??;^      ????????        ?  FUNCTION_BLOCK FB_SimpleManager
(*Simple manager following emergency and run/stop state. Outputs can be used to enable user's processes and programs.
Niko Siltala niko.siltala@tuni.fi, 
Tampere University, ENS, ATME.
9.10.2019 v1 *)
VAR_INPUT
	bEmergencyClear		: BOOL;	(*Emergency cleared*)
	bReset				: BOOL;	(*Reset signal*)
	bStart					: BOOL;	(*Start signal*)
	bStop					: BOOL;	(*Stop signal*)
END_VAR
VAR_OUTPUT
	oEmergencyClear		: BOOL;	(*Emergency is cleared*)
	oRun					: BOOL;	(*System can be started and running*)
END_VAR
VAR
	rsEmergency			: RS;
	rsRunning				: RS;
	bResetRequired		: BOOL := TRUE;	(*reset is required*)
END_VARL  (*Defaults*)
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
	Q1=> oRun );               `   , ? ? ?            FB_Simu_Drill ??;^	??;^      ????????          FUNCTION_BLOCK FB_Simu_Drill
(*Simulation model for the behaviour of the Drill machine.
Author: Niko Siltala, niko.siltala@tut.fi, Tampere University of Technology / MEI
Date: 2016-12-12
Version: 1.0
*)
VAR_INPUT
	bEnable			: BOOL := TRUE;	(*Enable drill*)
	bLift_Start		: BOOL;		(*Triggers and starts the lift movement at rising edge*)
	fLift_Velo		: REAL := 10;	(*Velocity*)
	fLift_TargetPos	: REAL;		(*Target position*)
	bDrillOn			: BOOL;		(*Drill is On*)
	bFixture_Close	: BOOL; 	(*Close Fixture*)
	bInitDone		: BOOL;		(*Initialisation done for simulated machine*)
END_VAR
VAR_OUTPUT
	bLift_InTarget	: BOOL;	(*Lift has reached the target*)
	fLift_CurrentPos	: REAL;	(*Current position of the lift*)
	bLimit_Top		: BOOL;	(*Height position at top limit*)
	bLimit_Bottom	: BOOL;	(*Height position at bottom limit*)
	bHome_Sensor	: BOOL;	(*Height position at home limit*)
	bFixture_Open	: BOOL;	(*Fixture is Open*)
	bFixture_Closed	: BOOL;	(*Fixture is Closed*)
END_VAR
VAR_IN_OUT
	stPart_inFixture : ST_Part; 	(*Data structure for the part*)
END_VAR
VAR
	fPos_height	: REAL;	(* Manipulators height position*)
	fPos_Y		: REAL;	(* Manipulator's Y position*)
	fBasePos_Y 	: REAL; (*Position of manipulator base*)
	iState_Lift	: UINT;	(*State of beam model*)
	iRPMCurrent	: INT;	(*Current RPM*)
	fPosJawDiff 	: REAL;	(*Right fixture jaw position. 0 position when grasping.*)
END_VAR
VAR CONSTANT
	fPOS_MAX_DOWN		: REAL	:= 170;	(*Max position for down movement*)
	iSPINDLE_RPM_MAX	: INT	:= 600;	(*Max RPM for Spindle*)
END_VAR
?  (*Simulate axis*)
IF NOT bEnable THEN
	iState_Lift := 0;
END_IF;

(*Initialisation*)
IF NOT bInitDone THEN
	(*Randomize system's starting position*)
	lastRandom := RDM(lastRandom);
	fLift_CurrentPos := -60 * lastRandom + 10;
	bInitDone:=TRUE;
END_IF;

CASE iState_Lift OF
0:	(*Off*)
	IF bEnable THEN
		iState_Lift := 1;
	ELSE
		bLift_InTarget := FALSE;
	END_IF;

1:	(*IDLE*)
	IF bLift_Start THEN
		bLift_InTarget := FALSE;
		iState_Lift := 2;
	END_IF;

2:	(*MovingToTarget*)
	bLift_InTarget := FALSE;
	IF fLift_TargetPos > fLift_CurrentPos THEN
		(*Moving up*)
		fLift_CurrentPos := fLift_CurrentPos + ABS(fLift_Velo);
	ELSIF fLift_TargetPos < fLift_CurrentPos THEN
		(*Moving down*)
		fLift_CurrentPos := fLift_CurrentPos - ABS(fLift_Velo);
	END_IF;
	(*Limit output*)
	fLift_CurrentPos := LIMIT(-fPOS_MAX_DOWN, fLift_CurrentPos, 10);
	(* Moved close to target*)
	IF (ABS(fLift_CurrentPos - fLift_TargetPos) <= ABS(fLift_Velo) ) THEN
		fLift_CurrentPos := fLift_TargetPos;
		iState_Lift := 3;
	END_IF;
	(*Start has been removed*)
	IF NOT bLift_Start THEN
		iState_Lift := 1;
	END_IF;

3:	(*In target*)
	bLift_InTarget := TRUE;
	IF NOT bLift_Start THEN
		iState_Lift := 1;
	END_IF;

ELSE	(*Error / to Default*)
	iState_Lift := 0;
END_CASE;

fPos_Y := -fLift_CurrentPos;
fBasePos_Y := fPos_Y;	(*Used for animations as base position*)


(*define fixture jaws positions*)
IF bFixture_Close THEN
	fPosJawDiff := 0;
ELSE
	fPosJawDiff := 10;
END_IF;

(*Set sensor values*)
(*Set output values*)
bLimit_Top := (fPos_Y <= 0);
bLimit_Bottom := (fPos_Y >= (fPOS_MAX_DOWN-10));
bHome_Sensor := (fPos_Y <= 5) AND (fPos_Y >= -5);

bFixture_Open := NOT bFixture_Close;
bFixture_Closed := bFixture_Close;

IF bDrillOn THEN
	iRPMCurrent := iRPMCurrent + 100;
ELSE
	iRPMCurrent := iRPMCurrent - 20;
END_IF;
iRPMCurrent := LIMIT(0, iRPMCurrent, iSPINDLE_RPM_MAX);
               /   , |~??           FB_Simu_Manipulator ??;^	??;^      ????????        _  FUNCTION_BLOCK FB_Simu_Manipulator
(*Simulation model for the behaviour of the Manipulator.
Author: Niko Siltala, niko.siltala@tut.fi, Tampere University of Technology / MEI
Date: 2016-12-12
Version: 1.0
*)
VAR_INPUT
	bEnable			: BOOL := TRUE;	(*Enable manipulator*)
	bLift_Start		: BOOL;	(*Triggers and starts the lift movement at rising edge*)
	fLift_Velo		: REAL := 10;	(*Velocity*)
	fLift_TargetPos	: REAL;	(*Target position*)
	bBeam_Left		: BOOL;	(*Turn beam at left*)
	bBeam_Right		: BOOL;	(*Turn beam at right*)
	bGripper_Close	: BOOL; (*Close Gripper*)
END_VAR
VAR_OUTPUT
	bGripperIsOpen	: BOOL;	(*Gripper is open*)
	bLift_InTarget	: BOOL;	(*Lift has reached the target*)
	fLift_CurrentPos	: REAL;	(*Current position of the lift*)
	bLimit_Top		: BOOL;	(*Height position at top limit*)
	bLimit_Bottom	: BOOL;	(*Height position at bottom limit*)
	bHome_Sensor	: BOOL;	(*Height position at home limit*)
	bBeamAtRight	: BOOL;	(*Beam turned into right limit*)
	bBeamAtLeft		: BOOL;	(*Beam turned into left limit*)
END_VAR
VAR_IN_OUT
	stPart_inGripper : ST_Part; 	(*Data structure for the part*)
END_VAR
VAR
	fPos_angle	: REAL := 70;	(*Angle of beam [deg]*)
	fPos_height	: REAL;	(* Manipulators height position*)
	fPos_X		: REAL;	(* Manipulator's X position*)
	fPos_Y		: REAL;	(* Manipulator's Y position*)
	fBasePos_Y 	: REAL; (*Position of manipulator base*)
	iState_Lift		: UINT;	(*State of beam model*)
	fPos_Beam_L	: REAL;	(*Beam position left end*)
	fPos_Beam_R	: REAL;	(*Beam position right end*)
	bGripperClosed	: BOOL; (*Gripper is closed*)
	fPosFingerDiff 	: REAL;	(*Right finger position. 0 poistion when grasping.*)
	bInitDone		: BOOL;		(*Initialisation done for simulated machine*)
END_VAR
VAR CONSTANT
	iBEAM_LENGTH	: USINT := 120;	(*length of the beam*)
	fPOS_MAX_DOWN	: REAL	:= 220;	(*Max position for down movement*)
END_VAR?	  (*Simulate axis*)
IF NOT bEnable THEN
	iState_Lift := 0;
END_IF;

(*Initialisation*)
IF NOT bInitDone THEN
	(*Randomize system's starting position*)
	lastRandom := RDM(lastRandom);
	fLift_CurrentPos := -100 * lastRandom + 10;
	lastRandom := RDM(lastRandom);
	fPos_angle := 100 * lastRandom + 40; (* X2 = (180 - 100[=X1]) / 2 *)
	bInitDone:=TRUE;
END_IF;

CASE iState_Lift OF
0:	(*Off*)
	IF bEnable THEN
		iState_Lift := 1;
	ELSE
		bLift_InTarget := FALSE;
	END_IF;

1:	(*IDLE*)
	IF bLift_Start THEN
		bLift_InTarget := FALSE;
		iState_Lift := 2;
	END_IF;

2:	(*MovingToTarget*)
	bLift_InTarget := FALSE;
	IF fLift_TargetPos > fLift_CurrentPos THEN
		(*Moving up*)
		fLift_CurrentPos := fLift_CurrentPos + ABS(fLift_Velo);
	ELSIF fLift_TargetPos < fLift_CurrentPos THEN
		(*Moving down*)
		fLift_CurrentPos := fLift_CurrentPos - ABS(fLift_Velo);
	END_IF;
	(*Limit output*)
	fLift_CurrentPos := LIMIT(-220, fLift_CurrentPos, 10);
	(* Moved close to target*)
	IF (ABS(fLift_CurrentPos - fLift_TargetPos) <= ABS(fLift_Velo) ) THEN
		fLift_CurrentPos := fLift_TargetPos;
		iState_Lift := 3;
	END_IF;
	(*Start has been removed*)
	IF NOT bLift_Start THEN
		iState_Lift := 1;
	END_IF;

3:	(*In target*)
	bLift_InTarget := TRUE;
	IF NOT bLift_Start THEN
		iState_Lift := 1;
	END_IF;

ELSE	(*Error / to Default*)
	iState_Lift := 0;
END_CASE;

fPos_Y := -fLift_CurrentPos;


(*Simulate Beam turning*)
IF bBeam_Left AND (fPos_angle > 0) AND NOT bBeam_Right THEN
	fPos_angle := LIMIT(0, (fPos_angle - 15), 180);
END_IF;
IF bBeam_Right AND (fPos_angle < 180) AND NOT bBeam_Left THEN
	fPos_angle := LIMIT(0, (fPos_angle + 15), 180);
END_IF;


(*Calculate visualisation positions for lift and beam*)
fPos_X := -iBEAM_LENGTH*COS(3.1415926535897932384626433832795/180*fPos_angle);
(*fPos_Y := fPos_height;*)
fBasePos_Y := fPos_Y;	(*Used for animations as base position*)

(*Calculate endpositions of the visualisation for the beam*)
IF (fPos_X > 0) THEN
	fPos_Beam_L := 0;
	fPos_Beam_R := fPos_X;
ELSE
	fPos_Beam_L := fPos_X;
	fPos_Beam_R := 0;
END_IF;

(*define finger positions*)
IF bGripper_Close THEN
	fPosFingerDiff := 0;
ELSE
	fPosFingerDiff := 10;
END_IF;

(*Set sensor values*)
(*Set output values*)
bLimit_Top := (fPos_Y <= 0);
bLimit_Bottom := (fPos_Y >= 210);
bHome_Sensor := (fPos_Y <= 5) AND (fPos_Y >= -5);

bBeamAtLeft := (fPos_angle <= 0);
bBeamAtRight := (fPos_angle >= 180);

bGripperIsOpen := NOT bGripper_Close;
bGripperClosed := bGripper_Close;
               Q     ????????           FRACT ??;^	??;^      ????????        ?   FUNCTION FRACT : REAL
VAR_INPUT
	x : REAL;
END_VAR
VAR
END_VAR
(*
From OSCAT 333
version 1.3	10. mar. 2009
programmer 	hugo
tested by		tobias

this function returns the fraction of a real number
fract(3.14) = 0.14

*)?  IF ABS(x) < 2.0E9 THEN
	FRACT := x - DINT_TO_REAL(D_TRUNC(x));
ELSE
	FRACT := 0.0;
END_IF;

(* revision history
hm	4. aug 2006	rev 1.0
	original version

hm	11. mar 2008	rev 1.1
	added dint_to_real for compatibility reasons
	now returns 0 for number > 2e9
	changed input to x

hm	21. mar. 2008	rev 1.2
	use D_trunc instead of TRUNC for compatibility reasons

hm	10. mar. 2009	rev 1.3
	real constants updated to new systax using dot

*)               k   ,  -O?           PRG_InitManipulator ??;^	??;^      ????????        ?  PROGRAM PRG_InitManipulator
VAR_INPUT
	bReset					: BOOL;	(*Reset Request*)
	bInitToLeft					: BOOL	;	(*ManipulatorHome Orientation*)
	I_Mani_Limit_Up			: BOOL;	(*Manipulator Left: Limit: Up*)
	I_Mani_Limit_Home		: BOOL;	(*Manipulator Left: Home sensor*)
	I_Mani_Turned_Left		: BOOL;	(*Manipulator Left: Turned to left*)
	I_Mani_Turned_Righ		: BOOL;	(*Manipulator Left: Turned to right*)
	I_Mani_Gripper_Open	: BOOL;	(*Manipulator Left: Gripper is open*)
END_VAR
VAR_OUTPUT
	bDone						: BOOL;
	O_Mani_Turn_Left		: BOOL;	(*Manipulator Left: Turn to left position. Controls the valve*)
	O_Mani_Turn_Right		: BOOL;	(*Manipulator Left: Turn to right position. Controls the valve*)
	O_Mani_Gripper_Close	: BOOL;
END_VAR
VAR
	bLocalReset		: BOOL;	(*Performs local reset*)
	SFCReset 		: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)

	ton_MoveDelay	: TON;
	tDelayTime		: TIME := T#2s;
	ton_ConveyorDelay: BOOL;
END_VAR       Init n     ????????           Action Init ?t5^9   SFCReset := FALSE;
bLocalReset	:= FALSE;
bDone :=FALSE;    
   NOT bReset           WaitForSFCReset         bLocalReset OR bReset         SFCResetStep o     ????????           Action SFCResetStep ?t5^   SFCReset := TRUE;            MainLoop r     ????????           Action MainLoop ?t5^   bDone :=FALSE;       TRUE         Stopped u     ????????           Action Stopped ?t5^8   O_Mani_Turn_Left	:= FALSE;
O_Mani_Turn_Right 	:= FALSE;       TRUE         MoveDown         TRUE         DriveToHomeLimit         TRUE         DriveToCenter q     ????????           Action DriveToCenter ?t5^j   ton_MoveDelay(IN:=TRUE , PT:= tDelayTime, Q=> , ET=> );
IF ton_MoveDelay.Q THEN
	bDone := TRUE;
END_IF;       TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       FALSE     Initj                  .   , E  
?           PRG_MAIN ?e=^	?e=^      ????????        7  PROGRAM PRG_MAIN
VAR
	fbSFCExample 		: FB_SFC_Example;
	fbMngr					: FB_SimpleManager;
	fbLights				: FB_Lights;
	fbConveyorLeft		: FB_Conveyor_Left;
	fbConveyorRight		: FB_Conveyor_Right;
	fbManipulatorLeft		: FB_Manipulator;
	fbDrill					: FB_Drill;
	fbManipulatorRight	: FB_Manipulator;


END_VAR?  (*START MAKING YOUR DRILLING SYSTEM PROGRAM HERE*)
fbSFCExample();

fbMngr(
	bEmergencyClear:= I_EmergencyClear,
	bReset:= I_Btn_Reset,
	bStart:= I_Btn_Start,
	bStop:= I_Btn_Stop,
	oEmergencyClear=>,
	oRun=> );

fbLights(
	I_Running:=  fbMngr.oRun ,
	O_Light_Start=> O_Light_Start ,
	O_Light_Stop=> O_Light_Stop ,
	O_Beacon_Red=> O_Beacon_Red,
	O_Beacon_Yellow=> O_Beacon_Yellow,
	O_Beacon_Green=> O_Beacon_Green );

(*Call emergency actions, if emergency is active*)
IF NOT fbMngr.oEmergencyClear THEN
	actEmergency();
	RETURN;
END_IF

fbConveyorLeft (
	bRun := fbMngr.oRun ,
	I_Reset:= NOT  fbMngr.oEmergencyClear  ,
	O_ConvRunning=> O_ConvIn_MotON,
	I_PartEndSensor:=  I_ConvIn_PartPresent,

	hiPartAvail_FromLeft:= TRUE ,
	hiRdyToReceive_FromRight:= fbManipulatorLeft.hoReadyToRecieve_ToLeft,
	hoPartAvail_toRight=> ,
	hoReadyToRecieve_ToLeft=> );

fbManipulatorLeft(
	I_Enable						:=  fbMngr.oRun,
	I_Reset						:=  NOT  fbMngr.oEmergencyClear ,
	b_LeftManip					:= TRUE ,
	I_Mani_Limit_Up				:= I_ManiL_Limit_Up,
	I_Mani_Limit_Dn				:= I_ManiL_Limit_Dn,
	I_Mani_Limit_Home			:= I_ManiL_Limit_Home ,
	I_Mani_Turned_Left			:= I_ManiL_Turned_Left,
	I_Mani_Turned_Right			:= I_ManiL_Turned_Right ,
	I_Mani_Gripper_Open		:= I_ManiL_Gripper_Open ,
	I_fMani_axZ_CurrPos			:= fManiL_axZ_CurrPos ,
	I_bMani_axZ_InTargetPos	:= bManiL_axZ_InTargetPos,

	hiPartAvail_FromLeft			:= fbConveyorLeft.hoPartAvail_ToRight ,
	hiRdyToReceive_FromRight	:= fbDrill.hoReadyToRecieve_ToLeft,
	hoReadyToRecieve_ToLeft	=> ,
	hoPartAvail_ToRight			=> ,

	O_Mani_Turn_Left			=> O_ManiL_Turn_Left ,
	O_Mani_Turn_Right			=> O_ManiL_Turn_Right ,
	O_Mani_Gripper_Close		=> O_ManiL_Gripper_Close ,
	O_bMani_axZ_Enable		=> bManiL_axZ_Enable ,
	O_bMani_axZ_Start			=> bManiL_axZ_Start ,
	O_fMani_axZ_Velo			=> fManiL_axZ_Velo,
	O_fMani_axZ_TargetPos		=> fManiL_axZ_TargetPos );

fbDrill(
	I_Enable						:= fbMngr.oRun,
	I_Reset						:= NOT  fbMngr.oEmergencyClear ,
	I_Drill_Limit_Up				:= I_Drill_Limit_Up,
	I_Drill_Limit_Dn				:= I_Drill_Limit_Dn ,
	I_Drill_Limit_Home			:= I_Drill_Limit_Home,
	I_Drill_Fixture_Open			:= I_Drill_Fixture_Open,
	I_Drill_Fixture_Closed		:= I_Drill_Fixture_Closed,
	fDrill_axZ_CurrPos			:= fDrill_axZ_CurrPos ,
	bDrill_axZ_InTargetPos		:= bDrill_axZ_InTargetPos ,

	hiPartAvail_FromLeft			:= fbManipulatorLeft.hoPartAvail_ToRight ,
	hiRdyToReceive_FromRight	:= fbManipulatorRight.hoReadyToRecieve_ToLeft ,
	hoReadyToRecieve_ToLeft	=> ,
	hoPartAvail_ToRight			=> ,

	O_Drill_Spindle_On			=> O_Drill_Spindle_On ,
	O_Drill_Fixture_Close		=> O_Drill_Fixture_Close ,
	bDrill_axZ_Enable			=> bDrill_axZ_Enable ,
	bDrill_axZ_Start				=> bDrill_axZ_Start ,
	fDrill_axZ_Velo				=> fDrill_axZ_Velo,
	fDrill_axZ_TargetPos			=> fDrill_axZ_TargetPos );

fbManipulatorRight(
	I_Enable						:=  fbMngr.oRun,
	I_Reset						:=  NOT  fbMngr.oEmergencyClear ,
	b_LeftManip					:= FALSE ,
	I_Mani_Limit_Up				:= I_ManiR_Limit_Up,
	I_Mani_Limit_Dn				:= I_ManiR_Limit_Dn,
	I_Mani_Limit_Home			:= I_ManiR_Limit_Home ,
	I_Mani_Turned_Left			:= I_ManiR_Turned_Left,
	I_Mani_Turned_Right			:= I_ManiR_Turned_Right ,
	I_Mani_Gripper_Open		:= I_ManiR_Gripper_Open ,
	I_fMani_axZ_CurrPos			:= fManiR_axZ_CurrPos ,
	I_bMani_axZ_InTargetPos	:= bManiR_axZ_InTargetPos,

	hiPartAvail_FromLeft			:= fbDrill.hoPartAvail_ToRight,
	hiRdyToReceive_FromRight	:= fbConveyorRight.hoReadyToRecieve_ToLeft,
	hoReadyToRecieve_ToLeft	=> ,
	hoPartAvail_ToRight			=> ,

	O_Mani_Turn_Left			=> O_ManiR_Turn_Left ,
	O_Mani_Turn_Right			=> O_ManiR_Turn_Right ,
	O_Mani_Gripper_Close		=> O_ManiR_Gripper_Close ,
	O_bMani_axZ_Enable		=> bManiR_axZ_Enable ,
	O_bMani_axZ_Start			=> bManiR_axZ_Start ,
	O_fMani_axZ_Velo			=> fManiR_axZ_Velo,
	O_fMani_axZ_TargetPos		=> fManiR_axZ_TargetPos );

fbConveyorRight (
	bRun := fbMngr.oRun ,
	I_Reset:= NOT  fbMngr.oEmergencyClear  ,
	O_ConvRunning=> O_ConvOut_MotON,
	I_PartEndSensor:=  I_ConvOut_PartPresent,

	hiPartAvail_FromLeft:= fbManipulatorRight.hoPartAvail_ToRight  ,
	hiRdyToReceive_FromRight:= TRUE ,
	hoPartAvail_toRight=> ,
	hoReadyToRecieve_ToLeft=> );

(* PRG_DrillOrchestrator(bReset:= ); *)

 t   , { 7??           actEmergency ??;^.  O_ConvIn_MotON		 := FALSE;
O_ConvOut_MotON	 := FALSE;
fbConveyorLeft(I_Reset:=TRUE, bRun := FALSE);
fbConveyorRight(I_Reset:=TRUE, bRun := FALSE);
fbManipulatorLeft(I_Reset:=TRUE, I_Enable := FALSE);
fbManipulatorRight(I_Reset:=TRUE, I_Enable := FALSE);
fbDrill(I_Reset:=TRUE, I_Enable := FALSE);             P   , ? ? 4           PRG_SFC_Example ??;^	??;^      ????????        ?   PROGRAM PRG_SFC_Example
VAR_INPUT
	bReset		: BOOL;	(*Reset Request*)
END_VAR
VAR_OUTPUT
END_VAR
VAR
	bLocalReset	: BOOL;	(*Performs local reset*)
	SFCReset 	: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init S     ????????           Action Init ??xX)   SFCReset := FALSE;
bLocalReset	:= FALSE;    
   NOT bReset           WaitForSFCReset         bLocalReset OR bReset         SFCResetStep T     ????????           Action SFCResetStep ??xX   SFCReset := TRUE;            MainLoop         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       FALSE     Initj                  -   , N N ??           PRG_Simulator ??;^	??;^      T Lit_ T        x  
PROGRAM PRG_Simulator
(*This Program is simulating the real machine and mimics its behaviour.
The main task is to update the inputs for students program according the stimulus student provides as outputs.
Another task is to monitor (physical) error conditions occuring in the system and record them.
Author: Niko Siltala, niko.siltala@tut.fi, Tampere University of Technology / MEI
Date: 2016-12-12
Version: 1.0
*) 
VAR
	bBtn_EmergencyStop	: BOOL;	(*Emergency Stop button*)
	rsEmergencyClear	: RS;	(*RS - flip-flop for Emergency clear info*)
	i 	: INT;
	c 	: INT;
	fbManipLeft		: FB_Simu_Manipulator;	(*Left simulated manipulator *)
	fbManipRight	: FB_Simu_Manipulator;	(*Right simulated manipulator *)
	fbDrill			: FB_Simu_Drill;		(*Drill machine simulated*)
	arrParts_ConvIn		: ARRAY [0..10] OF ST_Part; (*Parts on input conveyour*)
	arrParts_ConvOut	: ARRAY [0..10] OF ST_Part; (*Parts on output conveyour*)
	stPart_inMLeftGripper 	: ST_Part; 	(*Data structure for the part*)
	stPart_inMRightGripper 	: ST_Part; 	(*Data structure for the part*)
	stPart_inDrillFixture 	: ST_Part; 	(*Data structure for the part*)
	bAddPartOnConvIn	: BOOL;	(*Adds new part on conveyor*)
	bClearErrors		: BOOL;	(*Clear Errors*)
	bClearSystem		: BOOL;	(*Clears system from parts *)
	RT_AddPart			: R_TRIG;
	wError_ManipL			: WORD;	(*Error bits between convIn and Manip_Left*)
	wError_Drill		: WORD; (*Error bits at drill*)
	wError_ManipR		: WORD;	(*Error bits between convIn and Manip_Left*)
	iState_IF			: ARRAY [1..5] OF UINT;	(*State variable; Exchange between 1=ConvIn->ManipL, 2=ManipL->Drill, 3=Drill->ManipR, 4=ManipR->ConvOut, 5=Drill*)
	tofPartLeavesConvOut	: TOF;	(*Off timer for out sensor*)
END_VAR
VAR CONSTANT
	bMANUAL_CONTROLS				: BOOL 	:=FALSE;(*Manual override for controls*)
	fPOS_MANIP_CONV_NO_PART_SAFE	: REAL	:= 90;	(*Manipulator on conv with NO part - Safe to move*)
	fPOS_MANIP_CONV_WITH_PART_SAFE	: REAL	:= 70;	(*Manipulator on conv with part - Safe to move*)
	fPOS_MANIP_CONV_PICK_LEVEL		: REAL	:= 120;	(*Manipulator Pick/place level on conv*)
	fPOS_MANIP_DRILL_WITH_PART_SAFE	: REAL	:= 53;	(*Manipulator coming to drill with part - Safe to move*)
	fPOS_MANIP_DRILL_NO_PART_SAFE	: REAL	:= 46;	(*Manipulator coming to drill with NO part - Safe to move*)
	fPOS_MANIP_DRILL_PICK_LEVEL		: REAL	:= 74;	(*Manipulator Pick/place level on Drill*)
	fPOS_MANIP_PICK_TOLERANCE		: REAL	:= 30;	(*Manipulator Pick level tolerance from the part (=fingers length)*)
	fPART_HEIGH						: REAL	:= 50;	(*Part height*)
	fPART_PICK_TOLERANCE			: REAL	:= 10;	(*Part pick & place (negative) tolerance from Levels.*)
	fPART_HOLE_DEPTH_REQ			: REAL	:= 40;	(*Part required Hole depth*)
	fPART_HOLE_DEPTH_MAX			: REAL	:= 45;	(*Max Hole depth*)
	fPOS_DRILL_BIT_TOUCHES			: REAL	:= 100;	(*Drill touches the part*)
	iDRILL_SPINDLE_MIN_FOR_DRILLING	: INT	:= 400;	(*Minimum spindle speed for drilling*)
END_VAR
  (*Handle counter*)
c:= c+1;
IF c> 10 THEN
	c:= 0;
END_IF;

(*Simulate emergency stop circuitry*)
rsEmergencyClear(
	SET:= I_Btn_Reset,
	RESET1:= bBtn_EmergencyStop,
	Q1=> I_EmergencyClear);

(*Adds new parts on input conveyour*)
RT_AddPart(CLK:=bAddPartOnConvIn , Q=> );
IF RT_AddPart.Q AND NOT arrParts_ConvIn[5].bExists THEN
	arrParts_ConvIn[5].bExists := TRUE;
END_IF;

(*Input Conveyour Simulation*)
IF O_ConvIn_MotON THEN
	IF (c MOD 5) = 0 THEN
		(*Move parts forward*)
		F_MovePartForward(arrParts_ConvIn);
	END_IF;
END_IF;
(*Part in pick postition*)
I_ConvIn_PartPresent := arrParts_ConvIn[0].bExists;

(*Output Conveyour Simulation*)
IF O_ConvOut_MotON THEN
	IF (c MOD 5) = 0 THEN
		(*Move parts forward*)
		F_MovePartForward(arrParts_ConvOut);
	END_IF;
END_IF;
(*Part in end postition*)
I_ConvOut_PartPresent := arrParts_ConvOut[0].bExists;
tofPartLeavesConvOut(
	IN:=arrParts_ConvOut[0].bExists ,
	PT:= T#1s,
	Q=>I_ConvOut_PartPresent );
IF arrParts_ConvOut[0].bExists THEN
	(*Clear part at end of output conveyour*)
	arrParts_ConvOut[0].bExists := FALSE;
	arrParts_ConvOut[0].bHasHole := FALSE;
END_IF;


IF bMANUAL_CONTROLS THEN
	(*Left manipulator*)
	fbManipLeft(
		bEnable:= ,
		bLift_Start:= ,
		fLift_Velo:= ,
		fLift_TargetPos:= ,
		bBeam_Left:= ,
		bBeam_Right:= ,
		bGripper_Close:= ,
		stPart_inGripper:= stPart_inMLeftGripper,
		bGripperIsOpen=> I_ManiL_Gripper_Open,
		bLift_InTarget=> bManiL_axZ_InTargetPos,
		fLift_CurrentPos=> fManiL_axZ_CurrPos,
		bLimit_Top=> I_ManiL_Limit_Up,
		bLimit_Bottom=> I_ManiL_Limit_Dn,
		bHome_Sensor=> I_ManiL_Limit_Home,
		bBeamAtRight=> I_ManiL_Turned_Right,
		bBeamAtLeft=> I_ManiL_Turned_Left);
	
	(*Right manipulator*)
	fbManipRight(
		bEnable:= ,
		bLift_Start:= ,
		fLift_Velo:= , 
		fLift_TargetPos:= , 
		bBeam_Left:= ,
		bBeam_Right:= ,
		bGripper_Close:= , 
		stPart_inGripper:= stPart_inMRightGripper,
		bGripperIsOpen=> I_ManiR_Gripper_Open,
		bLift_InTarget=> bManiR_axZ_InTargetPos,
		fLift_CurrentPos=> fManiR_axZ_CurrPos,
		bLimit_Top=> I_ManiR_Limit_Up,
		bLimit_Bottom=> I_ManiR_Limit_Dn,
		bHome_Sensor=> I_ManiR_Limit_Home,
		bBeamAtRight=> I_ManiR_Turned_Right,
		bBeamAtLeft=> I_ManiR_Turned_Left);
	
	(*Call drill machine*)
	fbDrill(
		bEnable:= ,
		bLift_Start:= ,
		fLift_Velo:= ,
		fLift_TargetPos:= , 
		bDrillOn:= , 
		bFixture_Close:= , 
		stPart_inFixture:= stPart_inDrillFixture,
		bLift_InTarget=> bDrill_axZ_InTargetPos,
		fLift_CurrentPos=> fDrill_axZ_CurrPos,
		bLimit_Top=> I_Drill_Limit_Up,
		bLimit_Bottom=> I_Drill_Limit_Dn,
		bHome_Sensor=> I_Drill_Limit_Home,
		bFixture_Open=> I_Drill_Fixture_Open,
		bFixture_Closed=> I_Drill_Fixture_Closed);

ELSE
	(*Left manipulator*)
	fbManipLeft(
		bEnable:= bManiL_axZ_Enable,
		bLift_Start:= bManiL_axZ_Start,
		fLift_Velo:= fManiL_axZ_Velo,
		fLift_TargetPos:= fManiL_axZ_TargetPos,
		bBeam_Left:= O_ManiL_Turn_Left,
		bBeam_Right:= O_ManiL_Turn_Right,
		bGripper_Close:= O_ManiL_Gripper_Close,
		stPart_inGripper:= stPart_inMLeftGripper,
		bGripperIsOpen=> I_ManiL_Gripper_Open,
		bLift_InTarget=> bManiL_axZ_InTargetPos,
		fLift_CurrentPos=> fManiL_axZ_CurrPos,
		bLimit_Top=> I_ManiL_Limit_Up,
		bLimit_Bottom=> I_ManiL_Limit_Dn,
		bHome_Sensor=> I_ManiL_Limit_Home,
		bBeamAtRight=> I_ManiL_Turned_Right,
		bBeamAtLeft=> I_ManiL_Turned_Left);

	(*Right manipulator*)
	fbManipRight(
		bEnable:= bManiR_axZ_Enable,
		bLift_Start:= bManiR_axZ_Start,
		fLift_Velo:= fManiR_axZ_Velo,
		fLift_TargetPos:= fManiR_axZ_TargetPos,
		bBeam_Left:= O_ManiR_Turn_Left,
		bBeam_Right:= O_ManiR_Turn_Right,
		bGripper_Close:= O_ManiR_Gripper_Close,
		stPart_inGripper:= stPart_inMRightGripper,
		stPart_inGripper:= stPart_inMRightGripper,
		bGripperIsOpen=> I_ManiR_Gripper_Open,
		bLift_InTarget=> bManiR_axZ_InTargetPos,
		fLift_CurrentPos=> fManiR_axZ_CurrPos,
		bLimit_Top=> I_ManiR_Limit_Up,
		bLimit_Bottom=> I_ManiR_Limit_Dn,
		bHome_Sensor=> I_ManiR_Limit_Home,
		bBeamAtRight=> I_ManiR_Turned_Right,
		bBeamAtLeft=> I_ManiR_Turned_Left);

	(*Call drill machine*)
	fbDrill(
		bEnable:= bDrill_axZ_Enable,
		bLift_Start:= bDrill_axZ_Start,
		fLift_Velo:= fDrill_axZ_Velo,
		fLift_TargetPos:= fDrill_axZ_TargetPos,
		bDrillOn:= O_Drill_Spindle_On,
		bFixture_Close:= O_Drill_Fixture_Close,
		stPart_inFixture:= stPart_inDrillFixture,
		bLift_InTarget=> bDrill_axZ_InTargetPos,
		fLift_CurrentPos=> fDrill_axZ_CurrPos,
		bLimit_Top=> I_Drill_Limit_Up,
		bLimit_Bottom=> I_Drill_Limit_Dn,
		bHome_Sensor=> I_Drill_Limit_Home,
		bFixture_Open=> I_Drill_Fixture_Open,
		bFixture_Closed=> I_Drill_Fixture_Closed);
END_IF;


(*Make part exchange and check error conditions between ConvIn and ManipLeft*)
ErrorCheck_ManipLeft_ConvIn;
(*Make part exchange and check error conditions between ManipLeft and Drill*)
ErrorCheck_ManipLeft_Drill;
(*Make drilling and check error conditions at Drilling*)
ErrorCheck_Drill;
(*Make part exchange and check error conditions between ManipRight and Drill*)
ErrorCheck_ManipRight_Drill;
(*Make part exchange and check error conditions between ManipRight and ConvOut*)
ErrorCheck_ManipRight_ConvOut;
(*Collisions between devices*)
ErrorCheck_Collisions;


(*drops part from Manipulator Left*)
IF stPart_inMLeftGripper.bExists AND fbManipLeft.bGripperIsOpen THEN
	stPart_inMLeftGripper.bExists := FALSE;
END_IF;
(*drops part from Manipulator Right*)
IF stPart_inMRightGripper.bExists AND fbManipRight.bGripperIsOpen THEN
	stPart_inMRightGripper.bExists := FALSE;
END_IF;



(*Clear active errors*)
IF bClearErrors THEN
	wError_ManipL := 0;
	wError_Drill := 0;
	wError_ManipR := 0;
END_IF;

(*Remove parts from entire system*)
IF bClearSystem THEN
	(*Clear input & output conveyour from parts*)
	FOR i:= 0 TO 10 DO
		arrParts_ConvIn[i].bExists := FALSE;
		arrParts_ConvOut[i].bExists := FALSE;
	END_FOR;
	(*Clear Manipulators and drill from parts*)
	stPart_inMLeftGripper.bExists := FALSE;
	stPart_inDrillFixture.bExists := FALSE;
	stPart_inMRightGripper.bExists := FALSE;
END_IF;

 B   , h h ??           ErrorCheck_Collisions ??;^  (*ManipL and Conveyor collision*)
IF (fbManipLeft.fPos_Y > 140) AND (fbManipLeft.fPos_angle < 50) THEN
	wError_ManipL.7 := TRUE;	(*collision with conveyor*)
END_IF;

(*ManipL and Drill collision*)
IF ((fbDrill.fPos_Y + 16) > fbManipLeft.fPos_Y) AND fbManipLeft.fPos_angle > 150 THEN
	wError_ManipL.1 := TRUE;
	wError_Drill.0 := TRUE;
END_IF;

(*ManipR and Drill collision*)
IF ((fbDrill.fPos_Y + 10) > fbManipRight.fPos_Y) AND fbManipRight.fPos_angle < 40 THEN	(* was +16 and <50 *)
	wError_ManipR.1 := TRUE;
	wError_Drill.1 := TRUE;
END_IF;

(*ManipR and Conveyor collision*)
IF (fbManipRight.fPos_Y > 140) AND (fbManipRight.fPos_angle > 150) THEN
	wError_ManipR.7 := TRUE;	(*collision with conveyor*)
END_IF;

(*ManipL and ManipR collision*)
IF (fbManipLeft.fPos_angle > 130) AND (fbManipRight.fPos_angle < 50) AND
  (ABS(fbManipRight.fPos_Y - fbManipLeft.fPos_Y) < 60) THEN
	wError_ManipL.9 := TRUE;	(*collision sidewise with ManipulatorRight*)
	wError_ManipR.9 := TRUE;	(*collision sidewise with ManipulatorLeft*)
END_IF;E   , 3 Y ??           ErrorCheck_Drill ??;^O  (*State model for Drilling.
Includes all associated error conditions and judgements *)

(*Drilling cycle has been initiated, but part is removed somewhere between.*)
IF (iState_IF[5] > 0) AND NOT stPart_inDrillFixture.bExists THEN
	iState_IF[5] := 0;
END_IF;

(*Drilled too long*)
IF stPart_inDrillFixture.bExists AND
  (fbDrill.fPos_Y > (fPOS_DRILL_BIT_TOUCHES + fPART_HOLE_DEPTH_MAX)) THEN
	wError_Drill.2 := TRUE;	(*collision with part and Drill*)
END_IF;


CASE iState_IF[5] OF
0: (* IDLE *)
	IF fbDrill.fPos_Y > ( fPOS_DRILL_BIT_TOUCHES - fPART_HEIGH ) THEN
		iState_IF[5] := 1;
	END_IF;

1: (* Approaches with Drill *)
	IF  fbDrill.fPos_Y >= fPOS_DRILL_BIT_TOUCHES THEN
		iState_IF[5] := 2;
	END_IF;

2: (* Drilling *)
	IF fbDrill.fPos_Y >= (fPOS_DRILL_BIT_TOUCHES + fPART_HOLE_DEPTH_REQ ) THEN
		iState_IF[5] := 3;
	END_IF;
	IF stPart_inDrillFixture.bExists AND NOT fbDrill.bFixture_Closed THEN
		wError_Drill.7 := TRUE;	(*Drilling without closed fixture*)
	END_IF;
	IF stPart_inDrillFixture.bExists AND fbDrill.iRPMCurrent < iDRILL_SPINDLE_MIN_FOR_DRILLING THEN
		wError_Drill.2 := TRUE;	(*collision with part and Drill*)
		wError_Drill.6 := TRUE;	(*Drilling without sufficient spindle RPM*)
	END_IF;

3: (* Drilled *)
	stPart_inDrillFixture.bHasHole := TRUE;
	IF fbDrill.fPos_Y < fPOS_DRILL_BIT_TOUCHES THEN
		iState_IF[5] := 4;
	END_IF;

4: (* moved up from part *)
	stPart_inDrillFixture.bHasHole := TRUE;
	IF fbDrill.fPos_Y < 30 THEN
		iState_IF[5] := 5;
	END_IF;

5: (* moved to wait area *)
	iState_IF[5] := 0;

ELSE
	iState_IF[5] := 0;
END_CASE;G   , ? ? ??           ErrorCheck_ManipLeft_ConvIn ??;^?	  (*State model for exchanging part from ConveyorIn to ManipLeft.
Includes all associated error conditions and judgements *)

CASE iState_IF[1] OF
0: (* IDLE *)
	IF arrParts_ConvIn[0].bExists AND NOT stPart_inMLeftGripper.bExists THEN
		iState_IF[1] := 1;
	END_IF;

1: (* waitMoveAbove *)
	IF fbManipLeft.bBeamAtLeft AND fbManipLeft.fPos_Y < fPOS_MANIP_CONV_NO_PART_SAFE THEN
		iState_IF[1] := 2;
	END_IF;
	IF fbManipLeft.fPos_angle < 30 AND fbManipLeft.fPos_Y > fPOS_MANIP_CONV_NO_PART_SAFE THEN
		wError_ManipL.0 := TRUE;
	END_IF;

2: (* ManipulatorLeft is above *)
	IF fbManipLeft.bBeamAtLeft AND fbManipLeft.fPos_Y >= fPOS_MANIP_CONV_NO_PART_SAFE THEN
		iState_IF[1] := 3;
	END_IF;
	IF NOT fbManipLeft.bBeamAtLeft AND fbManipLeft.fPos_angle < 30 AND fbManipLeft.fPos_Y > fPOS_MANIP_CONV_NO_PART_SAFE THEN
		wError_ManipL.0 := TRUE;
	END_IF;

3: (* Approaches from above *)
	IF fbManipLeft.bBeamAtLeft AND fbManipLeft.bGripperIsOpen AND
	  fbManipLeft.fPos_Y >= (fPOS_MANIP_CONV_PICK_LEVEL - 2*fPART_PICK_TOLERANCE) THEN
		iState_IF[1] := 4;
	ELSIF fbManipLeft.fPos_Y < fPOS_MANIP_CONV_NO_PART_SAFE THEN
		iState_IF[1] := 0;
	END_IF;
	IF NOT fbManipLeft.bBeamAtLeft THEN
		wError_ManipL.0 := TRUE;
	END_IF;
	IF NOT fbManipLeft.bGripperIsOpen THEN
		wError_ManipL.5 := TRUE;
	END_IF;

4: (* Over part *)
	IF fbManipLeft.bBeamAtLeft AND fbManipLeft.fPos_Y >= (fPOS_MANIP_CONV_PICK_LEVEL - fPART_PICK_TOLERANCE) AND
	fbManipLeft.fPos_Y <= fPOS_MANIP_CONV_PICK_LEVEL AND fbManipLeft.bGripperClosed THEN
		(*Grasping occurs*)
		iState_IF[1] := 5;
		(*TODO: Add part grasp height compensation*)
	ELSIF fbManipLeft.fPos_Y < fPOS_MANIP_CONV_NO_PART_SAFE THEN
		iState_IF[1] := 0;
	END_IF;
	IF NOT fbManipLeft.bBeamAtLeft THEN
		wError_ManipL.0 := TRUE;
	END_IF;
	IF fbManipLeft.fPos_Y > fPOS_MANIP_CONV_PICK_LEVEL THEN
		wError_ManipL.2 := TRUE;
	END_IF;

5: (* part grasped *)
	stPart_inMLeftGripper.bExists := TRUE;
	IF fbManipLeft.bBeamAtLeft AND fbManipLeft.fPos_Y < fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		iState_IF[1] := 6;
	END_IF;
	IF NOT fbManipLeft.bBeamAtLeft AND fbManipLeft.fPos_Y > fPOS_MANIP_CONV_NO_PART_SAFE THEN
		wError_ManipL.3 := TRUE;
	END_IF;

6: (* moved up with part *)
	IF fbManipLeft.fPos_Y < fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		iState_IF[1] := 7;
	END_IF;

7: (* moved up with part *)
	arrParts_ConvIn[0].bExists := FALSE;
	iState_IF[1] := 0;

ELSE
	iState_IF[1] := 0;
END_CASE;A   , ?  ?r           ErrorCheck_ManipLeft_Drill ??;^  (*State model for exchanging part from ManipLeft to Drill.
Includes all associated error conditions and judgements *)

(*Dropping part from gripper too soon*)
IF (iState_IF[2] > 0) AND (iState_IF[2] <= 3) AND NOT fbManipLeft.bGripperClosed AND stPart_inMLeftGripper.bExists THEN
	wError_ManipL.6 := TRUE;
	iState_IF[2] := 0;
END_IF;

(*Collision with parts*)
IF stPart_inMLeftGripper.bExists AND stPart_inDrillFixture.bExists AND fbManipLeft.bBeamAtRight AND
  fbManipLeft.fPos_Y > (fPOS_MANIP_DRILL_PICK_LEVEL - 2* fPART_HEIGH) THEN
	wError_Drill.3 := TRUE;
END_IF;

(*Part exchange sequence*)
CASE iState_IF[2] OF
0: (* IDLE *)
	IF stPart_inMLeftGripper.bExists AND fbManipLeft.bGripperClosed THEN
		iState_IF[2] := 1;
	END_IF;

1: (* waitMoveAbove *)
	IF fbManipLeft.bBeamAtRight AND fbManipLeft.fPos_Y < fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		iState_IF[2] := 2;
	END_IF;
	IF fbManipLeft.fPos_angle > 150 AND fbManipLeft.fPos_Y > fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		wError_ManipL.1 := TRUE;
	END_IF;

2: (* ManipulatorLeft is above release point*)
	IF fbManipLeft.bBeamAtRight AND fbManipLeft.fPos_Y >= fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		iState_IF[2] := 3;
	END_IF;
	IF NOT fbManipLeft.bBeamAtRight AND (fbManipLeft.fPos_angle > 150) AND
	  (fbManipLeft.fPos_Y > fPOS_MANIP_DRILL_WITH_PART_SAFE) THEN
		wError_ManipL.1 := TRUE;
	END_IF;

3: (* Approaches from above *)
	IF fbManipLeft.bBeamAtRight AND fbManipLeft.bGripperClosed AND
	  (fbManipLeft.fPos_Y >= (fPOS_MANIP_DRILL_PICK_LEVEL - fPART_PICK_TOLERANCE)) THEN
		iState_IF[2] := 4;
	ELSIF fbManipLeft.fPos_Y < fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		iState_IF[2] := 0;
	END_IF;
	IF NOT fbManipLeft.bBeamAtRight AND fbManipLeft.fPos_Y > fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		wError_ManipL.1 := TRUE;
	END_IF;

4: (* At release point *)
	(*Errors*)
	IF stPart_inDrillFixture.bExists THEN
		wError_ManipL.2 := TRUE;
		wError_Drill.3 := TRUE;
	END_IF;
	(*State trensition*)
	IF fbManipLeft.bBeamAtRight AND (fbManipLeft.fPos_Y >= (fPOS_MANIP_DRILL_PICK_LEVEL - fPART_PICK_TOLERANCE)) AND
	fbManipLeft.fPos_Y <= fPOS_MANIP_DRILL_PICK_LEVEL AND fbManipLeft.bGripperIsOpen THEN
		(*Release occurs*)
		iState_IF[2] := 5;
		(*Copy part to Drill Fixture*)
		F_CopyPart(stPart_inMLeftGripper, stPart_inDrillFixture);
		stPart_inMLeftGripper.bExists := FALSE;
	ELSIF fbManipLeft.fPos_Y < fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		iState_IF[2] := 0;
	END_IF;
	IF NOT fbManipLeft.bBeamAtRight AND fbManipLeft.fPos_Y > fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		wError_ManipL.1 := TRUE;
	END_IF;
	IF fbManipLeft.fPos_Y > fPOS_MANIP_DRILL_PICK_LEVEL THEN
		wError_ManipL.2 := TRUE;
	END_IF;
	IF fbDrill.bFixture_Closed THEN
		wError_Drill.4 := TRUE;	(*Fixture closed when inserting part*)
	END_IF;

5: (* Release part *)
	IF fbManipLeft.bBeamAtRight AND fbManipLeft.fPos_Y <= fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		iState_IF[2] := 6;
	ELSIF fbManipLeft.bBeamAtLeft AND fbManipLeft.fPos_Y <= fPOS_MANIP_CONV_NO_PART_SAFE THEN
		(* Errornous leave condition*)
		iState_IF[2] := 0;
	END_IF;
	IF NOT fbManipLeft.bBeamAtRight AND fbManipLeft.fPos_Y > fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		wError_ManipL.1 := TRUE;
		wError_ManipL.3 := TRUE;
	END_IF;
	IF NOT fbManipLeft.bGripperIsOpen THEN
		wError_ManipR.10 := TRUE;	(*re-grasping released part*)
	END_IF;

6: (* moved up *)
	IF fbManipLeft.fPos_Y <= fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		iState_IF[2] := 7;
	END_IF;
	iState_IF[2] := 0;

7: (* Can move away *)
	iState_IF[2] := 0;

ELSE
	iState_IF[2] := 0;
END_CASE;H   , ?t ?x           ErrorCheck_ManipRight_ConvOut ??;^?  (*State model for exchanging part from ManipRight to Conveyor.
Includes all associated error conditions and judgements *)

(*Dropping part from gripper too soon*)
IF (iState_IF[4] > 0) AND (iState_IF[4] <= 3) AND NOT fbManipRight.bGripperClosed AND stPart_inMRightGripper.bExists THEN
	wError_ManipR.6 := TRUE;
	iState_IF[4] := 0;
END_IF;

(*Collision with parts*)
IF stPart_inMRightGripper.bExists AND arrParts_ConvOut[5].bExists AND fbManipRight.fPos_angle > 150 AND
  fbManipRight.fPos_Y > (fPOS_MANIP_CONV_PICK_LEVEL - fPART_HEIGH) THEN
	wError_ManipR.8 := TRUE;
END_IF;

(*Part exchange sequence*)
CASE iState_IF[4] OF
0: (* IDLE *)
	IF stPart_inMRightGripper.bExists AND fbManipRight.bGripperClosed THEN
		iState_IF[4] := 1;
	END_IF;

1: (* waitMoveAbove *)
	IF fbManipRight.bBeamAtRight AND fbManipRight.fPos_Y <= fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		iState_IF[4] := 2;
	END_IF;
	IF fbManipRight.fPos_angle > 150 AND fbManipRight.fPos_Y > fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		wError_ManipR.0 := TRUE;
	END_IF;

2: (* ManipulatorRight is above release point*)
	IF fbManipRight.bBeamAtRight AND fbManipRight.fPos_Y >= fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		iState_IF[4] := 3;
	END_IF;
	IF NOT fbManipRight.bBeamAtRight AND (fbManipRight.fPos_angle > 150) AND
	  (fbManipRight.fPos_Y > fPOS_MANIP_CONV_WITH_PART_SAFE) THEN
		wError_ManipR.0 := TRUE;
	END_IF;

3: (* Approaches from above *)
	IF fbManipRight.bBeamAtRight AND fbManipRight.bGripperClosed AND
	  (fbManipRight.fPos_Y >= (fPOS_MANIP_CONV_PICK_LEVEL - fPART_PICK_TOLERANCE)) THEN
		iState_IF[4] := 4;
	ELSIF fbManipRight.fPos_Y < fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		iState_IF[4] := 0;
	END_IF;
	IF NOT fbManipRight.bBeamAtRight AND fbManipRight.fPos_Y > fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		wError_ManipR.0 := TRUE;
	END_IF;

4: (* At release point *)
	(*Errors*)
	IF arrParts_ConvOut[5].bExists THEN
		wError_ManipR.2 := TRUE;
	END_IF;
	(*State trensition*)
	IF fbManipRight.bBeamAtRight AND (fbManipRight.fPos_Y >= (fPOS_MANIP_CONV_PICK_LEVEL - fPART_PICK_TOLERANCE)) AND
	fbManipRight.fPos_Y <= fPOS_MANIP_CONV_PICK_LEVEL AND fbManipRight.bGripperIsOpen THEN
		(*Release occurs*)
		iState_IF[4] := 5;
		(*Copy part to Conveyour Out*)
		F_CopyPart(stPart_inMRightGripper, arrParts_ConvOut[5]);
		(*TODO: Add part grasp height compensation*)
	ELSIF fbManipRight.fPos_Y < fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		iState_IF[4] := 0;
	END_IF;
	IF NOT fbManipRight.bBeamAtRight AND fbManipRight.fPos_Y > fPOS_MANIP_CONV_WITH_PART_SAFE THEN
		wError_ManipR.1 := TRUE;
	END_IF;
	IF fbManipRight.fPos_Y > fPOS_MANIP_CONV_PICK_LEVEL THEN
		wError_ManipR.2 := TRUE;
	END_IF;

5: (* Release part *)
	stPart_inMRightGripper.bExists := FALSE;
	IF fbManipRight.bBeamAtRight AND fbManipRight.fPos_Y <= fPOS_MANIP_CONV_NO_PART_SAFE AND
	   fbManipRight.bGripperIsOpen THEN
		iState_IF[4] := 6;
	END_IF;
	IF NOT fbManipRight.bBeamAtRight AND fbManipRight.fPos_Y > fPOS_MANIP_CONV_NO_PART_SAFE THEN
		wError_ManipR.1 := TRUE;
		wError_ManipR.3 := TRUE;
	END_IF;
	IF NOT fbManipRight.bGripperIsOpen THEN
		wError_ManipR.10 := TRUE;	(*re-grasping released part*)
	END_IF;

6: (* moved up *)
	iState_IF[4] := 0;

ELSE
	iState_IF[4] := 0;
END_CASE;F   , 4 4 ??           ErrorCheck_ManipRight_Drill ??;^?  (*State model for exchanging part from Drive to ManipRight.
Includes all associated error conditions and judgements *)

CASE iState_IF[3] OF
0: (* IDLE *)
	IF stPart_inDrillFixture.bExists AND NOT stPart_inMRightGripper.bExists THEN
		iState_IF[3] := 1;
	END_IF;

1: (* waitMoveAbove *)
	IF fbManipRight.bBeamAtLeft AND fbManipRight.fPos_Y <= fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		iState_IF[3] := 2;
	END_IF;
	IF fbManipRight.fPos_angle < 30 AND fbManipRight.fPos_Y > fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		wError_ManipR.1 := TRUE;
	END_IF;

2: (* ManipulatorLeft is above *)
	IF fbManipRight.bBeamAtLeft AND fbManipRight.fPos_Y >= fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		iState_IF[3] := 3;
	END_IF;
	IF NOT fbManipRight.bBeamAtLeft AND fbManipRight.fPos_angle > 30 AND fbManipRight.fPos_Y > fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		wError_ManipR.1 := TRUE;
	END_IF;

3: (* Approaches from above *)
	IF fbManipRight.bBeamAtLeft AND fbManipRight.bGripperIsOpen AND
	  fbManipRight.fPos_Y >= (fPOS_MANIP_DRILL_PICK_LEVEL - fPART_PICK_TOLERANCE) THEN
		iState_IF[3] := 4;
	ELSIF fbManipRight.fPos_Y < fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		iState_IF[3] := 0;
	END_IF;
	IF NOT fbManipRight.bBeamAtLeft THEN
		wError_ManipR.1 := TRUE;
	END_IF;
	IF NOT fbManipRight.bGripperIsOpen THEN
		wError_ManipR.5 := TRUE;
	END_IF;

4: (* Over part *)
	IF fbManipRight.bBeamAtLeft AND fbManipRight.fPos_Y >= (fPOS_MANIP_DRILL_PICK_LEVEL - fPART_PICK_TOLERANCE) AND
	fbManipRight.fPos_Y <= fPOS_MANIP_DRILL_PICK_LEVEL AND fbManipRight.bGripperClosed THEN
		(*Grasping occurs*)
		iState_IF[3] := 5;
		(*Copy part from Drill Fixture*)
		F_CopyPart(stPart_inDrillFixture, stPart_inMRightGripper);
		(*TODO: Add part grasp height compensation*)
		stPart_inDrillFixture.bExists := FALSE;
		stPart_inDrillFixture.bHasHole := FALSE;
	ELSIF fbManipRight.fPos_Y < fPOS_MANIP_DRILL_NO_PART_SAFE THEN
		iState_IF[3] := 0;
	END_IF;
	IF NOT fbManipRight.bBeamAtLeft THEN
		wError_ManipR.1 := TRUE;
	END_IF;
	IF fbManipRight.fPos_Y > fPOS_MANIP_DRILL_PICK_LEVEL THEN
		wError_ManipR.2 := TRUE;
	END_IF;

5: (* part grasped *)
	IF fbManipRight.bBeamAtLeft AND fbManipRight.fPos_Y < (fPOS_MANIP_DRILL_PICK_LEVEL - fPART_PICK_TOLERANCE) THEN
		iState_IF[3] := 6;
	END_IF;
	IF NOT fbManipRight.bBeamAtLeft AND fbManipRight.fPos_Y > fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		wError_ManipR.3 := TRUE;
	END_IF;

6: (* leaving with part *)
	IF fbManipRight.bBeamAtLeft AND fbManipRight.fPos_Y <= fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		iState_IF[3] := 7;
	END_IF;
	IF NOT fbManipRight.bBeamAtLeft AND fbManipRight.fPos_Y > fPOS_MANIP_DRILL_WITH_PART_SAFE THEN
		wError_ManipR.3 := TRUE; 	(*Fixture closed while leaving with part*)
	END_IF;
	IF fbDrill.bFixture_Closed THEN
		wError_Drill.5 := TRUE;	(*Fixture closed while leaving with part*)
	END_IF;

7: (* moved up with part *)
	iState_IF[3] := 0;

ELSE
	iState_IF[3] := 0;
END_CASE;             U     ????????           RDM ??;^	??;^      ????????        ?  FUNCTION RDM : REAL
VAR_INPUT
	last : REAL;
END_VAR
VAR
	tn : DWORD;
	tc : INT;
END_VAR
(*
FROM OSCAT 333
version 1.9	10. mar. 2009
programmer 	hugo
tested by		tobias

this function calculates a pseudo random number
to generate the number it reads the sps timer and calculates a random number between 0 and 1:
in order to use rdm more then once within one sps cycle it need to be called with different seed numbers LAST.

*)U  tn := T_PLC_MS();
tc := BIT_COUNT(tn);
tn.31 := tn.2;
tn.30 := tn.5;
tn.29 := tn.4;
tn.28 := tn.1;
tn.27 := tn.0;
tn.26 := tn.7;
tn.25 := tn.6;
tn.24 := tn.3;
tn := ROL(tn,BIT_COUNT(tn)) OR 16#80000001;
tn := tn MOD 71474513 + INT_TO_DWORD(tc + 77);
RDM := FRACT(DWORD_TO_REAL(tn) / 10000000.0 * (math.E - LIMIT(0.0,last,1.0)));


(*
pt := ADR(temp);
pt^ := (T_PLC_MS() AND 16#007FFFFF) OR 16#3D000000;
RDM := fract(modR(temp*e+pi1, PI1-last) + modR(temp*PI1+e + last,e-last));
*)

(* revision history
hm		16. jan 2007		rev 1.0
	original version

hm		11. nov 2007		rev 1.1
	changed time() into t_plc_ms()

hm		20. nov 2007		rev 1.2
	changed code of temp calculation to avoid overflow in modr due to resuclt would not fit DINT for high timeer values

hm		5. jan 2008		rev 1.3
	changed calculation of temp to avoid problem with high values of t_plc_ms

hm		2. feb 2008		rev 1.4
	changed algorithm to avoind non iec functions and guarantee more randomness

hm	10. mar. 2008		rev 1.5
	make sure last will be between 0 and 1 to avoid invalid results

hm	16. mar. 2008		rev 1.6
	added conversion for tc to avoid warnings under codesys 3.0

hm	18. may. 2008		rev 1.7
	changed constant E to E1

hm	18. oct. 2008		rev 1.8
	using math constants

hm	10. mar. 2009		rev 1.9
	real constants updated to new systax using dot

*)               V     ????????           T_PLC_MS ??;^	??;^      ????????        =  FUNCTION T_PLC_MS : DWORD
VAR CONSTANT
	debug : BOOL := 0;
	N : INT := 0;
	offset : DWORD := 0;
END_VAR
VAR
	tx : TIME;
END_VAR
(*
	From OSCAT 333
	version 1.2	16. nov 2008
	programmer 	hugo
	tested BY	oscat

	T_PLC_MS reads the internal PLC timer AND RETURN the TIME, it has the advantage TO be able TO set a debug mode
AND SPEED up the counter TO test the plc timer overrun which occurs every 50 days respectively 25 days AT siemens S7
	this routine also allows TO correct the behavior OF s7 where the internal plc counter will NOT count all 32 bits.
*)?  tx := TIME();
T_PLC_MS := TIME_TO_DWORD(Tx);
(* hier muss die korrektur f?r step7 stattfinden
plctime muss den vollen wertebereich von time ausnutzen:
wenn bei step7 time -24tage bis plus 24 tage ist dann muss der timer auch beim ?berlauf auf -24tage springen 
und auf keinen fall auf 0 !!!!
f?r siemens muss ein weiterer fb im main eingebunden werden der sicherstellt das alle 32 bits durchgez?hlt werden.
es kann nur ein fb sein den er muss sich das oberste (32te) bit merken.
oder etwa spring s7 bei ?berlauf auf -24 tage????? dann w?re keine korrektur n?tig.
*)
IF debug THEN
	T_PLC_MS := (SHL(T_PLC_MS,N) OR SHL(DWORD#1,N)-1) + OFFSET;
END_IF;

(* revision history
hm	14.9.2007	rev 1.0
	original version

hm	12. nov 2007	rev 1.1
	added temporaray variable tx because some compilers could not handle time() as an argument

hm	16. nov. 2008	rev 1.2
	initialized constants with 0 for compatibility reasons
*)                D   , V K IG        	   VC_Beacon ??;^
    @???͠?;^   d                                                                                                          
    @            )      ???     ?                                      $red$        @                           ???        @
                       @                                                                                                           
    @           ) =  -   ???     ??                                     $yellow$        @                          ???        @
                       @                                                                                                           
    @          < ) [  K   ???      ?                                     $green$        @                          ???        @
                       @                                                                                                           
    @        
 Z  y  i   ???     ???                                             @                          ???        @
                       @           red              yellow             green          ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  N   , 9@G           VC_ErrorDetail_Drill ??;^
    @???͠?;^	   d   	                                                                                                     
    @           ? ) i         ???     ???            VC_ErrorItem                                          ???        @
                                               @         name   flag     !   'Collision with Manipulator Left'   $errorWord$.0                                                                                                      
    @            ?  i 
   ???     ???                                            Drill Errors @                          ???       MS Sans Serif @
                       @                                                                                                         
    @          ( ? = i 2        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     "   'Collision with Manipulator Right'   $errorWord$.1                                                                                                    
    @          ? ? ? i ?        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     !   'Drilling without closed fixture'   $errorWord$.7                                                                                                    
    @          < ? Q i F        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag        'Collision with part and Drill'   $errorWord$.2                                                                                                    
    @          P ? e i Z        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag        'Collision with two Parts'   $errorWord$.3                                                                                                    
    @          d ? y i n        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     $   'Fixture closed when inserting part'   $errorWord$.4                                                                                                    
    @          x ? ? i ?        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     (   'Fixture closed while leaving with part'   $errorWord$.5                                                                                                    
    @          ? ? ? i ?        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     )   'Drilling without sufficient spindle RPM'   $errorWord$.6   	   errorWord                                ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  K   , % ?(           VC_ErrorDetail_Manip ??;^
    @???͠?;^   d                                                                                                        
    @           ? ) i         ???     ???            VC_ErrorItem                                          ???        @
                                               @         name   flag     '   'Collision from sidewise with conveyor'   $errorWord$.0                                                                                                      
    @            ?  i 
   ???     ???                                        $manipName$   Manipulator%s Errors @                          ???       MS Sans Serif @
                       @                                                                                                         
    @          ( ? = i 2        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     $   'Collision from sidewise with drill'   $errorWord$.1                                                                                                    
    @          < ? Q i F        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag        'Collision from above'   $errorWord$.2                                                                                                    
    @          P ? e i Z        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag        'x'   $errorWord$.0                                                                                                    
    @          P ? e i Z        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     #   'Collision with part while leaving'   $errorWord$.3                                                                                                    
    @          d ? y i n        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag        'Collision with drill'   $errorWord$.4                                                                                                    
    @          x ? ? i ?        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     '   'Finger closed during approaching part'   $errorWord$.5                                                                                                    
    @          ? ? ? i ?        ???     ???            VC_ErrorItem                                     	    ???        @
                                               @         name   flag        'Part dropped'   $errorWord$.6                                                                                                    
    @          ? ? ? i ?        ???     ???            VC_ErrorItem                                     
    ???        @
                                               @         name   flag        'Collision with conveyor'   $errorWord$.7                                                                                                    
    @          ? ? ? i ?        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     !   'Collision with part on conveyor'   $errorWord$.8                                                                                                    
    @          ? ? ? i ?        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag     +   'Collision sidewise with other Manipulator'   $errorWord$.9                                                                                                    
    @          ? ? ? i ?        ???     ???            VC_ErrorItem                                         ???        @
                                               @         name   flag        'Re-grasping released part'   $errorWord$.10   	   errorWord                                	   
         	   manipName          ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  I   , 
'?e           VC_ErrorDetails ??;^
    @???͠?;^   d                                                                                                        
    @           ? i ?        ???     ???            VC_ErrorDetail_Manip                                          ???        @
                                               @      	   errorWord	   manipName        PRG_Simulator.wError_ManipL   'Left'                                                                                                      
    @            ? ?    ???     ???                                         $   Simulated Machine related errors @                          ???       MS Sans Serif @
                       @                                                                                                         
    @        ? w?        ???     ???            VC_ErrorDetail_Manip                                         ???        @
                                               @      	   errorWord	   manipName        PRG_Simulator.wError_ManipR   'Right'                                                                                                    
    @        ?  ?;?        ???     ???            VC_ErrorDetail_Drill                                         ???        @
                                               @      	   errorWord        PRG_Simulator.wError_Drill                                                                                                     
    @        ?  w :   ???     ??                                             Back to Main @                          ???        @
                      @    VISU_SimulatedMachine    ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  M   , Qx           VC_ErrorItem ??;^
    @???͠?;^   d                                                                                                          
    @            ?  _ 
    ???     ???                                    $flag$   $name$	   %s :  @                           ???       MS Sans Serif @                       @                                                                                                           
    @            ?  i 
    ???     ???                                             @                          ???        @
                       @                                                                                                          
    @        ?   ?  ? 
   ???     ?                                      $flag$        @                          ???        @
                       @           name              flag              ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  a   , U ?M           VC_FB_Simu_Drill ??;^
    @???͠?;^   d                                                                                                          
    @        d ? ? ? ? ?   ???     ???                                            Fixture @                          ???        @
                       @                                                                                                           
    @          ? [ ? - ?   ???     ???                                         	   Drill @                      
    ???        @
                       @                                                                                                          
    @           G = # -   ???      ?                                     $FB$.bEnable    
   Enable @                           ???        @
    $FB$.bEnable                 @                                                                                                           
    @            ?  _ 
   ???     ???                                        $Name$   FB_Simu_Drill : %s  @                          ???        @
                       @                                                                                                          
    @          < G [ # K   ???      ?                                     $FB$.bLift_Start    	   Start @                          ???        @
        $FB$.bLift_Start             @                                                                                                         
    @        
 x y ? A ?    $FB$.fLift_Velo   1   20       Velocity for the vertical lift                                                                                                      
    @        
 d y y A n   ???     ???                                        $FB$.fLift_Velo    Lift Velocity : %2.1f @                          ???        @
                       @                                                                                                         
    @        ?  ? ? ? Z    $FB$.fLift_TargetPos   -$FB$.fPOS_MAX_DOWN   5       Velocity for the vertical lift                                                                                                -$FB$.fPOS_MAX_DOWN   5
    @        Z  ? Q } 7   ???     ???                                        $FB$.fLift_TargetPos!   Lift's Target 
Pos : 
%2.1f @                          ???        @
                      @                                                                                                          
    @        
 ? Q ? - ?   ???      ?                                     $FB$.bDrillOn       ON @                      	    ???        @
    $FB$.bDrillOn                 @                                                                                                          
    @        n ? ? ? ? ?   ???      ?                                     $FB$.bFixture_Close    	   Close @                          ???        @
    $FB$.bFixture_Close                 @           FB                         	   
      Name              ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ^   , ?%?R           VC_FB_Simu_Manipulator ??;^
    @???͠?;^   d                                                                                                          
    @        ? ? ? ? ? ?   ???     ???                                            Gripper @                          ???        @
                       @                                                                                                           
    @          ? ? ? K ?   ???     ???                                            Beam @                      
    ???        @
                       @                                                                                                          
    @           G = # -   ???      ?                                     $FB$.bEnable    
   Enable @                           ???        @
    $FB$.bEnable                 @                                                                                                           
    @            ?  s 
   ???     ???                                        $Name$   FB_Simu_Manipulator : %s  @                          ???        @
                       @                                                                                                          
    @          < G [ # K   ???      ?                                     $FB$.bLift_Start    	   Start @                          ???        @
        $FB$.bLift_Start             @                                                                                                         
    @        
 x y ? A ?    $FB$.fLift_Velo   1   20       Velocity for the vertical lift                                                                                                      
    @        
 d y y A n   ???     ???                                        $FB$.fLift_Velo    Lift Velocity : %2.1f @                          ???        @
                       @                                                                                                         
    @        ?  ? ? ? Z    $FB$.fLift_TargetPos   -$FB$.fPOS_MAX_DOWN   5       Velocity for the vertical lift                                                                                                -$FB$.fPOS_MAX_DOWN   5
    @        ?  ? Q ? 7   ???     ???                                        $FB$.fLift_TargetPos!   Lift's Target 
Pos : 
%2.1f @                          ???        @
                      @                                                                                                          
    @          ? G ? # ?   ???      ?                                     $FB$.bBeam_Left       Left @                      	    ???        @
    $FB$.bBeam_Left                 @                                                                                                          
    @        P ? ? ? s ?   ???      ?                                     $FB$.bBeam_Right    	   Right @                          ???        @
    $FB$.bBeam_Right                 @                                                                                                          
    @        ? ? ? ? ? ?   ???      ?                                     $FB$.bGripper_Close    	   Close @                          ???        @
    $FB$.bGripper_Close                 @           FB    	                     	   
         Name              ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  l   , N N ??           VC_Panel_MachineControl ??;^
    @???͠?;^   ?                                                                                                         
    @           V B + -   ???     ??                                      PRG_Simulator.bBtn_EmergencyStop       Emergency
Stop @                           ???        @
     PRG_Simulator.bBtn_EmergencyStop                 @                                                                                                          
    @        Z  ? B ? -   ???     ??                                     .I_Btn_Start    	   Start @                          ???        @
        .I_Btn_Start             @                                                                                                          
    @          F V e + U   ???     ??                                     .I_Btn_Reset    	   Reset @                          ???        @
        .I_Btn_Reset             @                                                                                                          
    @        ?   B ? -   ???     ??                                     .I_Btn_Stop       Stop @                          ???        @
        .I_Btn_Stop             @                                                                                                           
    @              ? 
   ???     ???                                            Machine Control Panel @                          ???       MS Sans Serif @                       @                                                                                                           
    @        _ s  ? ? }   ???     ???                                        .fbStateModel.eMode    Mode : %s @                          ???        @
                       @                                                                                                           
    @        _ ?  ? ? ?   ???     ???                                        .fbStateModel.eState    State : %s @                          ???        @
                       @                                                                                                         
    @          s ` ? 0 ?        ???     ???            VC_Panel_ModeSelector                                          ???        @
                                               @                                                                                                                   
    @        i _ ? o ? g    ???     ???                                            Running @                      	    ???        @
                       @                                                                                                           
    @        ? _ ? o ? g    ???     ???                                            Stopped @                      
    ???        @
                       @                                                                                                          
    @        n F ? e ? U   ???      ?                                     .O_Light_Start        @                          ???        @
                       @                                                                                                          
    @        ? F ? e ? U   ???     ?                                      .O_Light_Stop        @                          ???        @
                       @                                                                                                         
    @        K 7 V B P <        ???     ???         	   VC_sensor                                         ???        @
                                               @         VAR        .I_EmergencyClear    ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  R   , ? ?            VC_Panel_ModeSelector ??;^
    @???͠?;^   x                                                                                                         
    @           t . : !   ???     ??                                     .HMI_uModeReq=3    
   Manual @                          ???        @
                  "   INTERN ASSIGN HMI_uModeReq:=(3) @                                                                                                           
    @            t  : 
   ???     ???                                            Mode Select @                          ???       MS Sans Serif @
                       @                                                                                                          
    @          - t G : :   ???     ??                                     .HMI_uModeReq=1       Automatic @                          ???        @
                  "   INTERN ASSIGN HMI_uModeReq:=(1) @         ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  0   , ?Yk           VC_Part ??;^
    @???͠?;^   ?                                                                                                          
    @            ) 3     ???     ???                                NOT $part$.bExists            @                           ???        @
                       @                                                                                                           
    @            )      ???     ???                             )   NOT $part$.bExists OR NOT $part$.bHasHole            @                          ???        @
                       @           part                  ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  +   ,     _d        	   VC_sensor ??;^
    @???͠?;^   d                                                                                                          
    @                  ???     ???                                    $VAR$        @                           ???        @
                       @           VAR               ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  Y   , ? ? ??           VC_Simu_Conv_In ??;^
    @???͠?;^   ?                                                                                                          
    @         2 Q ? A   ???     ???                                             @                          ???        @
                       @                                                                                                         
    @        ?   ? 3 ?         ???     ???            VC_Part                                         ???        @
                                               @         part        $Arr$[0]                                                                                                    
    @        ? ( ? 3 ? -        ???     ???         	   VC_sensor                                     	    ???        @
                                               @         VAR        $Arr$[0].bExists                                                                                                     
    @          2  Q  A   ???     ???                                             @                          ???        @
                       @                                                                                                          
    @        ? 2 Q ? A   ???     ???                                             @                          ???        @
                       @                                                                                                         
    @        ?   ? 3 ?         ???     ???            VC_Part                                         ???        @
                                               @         part        $Arr$[1]                                                                                                    
    @        ?   ? 3 ?         ???     ???            VC_Part                                         ???        @
                                               @         part        $Arr$[2]                                                                                                    
    @        Z   ? 3 n         ???     ???            VC_Part                                         ???        @
                                               @         part        $Arr$[3]                                                                                                    
    @        2   [ 3 F         ???     ???            VC_Part                                         ???        @
                                               @         part        $Arr$[4]                                                                                                    
    @        
   3 3          ???     ???            VC_Part                                         ???        @
                                               @         part        $Arr$[5]                                                                                                      
    @        ? < ? Q ? F           ??      ???                                    OFF @                          ???       MS Sans Serif @
                       @                                                                                                           
    @        ? < ? Q ? F   ???     ??                                 NOT $MotOn$           ON @                          ???       MS Sans Serif @
                       @           Arr                         	      MotOn              ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  _   , ? < ?O           VC_Simu_Drill ??;^
    @???͠?;^   ?                                                                                                          
    @          [ #< ?   ??@     ???                                             @                          ???        @
                       @                                                                                                           
    @          e 8 < &   @??     ???                                             @             $FB$.fBasePos_Y            ???        @
                       @                                                                                                           
    @            y  < 
   ???     ???                                        $FB$.fLift_CurrentPos   %3.1f : Drill Pos  @                          ???        @
                       @                                                                                                         
    @        P  [  U         ???     ???         	   VC_sensor                                          ???        @
                                               @         VAR        $FB$.bLimit_Top                                                                                                    
    @        P ? [ ? U ?        ???     ???         	   VC_sensor                                     	    ???        @
                                               @         VAR        $FB$.bLimit_Bottom                                                                                                    
    @        P  [ ) U #        ???     ???         	   VC_sensor                                     
    ???        @
                                               @         VAR        $FB$.bHome_Sensor                                                                                                      
    @         ; _ 7 K 7 s < x A s A K 7 K   ???     ??                            @        $FB$.fBasePos_Y               $FB$.iRPMCurrent > 0    ???        @
                                                                                                                               
    @        ( 7 Q L < A   @??     ???                                             @             $FB$.fBasePos_Y            ???        @
                       @                                                                                                           
    @         e #<   ???     ???                                             @                          ???        @
                       @                                                                                                           
    @         ? ) #   ???     ???                                             @         - $FB$.fPosJawDiff                ???        @
                       @                                                                                                           
    @        P ? [ U   ???     ???                                             @         $FB$.fPosJawDiff                ???        @
                       @                                                                                                         
    @        ( ? Q < ?        ???     ???            VC_Part                                         ???        @
                                               @         part        $FB$.stPart_inFixture                                                                                                    
    @        Z e _        ???     ???         	   VC_sensor                                         ???        @
                                               @         VAR        $FB$.bFixture_Open                                                                                                    
    @         ) #        ???     ???         	   VC_sensor                                         ???        @
                                               @         VAR        $FB$.bFixture_Closed                                                                                                      
    @        d  ? ) ?    ???     ???                                        $FB$.iRPMCurrent   %d : rpm  @                          ???        @
                       @           FB                            	   
                   ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???      ????                 ,   , D	?"           VC_Simu_Manipulator ??;^
    @???͠?;^   ?                                                                                                          
    @        P  y -d ?   ???     ???                                             @                          ???        @
                       @                                                                                                           
    @        F ( ? Q d <    ??     ???                                             @             $FB$.fBasePos_Y            ???        @
                       @                                                                                                           
    @        d < e Q d F    ??     ???            $FB$.fPos_Beam_L       $FB$.fPos_Beam_R                        @             $FB$.fBasePos_Y            ???        @
                       @                                                                                                           
    @        F P ? e d Z   ???     ???                                             @         $FB$.fPos_X   $FB$.fBasePos_Y            ???        @
                       @                                                                                                           
    @        F d Q ? K s   ???     ???                                             @      !   $FB$.fPos_X - $FB$.fPosFingerDiff   $FB$.fBasePos_Y            ???        @
                       @                                                                                                           
    @        x d ? ? } s   ???     ???                                             @      !   $FB$.fPos_X + $FB$.fPosFingerDiff   $FB$.fBasePos_Y            ???        @
                       @                                                                                                         
    @        P d y ? d }        ???     ???            VC_Part                        $FB$.fPos_X   $FB$.fBasePos_Y            ???        @
                                               @         part        $FB$.stPart_inGripper                                                                                                      
    @        ( 
 ?  d    ???     ???                                        $FB$.fLift_CurrentPos   %3.1f : Lift Pos  @                          ???        @
                       @                                                                                                         
    @        x  ? ) } #        ???     ???         	   VC_sensor                                          ???        @
                                               @         VAR        $FB$.bLimit_Top                                                                                                    
    @        x "? -} '       ???     ???         	   VC_sensor                                     	    ???        @
                                               @         VAR        $FB$.bLimit_Bottom                                                                                                    
    @        x ( ? 3 x (        ???     ???         	   VC_sensor                                     
    ???        @
                                               @         VAR        $FB$.bHome_Sensor                                                                                                    
    @        ? F ? Q ? K        ???     ???         	   VC_sensor                            $FB$.fBasePos_Y            ???        @
                                               @         VAR        $FB$.bBeamAtRight                                                                                                    
    @        < F G Q A K        ???     ???         	   VC_sensor                            $FB$.fBasePos_Y            ???        @
                                               @         VAR        $FB$.bBeamAtLeft      FB                               	   
             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  [   ,   D"f           VC_SimuMach_Controls ??;^
    @???͠?;^   d                                                                                                         
    @            G ) #    ???     ??                                     PRG_Simulator.bAddPartOnConvIn       Add part @                           ???        @
        PRG_Simulator.bAddPartOnConvIn             @                                                                                                          
    @        P   ? ) x    ???     ??                                     PRG_Simulator.bClearErrors       Clear Errors @                          ???        @
        PRG_Simulator.bClearErrors             @                                                                                                           
    @        ?   A ? 
   ???     ?                                      PRG_Simulator.wError_ManipL > 0   PRG_Simulator.wError_ManipL    Errors ManipLeft : %x @                          ???        @
                       @                                                                                                          
    @          2 G Q # A   ???     ??                                     PRG_Simulator.bClearSystem       Remove
Parts @                          ???        @
        PRG_Simulator.bClearSystem             @                                                                                                           
    @        ?  A) ?    ???     ?                                      PRG_Simulator.wError_Drill > 0   PRG_Simulator.wError_Drill    Errors Drill : %x @                          ???        @
                       @                                                                                                           
    @        ? ( A= ? 2   ???     ?                                      PRG_Simulator.wError_ManipR > 0   PRG_Simulator.wError_ManipR    Errors ManipRight : %x @                          ???        @
                       @                                                                                                          
    @        ? < AQ ? F   ???     ??                                             Error Details @                          ???        @
                      @    VC_ErrorDetails        ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  J   , ??.?           VISU_SimulatedMachine ??;^
    @???͠?;^   d                                                                                                        
    @        O@???      ???     ???            VC_ErrorDetails                                       ???        @
            PRG_Simulator.bMANUAL_CONTROLS                                  @                                                                                                                 
    @          ??? ? { 7       ???     ???            VC_Panel_MachineControl                                    
    ???        @
                                               @                                                                                                                 
    @        ????s        ???     ???            VC_Simu_Drill                                         ???        @
                                               @         FB        PRG_Simulator.fbDrill                                                                                                    
    @          ? 7?        ???     ???            VC_Simu_Conv_In                                         ???        @
                                               @         Arr   MotOn        PRG_Simulator.arrParts_ConvIn   .O_ConvIn_MotON                                                                                                    
    @          @F?? p      ???     ???            VC_SimuMach_Controls                                        ???        @
                                               @                                                                                                                 
    @        E@???       ???     ???            VC_FB_Simu_Manipulator                                         ???        @
         "   NOT PRG_Simulator.bMANUAL_CONTROLS                                  @         FB   Name        PRG_Simulator.fbManipLeft   'Manip Left'                                                                                                    
    @        ? 
 ?7T?        ???     ???            VC_Simu_Manipulator                                          ???        @
                                               @         FB        PRG_Simulator.fbManipLeft                                                                                                    
    @        ?
 ?7D?        ???     ???            VC_Simu_Manipulator                                         ???        @
                                               @         FB        PRG_Simulator.fbManipRight                                                                                                    
    @        ?@b??       ???     ???            VC_FB_Simu_Manipulator                                         ???        @
         "   NOT PRG_Simulator.bMANUAL_CONTROLS                                  @         FB   Name        PRG_Simulator.fbManipRight   'Manip Right'                                                                                                    
    @        @??Q?       ???     ???            VC_FB_Simu_Drill                                         ???        @
         "   NOT PRG_Simulator.bMANUAL_CONTROLS                                  @         FB   Name        PRG_Simulator.fbDrill   'Drill'                                                                                                    
    @        ?? ?7/       ???     ???            VC_Simu_Conv_In                                     	    ???        @
                                               @         Arr   MotOn        PRG_Simulator.arrParts_ConvOut   .O_ConvOut_MotON                                                                                                    
    @        \???V p        ???     ???         	   VC_Beacon                                         ???        @
                                               @         red   yellow   green        .O_Beacon_Red   .O_Beacon_Yellow   .O_Beacon_Green        ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????, ? # ??            Util.lib*26.9.14 10:12:46 @?%T#   STANDARD.LIB 16.8.17 14:08:57 @?7?S   5   BCD_TO_INT @      GEN_MODE       POINT                  BLINK @          CHARCURVE @          DERIVATIVE @          EXTRACT @          FREQ_MEASURE @       	   GEN @          HYSTERESIS @          INT_TO_BCD @          INTEGRAL @          LIMITALARM @          LIN_TRAFO @       
   PACK @          PD @       	   PID @          PID_FIXCYCLE @          PUTBIT @          RAMP_INT @          RAMP_REAL @          STATISTICS_INT @          STATISTICS_REAL @          UNPACK @          VARIANCE @          Version_Util @             Globale_Variablen @              CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @                            , ? ????           2 ? ?                ?{?{?{?{ .I_ConvIn_PartPresent
, PRG_MAIN.fbConveyorLeft.hoPartAvail_ToRight
0 PRG_MAIN.fbConveyorLeft.hoReadyToRecieve_ToLeft
% PRG_MAIN.fbDrill.hoPartAvail_ToRight
) PRG_MAIN.fbDrill.hoReadyToRecieve_ToLeft
             ????, ,,J?        ????,     y                      POUs               Examples                 FB_SFC_Example  ?                   PRG_SFC_Example  P   ????              FBs                 FB_Conveyor_Left  ?                   FB_Conveyor_Right  ?                   FB_ConveyorSFC  \                   FB_Drill  }                	   FB_Lights  d                  FB_Manipulator  {                   FB_Pick  ?                   FB_SimpleManager  g   ????           
   omatKoodit  ????              PRG                 PRG_InitManipulator  k   ????           
   Simulation                RDM_From_OSCAT              	   BIT_COUNT  C                   D_TRUNC  O                   FRACT  Q                   RDM  U                   T_PLC_MS  V   ????             
   F_CopyPart  b                   F_MovePartForward  Z                   FB_Simu_Drill  `                   FB_Simu_Manipulator  /                  PRG_Simulator                ErrorCheck_Collisions  B                  ErrorCheck_Drill  E                  ErrorCheck_ManipLeft_ConvIn  G                  ErrorCheck_ManipLeft_Drill  A                  ErrorCheck_ManipRight_ConvOut  H                  ErrorCheck_ManipRight_Drill  F   -   ????               PRG_MAIN                actEmergency  t   .   ????           
   Data types                 CONSTANTS_MATH  X                  ST_Part  1   ????              Visualizations            	   Simulator            
   Components              	   VC_Beacon  D                   VC_ErrorItem  M                   VC_Part  0                	   VC_sensor  +   ????              ErrorPanels                 VC_ErrorDetail_Drill  N                   VC_ErrorDetail_Manip  K   ????              FBs                 VC_FB_Simu_Drill  a                   VC_FB_Simu_Manipulator  ^   ????              MachineComponents                 VC_Panel_MachineControl  l                   VC_Panel_ModeSelector  R                   VC_Simu_Conv_In  Y                   VC_Simu_Drill  _                   VC_Simu_Manipulator  ,                   VC_SimuMach_Controls  [   ????                VC_ErrorDetails  I                  VISU_SimulatedMachine  J   ????????              Global Variables                 Global_Variables                      Variable_Configuration     ????                                                             wTV                         	   localhost            P      	   localhost            P      	   localhost            P     ?+X   {QAo