<?php   // Data Entry Page
  require('inc/dbReadTables.inc');
  $dbTabNames = getTableNames();
  global $dbLang;

  // Determine Table and Element selected using URL Get
  $selTable = $_GET['table']; 
  $selElement = $_GET['elmt'];
  // Set defaults to first table if none given
  if($selTable == NULL) 
  {
    $selTable = $_POST['hidTable']; 
    if($selTable == NULL)
      $selTable = $dbTabNames[0];
    else
    {
      $selElement = $_POST['hidElement']; 
      $words['en'] = $_POST['txaWordsEN']; 
      $words['ja'] = $_POST['txaWordsJA']; 
      $words['de'] = $_POST['txaWordsDE']; 
      updateTranslations($selTable, $selElement, $words);
    }
  }
  
  $dbElementId = getElementIDs($selTable);
  // Set defaults to first table if none given
  if($selElement == NULL) 
    $selElement = $dbElementId[0];
  $Translations = getTranslations($selTable, $selElement);    
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
  <head>
    <meta name="content-type" content="text/html;charset=utf-8" />
    <meta name="author" content="Robert Laurie" />
    <meta name="copyright" content="© 2008 Robert Laurie" />
    <meta name="generator" content="coded by hand" />
    <title>
      Data Entry Form
    </title>
    <link href="dataEntry.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
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
               . "<a href='dataEntry.php?table=$value'>$value</a></p>\n";
            else
              echo "<p class='display'>"
              . "<a href='dataEntry.php?table=$value'>$value</a></p>\n";
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
               . "<a href='dataEntry.php?table=$selTable&amp;elmt=$value'>"
               . "$value</a></p>\n";
            else
              echo "<p class='display'>"
               . "<a href='dataEntry.php?table=$selTable&amp;elmt=$value'>"
               . "$value</a></p>\n";
          }        
        ?>
    </div>
    <div id="dvLanguages">
      <h3>
        Element Language Translations
      </h3>
      <form method="post" action="dataEntry.php" id="frmElements" accept-charset="utf-8">
        <h4 class="lang">
          Edit English 
        </h4>
        <p class="textarea">
          <textarea  rows="6" cols="70" name="txaWordsEN"lang="en" tabindex="1" ><?php echo trim($Translations['en']); ?></textarea>
        </p>
        <h4 class="lang">
          Edit Japanese
        </h4>
         <p class="textarea">
          <textarea rows="6" cols="70" lang="ja" name="txaWordsJA" tabindex="2" ><?php echo trim($Translations['ja']); ?></textarea>
        </p>
        <h4 class="lang">
          Edit German
        </h4>
        <p class="textarea">
          <textarea rows="6" cols="70" lang="de" name="txaWordsDE" tabindex="3"><?php echo trim($Translations['de']); ?></textarea>
        </p>
        <p>    
          <input name="btnSubmit" tabindex="4" type="submit" value="Submit Modifications" />
          <input name="hidTable" type="hidden" value="<?php print $selTable; ?>" />
          <input name="hidElement" type="hidden" value="<?php print $selElement; ?>" />
        </p>      
      </form>
    </div>    
  </body>
</html>
