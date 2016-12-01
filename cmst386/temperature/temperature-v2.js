"use strict";  // Pragma to enable strict mode for JS interpreter
document.title = "°C to °F Converter";
document.write("<h1>Welcome to the Temperture Converter Program</h1>"
  + "<p>by Robert Laurie</p>");
var sUnit = EnterSwitch("Is input temperature Celsius or Fahrenheit (c or f)?", "c", "f");
if(sUnit == "c")
{
  var nDeg = EnterNumber("Enter Celcius Temperature:");
  document.write ("<h2>" + nDeg + " &deg;C = " + (nDeg*1.8 + 32) +" &deg;F</h2>");
}
else if(sUnit == "f")
{
  var nDeg = EnterNumber("Enter Fahrenheit Temperature:");
  document.write ("<h2>" + nDeg + " &deg;F = " + (nDeg - 32)/1.8 +" &deg;C</h2>");
}
else
  alert("Error Trap: You must enter either c or f");
