<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta name="content-type" content="text/html;charset=utf-8" />
    <?php   // Data Entry Page
      require('../inc/dbReadTables.inc');
      $dbTabNames = getTableNames();
      global $dbLang;
      // Determine Table and Element selected using URL Get
      if(isset($_POST['hidTable']) && $_POST['hidTable'] != null)
      {
        $selTable = $_POST['hidTable']; 
        $dbElementId = getElementIDs($selTable);
        $selElement = $_POST['hidElement']; 
        $words['en'] = $_POST['txaWordsEN']; 
        $words['ja'] = $_POST['txaWordsJA']; 
        $words['ko'] = $_POST['txaWordsKO']; 
        updateTranslations($selTable, $selElement, $words);          
      }
      else if(isset($_GET['table']) && ($_GET['table'] != null))
      {
        $selTable = $_GET['table']; 
        $dbElementId = getElementIDs($selTable);
        if(isset($_GET['elmt']) && ($_GET['elmt'] != null))
          $selElement = $_GET['elmt'];
        else
        {
          // Default to first element of table if none given
          $selElement = $dbElementId[0];
        }
      }
      else 
      {
        // Default to first table if none given
        $selTable = $dbTabNames[0];
        $dbElementId = getElementIDs($selTable);
        $selElement = $dbElementId[0];
      }
      $Translations = getTranslations($selTable, $selElement);    
		?>      

    <meta name="robots" content="noindex, nofollow" />
    <meta name="robots" content="noarchive" />
    <meta name="Revisit-After" content="30 Days" />
    <meta name="author" content="Robert Laurie" />
    <meta name="copyright" content="&copy; 2007 Robert Laurie" />
    <meta name="generator" content="coded by hand" />
    <!-- Disable IE smart tags and image toolbar (2 tags below are required) -->
    <meta name="MSSmartTagsPreventParsing" content="true" />
    <meta http-equiv="imagetoolbar" content="false" /> 
    <title>
      Data Entry Form
    </title>
    <script type="text/javascript">
      //<![CDATA[
        var theLang = new Array('EN', 'JA', 'KO');
        function setCookie()
        {
          var chkBox = new Array();
          for(i=0, checks=0; i < 3; i++)
          {
            chkBox[i] = document.getElementById('chk' + theLang[i]);
						chkState = chkBox[i].checked ? "1;" : "0;";
            document.cookie = theLang[i] + "ck=" + chkState;
          }        
          checkDisplay();
          return;
        }
        
				function getCookie()
        {
          var chkBox = new Array();
					var retrieveCookie = document.cookie;
					var cookieTokens = retrieveCookie.split("=");
					for(i=0, checks=0; i < 3; i++)
					{
						chkBox[i] = document.getElementById('chk' + theLang[i]);
						if(cookieTokens[i+1].charAt(0) == "1") 
							chkBox[i].checked = true;
						else
							chkBox[i].checked = false;
					}       
					return;
          checkDisplay();
				}
				
        function checkDisplay()
        {
          var chkBox = new Array();
          var btnSubm = new Array();
          var txaWords = new Array();
          for(i=0, checks=0; i < 3; i++)
          {
            chkBox[i] = document.getElementById('chk' + theLang[i]);
            btnSubm[i] = document.getElementById('btnSubmit' + theLang[i]);
            txaWords[i] = document.getElementById('txaWords' + theLang[i]);
          }
          for(i=0, checks=0; i < 3; i++)
            if(chkBox[i].checked) checks++;
          if(checks == 1) txaRows = 18;
          else if(checks == 2) txaRows = 9;
          else if(checks == 3) txaRows =7;
          for(i=0; i < 3; i++)
          {
            if( chkBox[i].checked == true )
            {
              btnSubm[i].disabled = false;
              txaWords[i].readOnly = false;
              txaWords[i].rows = txaRows;
              txaWords[i].style.backgroundColor = "#FFFFFF";
            }
            else
            {
              btnSubm[i].disabled = true;
              txaWords[i].readOnly = true;
              txaWords[i].rows = 1;
              txaWords[i].style.backgroundColor = "#DDDDDD";
            }
          }
          return;
        }
      //]]>
    </script>
    <link href="dataEntry.css" rel="stylesheet" type="text/css" />
  </head>
  <body onload="javascript: getCookie(); javascript: checkDisplay()">
    <div id="dvStatus"><?php echo $Translations['status']; ?></div>
    <div id="dvTables">
      <h4 class="caption">
        DB Tables<br />
        refer to<br />
        Web Pages
      </h4>
      <?php  
          foreach($dbTabNames as $value)
          {
            if($value === $selTable)
              echo "<p class='display' style='background-color: #DDFFDD; border: 1px outset #999999;'>"
               . "<a href='index.php?table=$value'>$value</a></p>\n";
            else
              echo "<p class='display'>"
              . "<a href='index.php?table=$value'>$value</a></p>\n";
          }        
       ?>
    </div>
    <div id="dvElementID">
      <h4 class="caption">
        Element IDs<br />
        refers to<br />
        PHP Elements
      </h4><?php  
          foreach($dbElementId as $value)
          {
            if($value === $selElement)
              echo "<p class='display' style='background-color: #FFFFCC; border: 1px outset #999999;'>"
               . "<a href='index.php?table=$selTable&amp;elmt=$value'>"
               . "$value</a></p>\n";
            else
              echo "<p class='display'>"
               . "<a href='index.php?table=$selTable&amp;elmt=$value'>"
               . "$value</a></p>\n";
          }        
        ?>
    </div>
    <div id="dvLanguages">
      <form method="post" action="index.php" id="frmElements" accept-charset="utf-8">
	      <h3>
					Element Language Translations 
	      </h3>
        <h4 class="lang">
				  <input name="chkEN" id="chkEN" type="checkbox" onclick="setCookie()" />
          Edit English <input name="btnSubmit_en" id="btnSubmitEN" type="submit" value="Submit Modifications" disabled="disabled" />
        </h4>
        <p class="textarea">
          <textarea  rows="1" cols="80" id="txaWordsEN" name="txaWordsEN" lang="en" readonly="readonly"><?php echo trim($Translations['en']); ?></textarea>
        </p>

        <h4 class="lang">
          <input name="chkJA" id="chkJA" type="checkbox" onclick="setCookie()" />
					Edit Japanese 
					<input name="btnSubmitJA" id="btnSubmitJA" type="submit" value="Submit Modifications" disabled="disabled" />
        </h4>
         <p class="textarea">
          <textarea rows="1" cols="80" lang="ja" name="txaWordsJA" id="txaWordsJA" readonly="readonly"><?php echo trim($Translations['ja']); ?></textarea>
        </p>


        <h4 class="lang">
          <input name="chkKO" id="chkKO"  type="checkbox" onclick="setCookie()" />
					Edit Korean <input name="btnSubmit_ko"  id="btnSubmitKO" type="submit" value="Submit Modifications" disabled="disabled" />
        </h4>
        <p class="textarea">
          <textarea rows="1" cols="80" lang="ko" id="txaWordsKO" name="txaWordsKO" readonly="readonly"><?php echo trim($Translations['ko']); ?></textarea>
        </p>
        <p>    
          <input name="hidTable" type="hidden" value="<?php print $selTable; ?>" />
          <input name="hidElement" type="hidden" value="<?php print $selElement; ?>" />
        </p>      
      </form>
    </div>    
  </body>
</html>
