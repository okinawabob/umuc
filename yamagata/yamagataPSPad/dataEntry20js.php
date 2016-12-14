<?php   // Data Entry Page
  $hostname = 'localhost'; 
  $username = 'islan35_bob'; 
  $password = 'bob'; 
  $database = 'islan35_azumaso';  
  
  $si = function_exists('mysqli_connect');
	if ($si === FALSE)
      die( "<html><head><title>Error</title></head><body>"
        .  "<h3 style='color: #CC0000'>"
        .  "MySQLi is not enabled or compiled properly!"
        . "<br />Program Aborted</h3></body></html>");
  $dbLang = @new mysqli($hostname, $username , $password, $database );
	if (mysqli_connect_errno() != 0)
	{
		$errno = mysqli_connect_errno();
		$errmsg = mysqli_connect_error();
    die( "<html><head><title>Error</title></head><body>\n"
      . "<h3 style='color: #CC0000'>\n"
      . "Could not connect to the server '".$hostname."'\n"
      . "<br />Connect Failed with: ($errno) $errmsg\n" 
      . "<br />Program Aborted</h3></body></html>");
	}

	$dbLang->query("SET NAMES 'utf8'"); // Specifies utf-8 for query

	// Read Table Names and load into an array
  $query_str = "SHOW TABLES FROM $database";
	$result = @$dbLang->query($query_str);
	if ($result === FALSE)
	{
		$errno = $dbLang->errno;
		$errmsg = $dbLang->error;
	  $dbLang->close();  // Close Database Connection
    die( "<html><head><title>Error</title></head><body>\n"
    . "<h3 style='color: #CC0000'>\n"
    . "<br />SQL Query String: $query_str" 
    . "<br />Connect Failed with: ($errno)<br />$errmsg\n" 
    . "<br />Program Aborted</h3></body></html>");
	}
  if ($dbLang->affected_rows <= 0) 
    die("<html><head><title>Error</title></head><body>\n"
    . "<h3 style='color: #CC0000'>\nThe database '" . $database 
    . "' contains no tables.\n<br />Program Aborted</h3>"
    . "</body></html>");
  while(($row_data = @$result -> fetch_row()) !== NULL)
		$dbTable[] = $row_data[0];

  // Determine Table Selected for editing
  $selTable = $_GET['table']; 
  // Set defaults to first table if none given
  if($selTable == NULL) 
    $selTable = $dbTable[0];
    
  // Display element IDs for table
  $query_str = "SELECT elid FROM $selTable ";
	$result = @$dbLang->query($query_str);
	if ($result === FALSE)
	{
		$errno = $dbLang->errno;
		$errmsg = $dbLang->error;
	  $dbLang->close();  // Close Database Connection
    die( "<html><head><title>Error</title></head><body>\n"
    . "<h3 style='color: #CC0000'>\n"
    . "<br />SQL Query String: $query_str" 
    . "<br />Connect Failed with: ($errno)<br />$errmsg\n" 
    . "<br />Program Aborted</h3></body></html>");
	}

  while(($row_data = @$result -> fetch_row()) !== NULL)
		$dbElid[] = $row_data[0];
 
  // Determine Element Selected for editing
  $selElement = $_GET['elmt'];
  // Set defaults to first table if none given
  if($selElement == NULL) 
    $selElement = $dbElid[0];
      
  $query_str = "SELECT en FROM $selTable WHERE elid = '$selElement' ";
	$result = @$dbLang->query($query_str);
  $row = $result -> fetch_row();
  $enBlock = "$row[0]";
  
  $query_str = "SELECT ja FROM $selTable WHERE elid = '$selElement' ";
	$result = @$dbLang->query($query_str);
  $row = $result -> fetch_row();
  $jaBlock = "$row[0]";
  
  $query_str = "SELECT de FROM $selTable WHERE elid = '$selElement' ";
	$result = @$dbLang->query($query_str);
  $row = $result -> fetch_row();
  $deBlock = "$row[0]";

  $statusDB = "Successfully connected to the server '" . $hostname 
      . "' using MySQL client: ". mysql_get_client_info()
      . " and the '" . $database . "' database.";
  
	$result->close();  // Cleanup result sets when done
	$dbLang->close();  // Close Database Connection
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
    <script type="text/javascript">
      //<![CDATA[    
        function chkProcessor(which)
        {
          var chkEdit_en = document.getElementById("chkEdit_" + which);
          var btnModify = document.getElementById("btnModify_" + which);
          var txaWords = document.getElementById("txaWords_" + which);
          alert (chkEdit_en.checked);
          if(chkEdit_en.checked==true)
          {
            btnModify.disabled=false;
            txaWords.readOnly=false;
          } 
          else
          {
            btnModify.disabled=true;
            txaWords.readOnly=true;
          } 
        }      //]]> 
    </script>  
  </head>
  <body onload="chkProcessor()">
    <h5><?php print $statusDB; ?></h5>
    <div id="dvTables">
      <h4 class="caption">
        DB Tables<br />
        refer to<br />
        Web Pages
      </h4><?php  
          foreach($dbTable as $value)
          {
            if($value === $selTable)
              echo "<p class='display' style='background-color: #DDFFDD'>"
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
          foreach($dbElid as $value)
          {
            if($value === $selElement)
              echo "<p class='display' style='background-color: #FFFFCC'>"
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
      <form method="post" action="dataUpdate.php" id="frmElements" >
        <h4 class="lang">
          <input id=" hidTest" type="hidden" value="good" />
          <input id=" chkEdit_en" type="checkbox" tabindex="1" onclick="chkProcessor('en')" />
          Edit English 
          <input id=" btnModify_en" tabindex="2" type="submit" value="Submit Modifications" disabled="disabled" />
        </h4>
        <p class="textarea">
          <textarea  id=" txaWords_en" rows="7" cols="80" lang="en" tabindex="3" readonly="readonly"><?php echo trim($enBlock); ?></textarea>
        </p>
        <h4 class="lang">
          <input id=" chkEdit_ja" type="checkbox" tabindex="4" onclick="chkProcessor('ja')" />
          Edit Japanese
          <input id=" btnModify_ja" tabindex="5" type="submit" value="Submit Modifications" disabled="disabled" />
        </h4>
         <p class="textarea">
          <textarea rows="7" cols="80" lang="ja" id=" txaWords_ja" tabindex="6" readonly="readonly"><?php echo trim($jaBlock); ?></textarea>
        </p>
        <h4 class="lang">
          <input id=" chkEdit_de" type="checkbox" tabindex="7" onclick="chkProcessor('de')" />
          Edit German
          <input id=" btnModify_de" tabindex="8" type="submit" value="Submit Modifications" disabled="disabled" />
        </h4>
        <p class="textarea">
          <textarea rows="7" cols="80" lang="de" id=" txaWords_de" readonly="readonly" tabindex="9"><?php echo trim($deBlock); ?></textarea>
        </p>
      </form>
    </div>    
  </body>
</html>
