    "use strict";  // Pragma to enable strict mode for JS interpreter
    // Dice Roller version 2 Times execution speed
    var nRollCount = new Array(0,0,0,0,0,0,0,0,0,0,0,0,0);  // Roll Counters
    var nRolls = parseInt(prompt("How many dice rolls?", "1000"));
    document.write("<h2>Welcome to the Dice Roller Program</h2>"
      + "<p>by Robert Laurie</p>"
      + "<h3>For " + nRolls + " rolls of the dice the results are: </h3><p>");
    var nStart = Date.now(); // Static Method call returns mSec since 1970
    for(var nI = nRolls; nI > 0; nI--)
        nRollCount[ RollDie() + RollDie() ]++;
    for(nI = 2; nI < nRollCount.length; nI++)
        document.write("Dice Roll " + nI + " = " + nRollCount[nI] + "<br>");
    var dClock = new Date();  // Instantiate Date Object with current time.
    var nEnd = dClock.getTime();  // Instance Method returns mSec since 1970
    document.write("</p><p>Program execution time = " + (nEnd - nStart)
      + " mSec.<br>Program  run completed " + dClock.toString() + "</p>"
      + "<p>Reload page to run again.</p>");
    document.title = "Dice Roller by Robert Laurie";

    function RollDie()
    {
        return Math.floor(Math.random() * 6) + 1;
    }

	 document.writeln("<table border=\"1\"><tr><th>Score</th><th>Count</th>"
           + "<th>Graph Scaled (Count/"+Scale+")</th></tr>");
         for(i=3; i<=18; i++)
         {
           document.writeln("<tr><td>"+i+"</td><td>"+Count[i]+"</td><td>");
           PrintGraph(Count[i], Scale);
           document.writeln("</td></tr>");
         }
         document.writeln("</table>");
         function Roll3Dice()
         {
           var Sum;
           Sum = RollDie() + RollDie()+ RollDie();
           return Sum;
         }
         function RollDie()
         {
           return Math.ceil(6 * Math.random());
         }
         function PrintGraph(Value, Sc)
         {
           for(var i=Value; i>0; i=i-Sc)
             document.write("=")
         }