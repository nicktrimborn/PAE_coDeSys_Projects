CoDeSys+c   ?               ,   Use of different IEC-61131-3 languages @       1.0.0 @   2.3.9.52?   Niko Siltala (TUT) @   ConfigExtension?          CommConfigEx7             CommConfigExEnd   ME?                  IB                    % QB                    %   ME_End   CM?      CM_End   CT?   ????????   CT_End   ConfigExtensionEnd}   Use of different IEC-61131-3 languages to control a lift door. @                                     ǆ?Y +    @                           wTV        ?t   @   B   C:\Apps\App-V\CoDeSys 2.3.9.53 TUT03\CODESYS V2.3\Library\Util.lib       
   BCD_TO_INT               B           ??           byte containing the BCD value    
   BCD_TO_INT                                     ??Y  ?    ????           BLINK           CLOCK                TP    ??                 ENABLE            ??       +    TRUE:run Blink, FALSE: OUT keeps its value   TIMELOW           ??           Time for OUT=FALSE    TIMEHIGH           ??           Time for OUT=TRUE       OUT            ??	       &    output variable, starting with FALSE             ??Y  ?    ????        	   CHARCURVE           I            ??                 IN           ??           input signal    N           ??       @    number of  points defining the characteristic curve : 2<=N<=11       OUT           ??           output variable    ERR           ??       ?    error :
												0 : 	no error
												1 :	error in ARRAY: wrong sequence ( completely tested, only if IN is equal to largest X-value of P)
												2 :	IN outside of limits of P
												4 :	number of POINTS (N) invalid       P    	  
                    POINT          ??       8    ARRAY of N points to describe the characteristic curve         ??Y  ?    ????        
   DERIVATIVE           X3             ??              X2             ??              X1             ??              T2            ??              T1            ??              INIT            ??                 IN            ??           input variable    TM           ??           time since last call in msec    RESET            ??           reset: set OUT to zero       OUT            ??
           derivative             ??Y  ?    ????           EXTRACT               X           ??           value    N           ??           number of bit to be extracted       EXTRACT                                      ??Y  ?    ????           FREQ_MEASURE           OLDIN             ??              INIT             ??              OLDT            ??              DIFF            ??              ADIFF   	  	                        ??              V            ??              B            ??              I            ??                 IN            ??           input signal    PERIODS           
              ??       A    out is the average frequency during PERIODS (number of periods)    RESET            ??           reset measurement       OUT            ??	           frequency [Hz]   VALID            ??
       \    FALSE: not yet PERIODS measurements done OR time distance between two rising edges > 3*OUT             ??Y  ?    ????           GEN           CET            ??              PER            ??              COUNTER            ??              CLOCK                TON    ??              help             ??                 MODE               GEN_MODE   ??       p   define type :
								TRIANGLE				triangular	from - AMPL. to + AMPL.
								TRIANGLE_POS		triangular	from 0 to AMPL. 
								SAWTOOTH_RISE	sawtooth increasing from -AMPL. to +AMPL.
								SAWTOOTH_FALL	sawtooth decreasing from AMPL to -AMPL
								RECTANGLE			rectangular switching from  -AMPL. to +AMPL 
								SINUS					sinus
								COSINUS				cosinus    BASE            ??       A    FALSE: period referring to call; TRUE: period referring to time    PERIOD    ?     ??       )    period time, only relevant if BASE=TRUE    CYCLES    ?     ??       9    number of calls per period, only relevant if BASE=FALSE 	   AMPLITUDE           ??           amplitude    RESET            ??           reset       OUT           ??           generated function variable             ??Y  ?    ????        
   HYSTERESIS               IN           ??           input value    HIGH           ??           upper threshold value    LOW           ??           lower threshold value       OUT            ??	           hysteresis value             ??Y  ?    ????        
   INT_TO_BCD               I           ??       !    INT value to be converted to BCD   
   INT_TO_BCD                                     ??Y  ?    ????           INTEGRAL               IN            ??           input variable    TM           ??           time since last call in msec    RESET            ??       1    reset: OUT is set to zero and OVERFLOW to false       OUT            ??	           value of the integral    OVERFLOW            ??
       
    overflow             ??Y  ?    ????        
   LIMITALARM               IN           ??           INPUT value    HIGH           ??           upper threshold value    LOW           ??           lower threshold value       O            ??	            TRUE, if IN > HIGH, else FALSE    U            ??
           TRUE, if IN < LOW, else FALSE    IL            ??           neither O nor U             ??Y  ?    ????        	   LIN_TRAFO           Diff             ??                 IN            ??           input value   IN_MIN            ??           minimum input value    IN_MAX            ??           maximum input value    OUT_MIN            ??       $    corresponding minimum output value    OUT_MAX            ??       $    corresponding maximum output value       OUT            ??           output value    ERROR            ??       .    error: IN_MIN = IN_MAX or IN out of interval             ??Y  ?    ????           PACK               B0            ??           value of bit 0    B1            ??           value of bit 1    B2            ??           value of bit 2    B3            ??           value of bit 3    B4            ??           value of bit 4    B5            ??	           value of bit 5    B6            ??
           value of bit 6    B7            ??           value of bit 7       PACK                                     ??Y  ?    ????           PD     
      CLOCK                TON    ??              D        
             
   DERIVATIVE    ??              TMDIFF            ??              ERROR             ??              INIT            ??              Y_ADDOFFSET             ??              KPcopy             ??              TVcopy             ??              rTemp1             ??              rTemp2             ??           
      ACTUAL            ??            actual value, process variable 	   SET_POINT            ??           desired value, set point    KP            ??           proportionality const. (P)   TV            ??       '    rate time, derivative time (D) in sec    Y_MANUAL            ??       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ??	       !    offset for manipulated variable    Y_MIN            ??
       (    minimum value for manipulated variable    Y_MAX            ??       (    maximum value for manipulated variable    MANUAL            ??       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ??       !    reset: set Y output to Y_OFFSET       Y            ??            manipulated variable, set value   LIMITS_ACTIVE            ??       1    true set value would exceed limits Y_MIN, Y_MAX             ??Y  ?    ????           PID           CLOCK                TON    ??              I                   INTEGRAL    ??              D        
             
   DERIVATIVE    ??              TMDIFF            ??              ERROR             ??              INIT            ??              Y_ADDOFFSET             ??              KPcopy             ??              TNcopy             ??              TVcopy             ??               rTemp1             ??!              rTemp2             ??"                 ACTUAL            ??            actual value, process variable 	   SET_POINT            ??           desired value, set point    KP            ??           proportionality const. (P)   TN            ??           reset time (I) in sec    TV            ??       &    rate time, derivative time (D) in sec   Y_MANUAL            ??	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ??
       !    offset for manipulated variable    Y_MIN            ??       (    minimum value for manipulated variable    Y_MAX            ??       (    maximum value for manipulated variable    MANUAL            ??       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ??       9    reset: set Y output to Y_OFFSET and reset integral part       Y            ??            manipulated variable, set value   LIMITS_ACTIVE            ??       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ??           overflow in integral part             ??Y  ?    ????           PID_FIXCYCLE           I                   INTEGRAL    ??              D        
             
   DERIVATIVE    ??              TMDIFF            ??              ERROR             ??              INIT            ??              Y_ADDOFFSET             ??              KPcopy             ??              TNcopy             ??              TVcopy             ??               rTemp1             ??!              rTemp2             ??"                 ACTUAL            ??            actual value, process variable 	   SET_POINT            ??           desired value, set point    KP            ??           proportionality const. (P)   TN            ??           reset time (I) in sec    TV            ??       &    rate time, derivative time (D) in sec   Y_MANUAL            ??	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ??
       !    offset for manipulated variable    Y_MIN            ??       (    minimum value for manipulated variable    Y_MAX            ??       (    maximum value for manipulated variable    MANUAL            ??       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ??       9    reset: set Y output to Y_OFFSET and reset integral part    CYCLE            ??           time in s between two calls       Y            ??            manipulated variable, set value   LIMITS_ACTIVE            ??       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ??           overflow in integral part             ??Y  ?    ????           PUTBIT               X           ??           value to be manipulated    N           ??           position of bit to be changed    B            ??           value of specified bit       PUTBIT                                     ??Y  ?    ????           RAMP_INT           DIFF            ??              OLD_IN            ??              TB            ??              CET            ??              CH            ??              CLOCK                TON    ??                 IN           ??           input variable    ASCEND           ??           maximum positive slope    DESCEND           ??       )    maximum negative slope (non-negative!!)    TIMEBASE           ??       ?    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ??
           reset       OUT           ??       &    value of function with limited slope             ??Y  ?    ????        	   RAMP_REAL           DIFF             ??              OLD_IN             ??              TB            ??              CET            ??              CLOCK                TON    ??              probe             ??                 IN            ??           input variable    ASCEND            ??           maximum positive slope    DESCEND            ??       )    maximum negative slope (non-negative!!)    TIMEBASE           ??       ?    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ??
           reset       OUT            ??       &    value of function with limited slope             ??Y  ?    ????           STATISTICS_INT           SUM            ??              COUNTER            ??                 IN           ??           input value   RESET            ??       J    reset: average set to 0, min and max to minimum and maximum possible INTs      MN    ?     ??           minimum value   MX     ???   ??	           maximum value   AVG           ??
           average value            ??Y  ?    ????           STATISTICS_REAL           COUNTER            ??              SUM             ??                 IN            ??           input value   RESET            ??       K    reset: average set to 0, min and max to minimum and maximum possible REALs      MN    ??a   3E+38   ??           minimum value   MX    ?   1E-37   ??	           maximum value   AVG            ??
           average value            ??Y  ?    ????           UNPACK               B           ??           byte to be unpacked       B0            ??           value of bit 0    B1            ??           value of bit 1    B2            ??	           value of bit 2    B3            ??
           value of bit 3    B4            ??           value of bit 4    B5            ??           value of bit 5    B6            ??           value of bit 6    B7            ??           value of bit 7             ??Y  ?    ????           VARIANCE           Z            ??              A             ??              B             ??                 IN            ??           input variable    RESET            ??           reset       OUT            ??       
    variance             ??Y  ?    ????           VERSION_UTIL               B            ??                 Version_Util                                     ??Y  ?    ????    F   C:\Apps\App-V\CoDeSys 2.3.9.53 TUT03\CODESYS V2.3\Library\STANDARD.LIB          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         ??Y  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??	           Load Start Value    PV           ??
           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             ??Y  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??	           Reset Counter to 0    PV           ??
           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             ??Y  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??
       
    Count Up    CD            ??           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             ??Y  ?   ????           DELETE               STR               ??              LEN           ??	              POS           ??
                 DELETE                                         ??Y  ?   ????           F_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             ??Y  ?   ????           FIND               STR1               ??	              STR2               ??
                 FIND                                     ??Y  ?   ????           INSERT               STR1               ??	              STR2               ??
              POS           ??                 INSERT                                         ??Y  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         ??Y  ?   ????           LEN               STR               ??                 LEN                                     ??Y  ?   ????           MID               STR               ??              LEN           ??	              POS           ??
                 MID                                         ??Y  ?   ????           R_TRIG           M             ??                 CLK            ??           Signal to detect       Q            ??	           Edge detected             ??Y  ?   ????           REPLACE               STR1               ??	              STR2               ??
              L           ??              P           ??                 REPLACE                                         ??Y  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         ??Y  ?   ????           RS               SET            ??              RESET1            ??	                 Q1            ??                       ??Y  ?   ????           RTC           M             ??              DiffTime            ??                 EN            ??              PDT           ??                 Q            ??              CDT           ??                       ??Y  ?   ????           SEMA           X             ??                 CLAIM            ??
              RELEASE            ??                 BUSY            ??                       ??Y  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??                       ??Y  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??       2    is FALSE, PT seconds after IN had a falling edge    ET           ??           elapsed time             ??Y  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??       0    is TRUE, PT seconds after IN had a rising edge    ET           ??           elapsed time             ??Y  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??           The pulse    ET           ??       &    The current phase of the High-Signal             ??Y  ?   ????               
   F_COPYPART                
   F_CopyPart                             
   stPartFrom                   ST_Part  b           The copied part - From   stPartTo                   ST_Part  b           Where to copy the part        ??X  @    ????           F_MOVEPARTFORWARD           i            Z 	          indexer   j            Z 
          indexer          F_MovePartForward                                arrParts    	  
                      ST_Part          Z           Array of parts        ??X  @    ????           FB_SFC_EXAMPLE           bLocalReset             ?           Performs local reset   SFCReset             ? 	       B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETSTEP                            _SFCRESETSTEP                            MAINLOOP                         	   _MAINLOOP                         	   UPDATEIOS                         
   _UPDATEIOS                               bReset            ?           Reset Request                ??X  @    ????           FB_SIMU_DRILL           fPos_height             `            Manipulators height position   fPos_Y             `            Manipulator's Y position
   fBasePos_Y             `           Position of manipulator base   iState_Lift            `           State of beam model   iRPMCurrent            `            Current RPM   fPosJawDiff             ` !       5   Right fixture jaw position. 0 position when grasping.   fPOS_MAX_DOWN      *C   170   ` $          Max position for down movement   iSPINDLE_RPM_MAX    X     ` %          Max RPM for Spindle      bEnable           `           Enable drill   bLift_Start            ` 	       4   Triggers and starts the lift movement at rising edge
   fLift_Velo       A   10   ` 
          Velocity   fLift_TargetPos            `           Target position   bDrillOn            `           Drill is On   bFixture_Close            `           Close Fixture      bLift_InTarget            `           Lift has reached the target   fLift_CurrentPos            `           Current position of the lift
   bLimit_Top            `           Height position at top limit   bLimit_Bottom            `           Height position at bottom limit   bHome_Sensor            `           Height position at home limit   bFixture_Open            `           Fixture is Open   bFixture_Closed            `           Fixture is Closed      stPart_inFixture                   ST_Part  `           Data structure for the part        ??X  @    ????           FB_SIMU_MANIPULATOR        
   fPos_angle      ?B   70    /           Angle of beam [deg]   fPos_height             /            Manipulators height position   fPos_X             /             Manipulator's X position   fPos_Y             / !           Manipulator's Y position
   fBasePos_Y             / "          Position of manipulator base   iState_Lift            / #          State of beam model   fPos_Beam_L             / $          Beam position left end   fPos_Beam_R             / %          Beam position right end   bGripperClosed             / &          Gripper is closed   fPosFingerDiff             / '       0   Right finger position. 0 poistion when grasping.   iBEAM_LENGTH    x      / *          length of the beam   fPOS_MAX_DOWN      \C   220   / +          Max position for down movement      bEnable           /           Enable manipulator   bLift_Start            / 	       4   Triggers and starts the lift movement at rising edge
   fLift_Velo       A   10   / 
          Velocity   fLift_TargetPos            /           Target position
   bBeam_Left            /           Turn beam at left   bBeam_Right            /           Turn beam at right   bGripper_Close            /           Close Gripper      bGripperIsOpen            /           Gripper is open   bLift_InTarget            /           Lift has reached the target   fLift_CurrentPos            /           Current position of the lift
   bLimit_Top            /           Height position at top limit   bLimit_Bottom            /           Height position at bottom limit   bHome_Sensor            /           Height position at home limit   bBeamAtRight            /           Beam turned into right limit   bBeamAtLeft            /           Beam turned into left limit      stPart_inGripper                   ST_Part  /           Data structure for the part        ??X  @    ????           PRG_MAIN           fbSFCExample                           FB_SFC_Example    .                                ??X  @    ????           PRG_SFC_EXAMPLE           bLocalReset             P           Performs local reset   SFCReset             P 	       B   Resets the execution of SFC to init once this SFCFlag is set true    INIT                           _INIT                           WAITFORSFCRESET                            _WAITFORSFCRESET                            SFCRESETSTEP                            _SFCRESETSTEP                            MAINLOOP                         	   _MAINLOOP                         	   UPDATEIOS                         
   _UPDATEIOS                               bReset            P           Reset Request                ??X  @    ????           PRG_SIMULATOR     %      bBtn_EmergencyStop             - 
          Emergency Stop button   rsEmergencyClear                 RS    -        '   RS - flip-flop for Emergency clear info   i            -               c            -               fbManipLeft                                          FB_Simu_Manipulator    -           Left simulated manipulator    fbManipRight                                          FB_Simu_Manipulator    -           Right simulated manipulator    fbDrill                                    FB_Simu_Drill    -           Drill machine simulated   arrParts_ConvIn   	  
                      ST_Part            -           Parts on input conveyour   arrParts_ConvOut   	  
                      ST_Part            -           Parts on output conveyour   stPart_inMLeftGripper                  ST_Part    -           Data structure for the part   stPart_inMRightGripper                  ST_Part    -           Data structure for the part   stPart_inDrillFixture                  ST_Part    -           Data structure for the part   bAddPartOnConvIn             -           Adds new part on conveyor   bAddPartInDrill             -        #   Adds new part into drilling machine   bRemovePartFromDrill             -        #   Adds new part into drilling machine   bClearErrors             -           Clear Errors   bClearSystem             -           Clears system from parts 
   RT_AddPart                 R_TRIG    -               RT_RemovePart                 R_TRIG    -               wError_ManipL            -        (   Error bits between convIn and Manip_Left   wError_Drill            -           Error bits at drill   wError_ManipR            -        (   Error bits between convIn and Manip_Left	   iState_IF   	                         -         o   State variable; Exchange between 1=ConvIn->ManipL, 2=ManipL->Drill, 3=Drill->ManipR, 4=ManipR->ConvOut, 5=Drill   bMANUAL_CONTROLS            - #          Manual override for controls   fPOS_MANIP_CONV_NO_PART_SAFE      ?B   90   - $       /   Manipulator on conv with NO part - Safe to move   fPOS_MANIP_CONV_WITH_PART_SAFE      ?B   70   - %       ,   Manipulator on conv with part - Safe to move   fPOS_MANIP_CONV_PICK_LEVEL      ?B   120   - &       $   Manipulator Pick/place level on conv   fPOS_MANIP_DRILL_WITH_PART_SAFE      TB   53   - '       4   Manipulator coming to drill with part - Safe to move   fPOS_MANIP_DRILL_NO_PART_SAFE      8B   46   - (       7   Manipulator coming to drill with NO part - Safe to move   fPOS_MANIP_DRILL_PICK_LEVEL      ?B   74   - )       %   Manipulator Pick/place level on Drill   fPOS_MANIP_PICK_TOLERANCE      ?A   30   - *       @   Manipulator Pick level tolerance from the part (=fingers length)   fPART_HEIGH      HB   50   - +          Part height   fPART_PICK_TOLERANCE       A   10   - ,       3   Part pick & place (negative) tolerance from Levels.   fPART_HOLE_DEPTH_REQ       B   40   - -          Part required Hole depth   fPART_HOLE_DEPTH_MAX      4B   45   - .          Max Hole depth   fPOS_DRILL_BIT_TOUCHES      ?B   100   - /          Drill touches the part   iDRILL_SPINDLE_MIN_FOR_DRILLING    ?     - 0       "   Minimum spindle speed for drilling                    ??X  @    ????            
 0       J   (  w      K   .w     K   <w     K   Jw     K   _w                 lw         +     ??localhost ?ژ?w          ???H ?`?????p?H?  ? ?? $? E1?wF?????????w???w    
?@             
?@     ? tV? ??   ????? ??w ??F  ?? ?? ??? ????    )@?           
?@ 4?     
?@            
?@     ? tV? ? ?? tV? ??b?????? }?     ,   ,                                                        K        @   ??X7?     , CONF?OtF
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
   Value                Variable       Min                Variable       Max                Variable                         ????  ????????               ?   _Dummy@    @   @@    @   @             ??@             ??@@   @     ?v@@   ; @+   ????  ????????                                  ?v@      4@   ?             ?v@      D@   ?                       ?       @                           ?f@      4@     ?f@                ?v@     ?f@     @u@     ?f@        ???           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    ??X	???Y     ????????           VAR_GLOBAL
END_VAR
                                                                                  "   ,  ? =E             Defaultd         PRG_MAIN();PRG_Simulator();????               ??X                 $????                         ????               Standard wTV	wTV            (?                         	??X                        VAR_CONFIG
END_VAR
                                                                                   '               , `^ ?.           Global_Variables ??X	??X        ??            >  VAR_GLOBAL
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
	I_Btn_CycleStart: BOOL;	(*Button: Cycle Start*)

	O_Light_Running	: BOOL;	(*Light: Running*)
	O_Light_Stopped	: BOOL;	(*Light: Stopped*)
	O_Beacon_Red	: BOOL;	(*Beacon Light: red*)
	O_Beacon_Yellow	: BOOL;	(*Beacon Light: yellow*)
	O_Beacon_Green	: BOOL;	(*Beacon Light: green*)

END_VAR
                                                                                               '                ?                 Variable_Configuration ??X	??X       ??               VAR_CONFIG
END_VAR
                                                                                                 ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               4     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             System      ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '          1   ,   -\           ST_Part ??X	??X      ????????        ?   TYPE ST_Part :
(*Data structure for the simulated parts *)
STRUCT
	bExists		: BOOL;	(* Part exists *)
	bHasHole	: BOOL;	(* Part has hole *)
	posX		: REAL;	(* X-position of the part*)
	posY		: REAL;	(* Y-position of the part*)
END_STRUCT
END_TYPE              b   , ?P 4?        
   F_CopyPart ??X	??X      ????????        ?   FUNCTION F_CopyPart : BOOL
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

F_CopyPart:=TRUE;               Z   , ? {!?           F_MovePartForward ??X	??X      ????????        ?   FUNCTION F_MovePartForward : BOOL
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

F_MovePartForward := TRUE;               ?   ,   }           FB_SFC_Example ??X	??X      ????????          FUNCTION_BLOCK FB_SFC_Example
VAR_INPUT
	bReset		: BOOL;	(*Reset Request*)
END_VAR
VAR_OUTPUT
END_VAR
VAR
	bLocalReset	: BOOL;	(*Performs local reset*)
	SFCReset 	: BOOL;	(*Resets the execution of SFC to init once this SFCFlag is set true *)
END_VAR       Init @     ????????           Action Init ??xX)   SFCReset := FALSE;
bLocalReset	:= FALSE;    
   NOT bReset           WaitForSFCReset         bLocalReset OR bReset         SFCResetStep L     ????????           Action SFCResetStep ??xX   SFCReset := TRUE;            MainLoop         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       FALSE     Initj                  `   , A ??i2           FB_Simu_Drill ??X	??X      ????????        ?  FUNCTION_BLOCK FB_Simu_Drill
(*Simulation model for the behaviour of the Drill machine.
Author: Niko Siltala, niko.siltala@tut.fi, Tampere University of Technology / MEI
Date: 2016-12-12
Version: 1.0
*)
VAR_INPUT
	bEnable			: BOOL := TRUE;	(*Enable drill*)
	bLift_Start		: BOOL;	(*Triggers and starts the lift movement at rising edge*)
	fLift_Velo		: REAL := 10;	(*Velocity*)
	fLift_TargetPos	: REAL;	(*Target position*)
	bDrillOn		: BOOL;	(*Drill is On*)
	bFixture_Close	: BOOL; (*Close Fixture*)
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
?  (*Simulate axis*)
IF NOT bEnable THEN
	iState_Lift := 0;
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
               /   , 6  ?:           FB_Simu_Manipulator ??X	??X      ????????          FUNCTION_BLOCK FB_Simu_Manipulator
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
	iState_Lift	: UINT;	(*State of beam model*)
	fPos_Beam_L	: REAL;	(*Beam position left end*)
	fPos_Beam_R	: REAL;	(*Beam position right end*)
	bGripperClosed	: BOOL; (*Gripper is closed*)
	fPosFingerDiff 	: REAL;	(*Right finger position. 0 poistion when grasping.*)
END_VAR
VAR CONSTANT
	iBEAM_LENGTH	: USINT := 120;	(*length of the beam*)
	fPOS_MAX_DOWN	: REAL	:= 220;	(*Max position for down movement*)
END_VAR?  (*Simulate axis*)
IF NOT bEnable THEN
	iState_Lift := 0;
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
               .   ,  ?3?           PRG_MAIN ??X	??X      ????????        ?   PROGRAM PRG_MAIN
VAR
	fbSFCExample : FB_SFC_Example;
END_VARC   (*START MAKING YOUR DRILLING SYSTEM PROGRAM HERE*)
fbSFCExample();               P   , ? ? 4           PRG_SFC_Example ??X	??X      ????????        ?   PROGRAM PRG_SFC_Example
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
   NOT bReset           WaitForSFCReset         bLocalReset OR bReset         SFCResetStep T     ????????           Action SFCResetStep ??xX   SFCReset := TRUE;            MainLoop         TRUE     MainLoop     	   UpdateIOs         FALSE  	   UpdateIOs       FALSE     Initj                  -   , 6  "           PRG_Simulator ??X	??X      T Lit_ T        ?  PROGRAM PRG_Simulator
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
	bAddPartOnConvIn		: BOOL;	(*Adds new part on conveyor*)
	bAddPartInDrill			: BOOL;	(*Adds new part into drilling machine*)
	bRemovePartFromDrill	: BOOL;	(*Adds new part into drilling machine*)
	bClearErrors			: BOOL;	(*Clear Errors*)
	bClearSystem			: BOOL;	(*Clears system from parts *)
	RT_AddPart				: R_TRIG;
	RT_RemovePart			: R_TRIG;
	wError_ManipL			: WORD;	(*Error bits between convIn and Manip_Left*)
	wError_Drill			: WORD; (*Error bits at drill*)
	wError_ManipR			: WORD;	(*Error bits between convIn and Manip_Left*)
	iState_IF				: ARRAY [1..5] OF UINT;	(*State variable; Exchange between 1=ConvIn->ManipL, 2=ManipL->Drill, 3=Drill->ManipR, 4=ManipR->ConvOut, 5=Drill*)
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
?
  (*Handle counter*)
c:= c+1;
IF c> 10 THEN
	c:= 0;
END_IF;

(*Simulate emergency stop circuitry*)
rsEmergencyClear(
	SET:= I_Btn_Reset,
	RESET1:= bBtn_EmergencyStop,
	Q1=> I_EmergencyClear);

(*Adds new part into drill fixture*)
RT_AddPart(CLK:=bAddPartInDrill , Q=> );
IF RT_AddPart.Q AND NOT stPart_inDrillFixture.bExists THEN
	IF fbDrill.bFixture_Closed THEN
		(*Part inserted when the fixture is closed*)
		wError_Drill.4 := TRUE;	(*Fixture closed when inserting part*)
	ELSE
		(*Part inserted to fixture*)
		stPart_inDrillFixture.bExists := TRUE;
		stPart_inDrillFixture.bHasHole := FALSE;
	END_IF;
END_IF;

(*Remove part from drill fixture*)
RT_RemovePart(CLK:=bRemovePartFromDrill , Q=> );
IF RT_RemovePart.Q AND stPart_inDrillFixture.bExists THEN
	IF fbDrill.bFixture_Closed THEN
		(*Part removed when the fixture is closed*)
		wError_Drill.5 := TRUE;	(*Fixture closed while leaving with part*)
	ELSE
		(*Part removed*)
		stPart_inDrillFixture.bExists := FALSE;
	END_IF;
END_IF;


IF bMANUAL_CONTROLS THEN

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


(*Make drilling and check error conditions at Drilling*)
ErrorCheck_Drill;


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

 B   , 2 ? z/           ErrorCheck_Collisions ??X  (*ManipL and Conveyor collision*)
IF (fbManipLeft.fPos_Y > 140) AND (fbManipLeft.fPos_angle < 50) THEN
	wError_ManipL.7 := TRUE;	(*collision with conveyor*)
END_IF;

(*ManipL and Drill collision*)
IF ((fbDrill.fPos_Y + 16) > fbManipLeft.fPos_Y) AND fbManipLeft.fPos_angle > 150 THEN
	wError_ManipL.1 := TRUE;
	wError_Drill.0 := TRUE;
END_IF;

(*ManipR and Drill collision*)
IF ((fbDrill.fPos_Y + 16) > fbManipRight.fPos_Y) AND fbManipRight.fPos_angle < 50 THEN
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
END_IF;E   , 0  9           ErrorCheck_Drill ??X?  (*State model for Drilling.
Includes all associated error conditions and judgements *)

(*Resetting errorCheck*)
IF bClearErrors THEN
	iState_IF[5] := 0;
END_IF;

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
END_CASE;G   , ? ? ?           ErrorCheck_ManipLeft_ConvIn ??X?	  (*State model for exchanging part from ConveyorIn to ManipLeft.
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
END_CASE;A   , < 9x           ErrorCheck_ManipLeft_Drill ??X?  (*State model for exchanging part from ManipLeft to Drill.
Includes all associated error conditions and judgements *)

(*Dropping part from gripper too soon*)
IF (iState_IF[2] > 0) AND (iState_IF[2] <= 3) AND NOT fbManipLeft.bGripperClosed THEN
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
END_CASE;H   , ?t ?x           ErrorCheck_ManipRight_ConvOut ??X?  (*State model for exchanging part from ManipRight to Conveyor.
Includes all associated error conditions and judgements *)

(*Dropping part from gripper too soon*)
IF (iState_IF[4] > 0) AND (iState_IF[4] <= 3) AND NOT fbManipRight.bGripperClosed THEN
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
END_CASE;F   , ? ? D.           ErrorCheck_ManipRight_Drill ??X?  (*State model for exchanging part from Drive to ManipRight.
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
END_CASE;              D   , V K IG        	   VC_Beacon ??X
    @???Ϳ?X   d                                                                                                          
    @            )      ???     ?                                      $red$        @                           ???        @
                       @                                                                                                           
    @           ) =  -   ???     ??                                     $yellow$        @                          ???        @
                       @                                                                                                           
    @          < ) [  K   ???      ?                                     $green$        @                          ???        @
                       @                                                                                                           
    @        
 Z  y  i   ???     ???                                             @                          ???        @
                       @           red              yellow             green          ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  N   , ??3           VC_ErrorDetail_Drill ??X
    @???Ϳ?X	   d   	                                                                                                     
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
                                               @         name   flag     )   'Drilling without sufficient spindle RPM'   $errorWord$.6   	   errorWord                                ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  K   , % ?(           VC_ErrorDetail_Manip ??X
    @???Ϳ?X   d                                                                                                        
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
         	   manipName          ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  I   , ??5*           VC_ErrorDetails ??X
    @???Ϳ?X   d                                                                                                        
    @           ? i ?        ???     ???            VC_ErrorDetail_Manip                                          ???        @
                                               @      	   errorWord	   manipName        PRG_Simulator.wError_ManipL   'Left'                                                                                                      
    @            ? ?    ???     ???                                         $   Simulated Machine related errors @                          ???       MS Sans Serif @
                       @                                                                                                         
    @        ? w?        ???     ???            VC_ErrorDetail_Manip                                         ???        @
                                               @      	   errorWord	   manipName        PRG_Simulator.wError_ManipR   'Right'                                                                                                    
    @        ?  ?;?        ???     ???            VC_ErrorDetail_Drill                                         ???        @
                                               @      	   errorWord        PRG_Simulator.wError_Drill                                                                                                     
    @        ?  w :   ???     ??                                             Back to Main @                          ???        @
                      @    VISU_SimulatedMachine    ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  M   , 1?o?           VC_ErrorItem ??X
    @???Ϳ?X   d                                                                                                          
    @            ?  _ 
    ???     ???                                    $flag$   $name$	   %s :  @                           ???       MS Sans Serif @                       @                                                                                                           
    @            ?  i 
    ???     ???                                             @                          ???        @
                       @                                                                                                          
    @        ?   ?  ? 
   ???     ?                                      $flag$        @                          ???        @
                       @           name              flag              ??? ?   ??   ?   ??   ? ? ? ???     ?   ???  ?   ??   ? ? ? ???                  a   , U ?M           VC_FB_Simu_Drill ??X
    @???Ϳ?X   d                                                                                                          
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
      Name              ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ^   , ?%?R           VC_FB_Simu_Manipulator ??X
    @???Ϳ?X   d                                                                                                          
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
         Name              ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  Q   , l ?
?           VC_Panel_MachineControl ??X
    @???Ϳ?X   x                                                                                                         
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
    @        n F ? e ? U   ???      ?                                     .O_Light_Running        @                          ???        @
                       @                                                                                                          
    @        ? F ? e ? U   ???     ?                                      .O_Light_Stopped        @                          ???        @
                       @                                                                                                         
    @        K 7 V B P <        ???     ???         	   VC_sensor                            $FB$.fBasePos_Y            ???        @
                                               @         VAR        .I_EmergencyClear      FB          ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  C   , Y? ?           VC_Panel_MachineControl_simple ??X
    @???Ϳ?X   ?                                                                                                         
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
    @        i _ ? o ? g    ???     ???                                            Running @                      	    ???        @
                       @                                                                                                           
    @        ? _ ? o ? g    ???     ???                                            Stopped @                      
    ???        @
                       @                                                                                                          
    @        n F ? e ? U   ???      ?                                     .O_Light_Running        @                          ???        @
                       @                                                                                                          
    @        ? F ? e ? U   ???     ?                                      .O_Light_Stopped        @                          ???        @
                       @                                                                                                          
    @        x x ? ? ? ?   ???     ??                                     .I_Btn_CycleStart       Start Drill Cycle @                          ???        @
        .I_Btn_CycleStart             @                                                                                                         
    @        K 7 V B P <        ???     ???         	   VC_sensor                            $FB$.fBasePos_Y            ???        @
                                               @         VAR        .I_EmergencyClear      FB       
   ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  R   , ? ?            VC_Panel_ModeSelector ??X
    @???Ϳ?X   x                                                                                                         
    @           t . : !   ???     ??                                     .HMI_uModeReq=3    
   Manual @                          ???        @
                  "   INTERN ASSIGN HMI_uModeReq:=(3) @                                                                                                           
    @            t  : 
   ???     ???                                            Mode Select @                          ???       MS Sans Serif @
                       @                                                                                                          
    @          - t G : :   ???     ??                                     .HMI_uModeReq=1       Automatic @                          ???        @
                  "   INTERN ASSIGN HMI_uModeReq:=(1) @         ??? ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  0   , ?Yk           VC_Part ??X
    @???Ϳ?X   ?                                                                                                          
    @            ) 3     ???     ???                                NOT $part$.bExists            @                           ???        @
                       @                                                                                                           
    @            )      ???     ???                             )   NOT $part$.bExists OR NOT $part$.bHasHole            @                          ???        @
                       @           part                  ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  +   , ? ? ??         	   VC_sensor ??X
    @???Ϳ?X   d                                                                                                          
    @                  ???     ???                                    $VAR$        @                           ???        @
                       @           VAR               ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  Y   , ???           VC_Simu_Conv_In ??X
    @???Ϳ?X   ?                                                                                                          
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
                       @           Arr                         	      MotOn              ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  _   , ? < ?O           VC_Simu_Drill ??X
    @???Ϳ?X   ?                                                                                                          
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
                   ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???      ????                 ,   , D	?"           VC_Simu_Manipulator ??X
    @???Ϳ?X   ?                                                                                                          
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
    @        x ( ? 3 } -        ???     ???         	   VC_sensor                                     
    ???        @
                                               @         VAR        $FB$.bHome_Sensor                                                                                                    
    @        ? F ? Q ? K        ???     ???         	   VC_sensor                            $FB$.fBasePos_Y            ???        @
                                               @         VAR        $FB$.bBeamAtRight                                                                                                    
    @        < F G Q A K        ???     ???         	   VC_sensor                            $FB$.fBasePos_Y            ???        @
                                               @         VAR        $FB$.bBeamAtLeft      FB                               	   
             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  [   ,  ?            VC_SimuMach_Controls ??X
    @???Ϳ?X   d                                                                                                         
    @        ? ? 
? ? ?   ???     ??                                     PRG_Simulator.bClearErrors       Clear Errors @                          ???        @
        PRG_Simulator.bClearErrors             @                                                                                                          
    @        ? - V ? A   ???     ??                                  "   PRG_Simulator.bRemovePartFromDrill       Remove
Part @                          ???        @
     "   PRG_Simulator.bRemovePartFromDrill             @                                                                                                           
    @            ?  Z 
   ???     ?                                      PRG_Simulator.wError_Drill > 0   PRG_Simulator.wError_Drill    Errors Drill : %x @                          ???        @
                       @                                                                                                          
    @        ?   ) ?    ???     ??                                     PRG_Simulator.bAddPartInDrill       Add part @                          ???        @
        PRG_Simulator.bAddPartInDrill             @                                                                                                         
    @           ? ? ] g        ???     ???            VC_ErrorDetail_Drill                                     
    ???        @
                                               @      	   errorWord        PRG_Simulator.wError_Drill        ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  J   , ? ?!           VISU_SimulatedMachine ??X
    @???????Y   j                                                                                                        
    @          ??? t { (       ???     ???            VC_Panel_MachineControl_simple                                    
    ???        @
                                               @                                                                                                                 
    @        ??} @n        ???     ???            VC_Simu_Drill                                         ???        @
                                               @         FB        PRG_Simulator.fbDrill                                                                                                    
    @          } ? #{ ?       ???     ???            VC_SimuMach_Controls                                        ???        @
                                               @                                                                                                                 
    @        ?F 6 ??        ???     ???            VC_FB_Simu_Drill                                         ???        @
         "   NOT PRG_Simulator.bMANUAL_CONTROLS                                  @         FB   Name        PRG_Simulator.fbDrill   'Drill'        ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????, ? # ??            Util.lib 16.8.17 14:08:57 @?'?Y#   STANDARD.LIB 16.8.17 14:08:57 @?'?Y   5   BCD_TO_INT @      GEN_MODE       POINT                  BLINK @          CHARCURVE @          DERIVATIVE @          EXTRACT @          FREQ_MEASURE @       	   GEN @          HYSTERESIS @          INT_TO_BCD @          INTEGRAL @          LIMITALARM @          LIN_TRAFO @       
   PACK @          PD @       	   PID @          PID_FIXCYCLE @          PUTBIT @          RAMP_INT @          RAMP_REAL @          STATISTICS_INT @          STATISTICS_REAL @          UNPACK @          VARIANCE @          Version_Util @             Globale_Variablen @              CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @                            ,  G 7?           Z                     ?{?{?{ .bDrill_axZ_Start
 .fDrill_axZ_CurrPos
 .fDrill_axZ_TargetPos
 .bDrill_axZ_Enable
 .bDrill_axZ_InTargetPos
 .bDrill_axZ_Start
             ????, ,,J?        ????,     y                      POUs               Examples                FB_SFC_Example  ?                   PRG_SFC_Example  P   ????              ownCodes  ????            
   Simulation              
   F_CopyPart  b                   F_MovePartForward  Z                   FB_Simu_Drill  `                   FB_Simu_Manipulator  /                   PRG_Simulator                ErrorCheck_Collisions  B                  ErrorCheck_Drill  E                  ErrorCheck_ManipLeft_ConvIn  G                  ErrorCheck_ManipLeft_Drill  A                  ErrorCheck_ManipRight_ConvOut  H                  ErrorCheck_ManipRight_Drill  F   -   ????                PRG_MAIN  .   ????           
   Data types                ST_Part  1   ????              Visualizations            	   Simulator            
   Components              	   VC_Beacon  D                   VC_ErrorItem  M                   VC_Part  0                	   VC_sensor  +   ????              ErrorPanels                 VC_ErrorDetail_Drill  N                   VC_ErrorDetail_Manip  K   ????              FBs                 VC_FB_Simu_Drill  a                   VC_FB_Simu_Manipulator  ^   ????              MachineComponents                 VC_Panel_MachineControl  Q                   VC_Panel_MachineControl_simple  C                   VC_Panel_ModeSelector  R                   VC_Simu_Conv_In  Y                   VC_Simu_Drill  _                   VC_Simu_Manipulator  ,                   VC_SimuMach_Controls  [   ????                VC_ErrorDetails  I                  VISU_SimulatedMachine  J   ????????              Global Variables                 Global_Variables                      Variable_Configuration     ????                                                             wTV                         	   localhost            P      	   localhost            P      	   localhost            P     ?+X  ??u