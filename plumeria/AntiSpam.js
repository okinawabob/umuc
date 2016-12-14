// ANTISPAM JavaScript Function is designed to foil Address Harvesting Robots
//    It will help prevent your address from being harvested on your web site.
//    You may use this  script or modify with your own encryption technique.
//    Please send your comments to Robert Laurie at
//       bob (at) guam . uog . edu
//
//    Link to JavaScript file from any XHTML/HTML document by placing 
//    in <head> element the following <script> element.
//       <script type="text/javascript" 
//          src="http://www.islandman.org/AntiSpam.js"></script>
//
//    Call the AntiSpam function in <body> element of XHTML/HTML document
//    The AntiSpam function has five parameters that must be strings
//       Tpld = Top level domain in reverse order (instead of ORG use GRO)
//       User = User name in reverse order (instead of THEMAN use NAMEHT
//       Domn = Domain name in reverse (instead of ISLANDMAN use NAMDNALSI)
//       Subj = Subject of email will automatically use this string
//       Hlnk = Text or Element used for hyperlink (if blank will use address)
//    Example: AntiSpam("gro", "nameht", "namdnalsi", "Your Web Site", "");

//RevString function reverses the order of characters in a string
function RevSting(StrIn)
{
   var StrOut= new String("");
   for(var i=StrIn.length-1; i>=0; i--)
      StrOut += StrIn.charAt(i);
   return StrOut;
}

// AntiSpam function encodes hyperlinked email address to hide from spammers
function AntiSpam(Tpld, User, Domn, Subj, Hlnk)
{
   // <A> Element components
   var AElmt = new Array('<a href=\"ma', '</a>', 'ilto:', '?subject=', '\">');
   // Reverse character order for each component of address
   var At2 = "4;", At1 = "&#6"; // at symbol
   var Addr, LinkObj;
   Addr = RevSting(User);
   Addr += At1 + At2;
   Addr += RevSting(Domn);
   Addr += ".";
   Addr += RevSting(Tpld);
   if(Hlnk=="")
      LinkObj = Addr;
   else
      LinkObj = Hlnk;
   document.writeln(AElmt[0]+AElmt[2]+Addr+AElmt[3]+Subj+AElmt[4]+LinkObj+AElmt[1]);
}
