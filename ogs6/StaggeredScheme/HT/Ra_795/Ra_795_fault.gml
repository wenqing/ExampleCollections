<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE OGS-GML-DOM>
<OpenGeoSysGLI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.opengeosys.org/images/xsd/OpenGeoSysGLI.xsd" xmlns:ogs="http://www.opengeosys.org">
 <name>Ra_795_fault</name>
 <points>
  <point x="0" y="-5500" z="0" id="0" name="POINT0"/>
  <point x="5500" y="-5500" z="0" id="1" name="POINT1"/>
  <point x="5500" y="0" z="0" id="2" name="POINT2"/>
  <point x="0" y="0" z="0" id="3" name="POINT3"/>
  <point x="0" y="-5500" z="-5500" id="4" name="POINT570020"/>
  <point x="5500" y="-5500" z="-5500" id="5" name="POINT570021"/>
  <point x="5500" y="0" z="-5500" id="6" name="POINT570022"/>
  <point x="0" y="0" z="-5500" id="7" name="POINT570023"/>
 </points>
 <polylines>
  <polyline id="0" name="PlyTop">
   <pnt>0</pnt>
   <pnt>1</pnt>
   <pnt>2</pnt>
   <pnt>3</pnt>
   <pnt>0</pnt>
  </polyline>
  <polyline id="1" name="PlyBot">
   <pnt>4</pnt>
   <pnt>5</pnt>
   <pnt>6</pnt>
   <pnt>7</pnt>
   <pnt>4</pnt>
  </polyline>
 </polylines>
 <surfaces>
  <surface id="0" name="Top">
   <element p1="1" p2="3" p3="0"/>
   <element p1="3" p2="1" p3="2"/>
  </surface>
  <surface id="1" name="Bottom">
   <element p1="5" p2="7" p3="4"/>
   <element p1="7" p2="5" p3="6"/>
  </surface>
 </surfaces>
</OpenGeoSysGLI>
