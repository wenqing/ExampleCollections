GeoSys-ST: Source Terms ------------------------------------------------
#SOURCE_TERM
 $PCS_TYPE
  HEAT_TRANSPORT   
 $PRIMARY_VARIABLE
  TEMPERATURE1
 $GEO_TYPE
  POLYLINE arc
 $DIS_TYPE
  CONSTANT_NEUMANN 0.424278136890329  
$TIM_TYPE
  CURVE 1
#STOP

;perimater of the heaters is 2*pi*0.375= 1.0/ 0.424278136890329  
2.0*pi*0.33 = 1.0/0.482134246466282

;power * 0.95 gives the factor of 0.482134246466282 * 0.95 = 0.4580275341429679

;For heater 4, if the end of heater is include: 
;A =  2*pi*r*15 + pi*r*r, whith r = 0.44, fac=15/A=0.47704026344122324, 0.95*fac = 0.4531882502691621
; $GEO_TYPE
;  SURFACE   heater_i4_end
; $DIS_TYPE
;  CONSTANT_NEUMANN  0.4531882502691621

