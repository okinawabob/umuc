    "use strict";  // Pragma to enable strict mode for JS interpreter
    // Dice Roller version 2 Times execution speed
    var nRollCount = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0);  // Roll Counters
    var nRolls = parseInt(prompt("How many dice rolls?", "1000"));
    var nScale = nRolls/200;
    document.write("<h2>Welcome to the Dice Roller Program</h2>"
      + "<p>by Robert Laurie</p>"
      + "<h3>For " + nRolls + " rolls of the dice the results are: </h3><p>");
    var nStart = Date.now(); // Static Method call returns mSec since 1970
    for(var nI = nRolls; nI > 0; nI--)
        nRollCount[ RollDie() + RollDie() ]++;

    document.write("<table><colgroup><col  style='text-align: center;'>"
        + "<col style='text-align: right;'><col style='text-align: left;'></colgroup>"
        + "<tr><th>Roll</th><th>Count</th>"
        + "<th>Graph Scaled (Count/"+nScale+")</th></tr>");
    for(nI=2; nI<=12; nI++)
    {
      document.write("<tr><td>"+nI+"</td><td>" + nRollCount[nI] + "</td><td>");
      PrintGraph(nRollCount[nI], nScale);
      document.write("</td></tr>");
    }
    document.write("</table>");

    var dClock = new Date();  // Instantiate Date Object with current time.
    var nEnd = dClock.getTime();  // Instance Method returns mSec since 1970
    document.write("</p><p>Program execution time = " + (nEnd - nStart)
      + " mSec.<br>Program  run completed " + dClock.toString() + "</p>"
      + "<p>Reload page to run again.</p>");
    document.title = "Dice Roll Graph";

    function RollDie()
    {
        return Math.floor(Math.random() * 6) + 1;
    }

   function PrintGraph(Value, Sc)
   {
     for(var i=Value; i>0; i=i-Sc)
       document.write( "<img src='die6.gif' class='dice'>")
   }
