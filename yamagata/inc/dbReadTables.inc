<?php   // MySQL Processing
  
  // Global Variables
  $dbLang =NULL;
  $hostname = 'localhost'; 
  $database = 'islan35_azumaso';  

  function getTableNames()
  {
    global $dbLang, $hostname, $database;
    $username = 'islan35_bob'; 
    $password = 'bob'; 
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
    
  	$result->close();  // Cleanup result sets when done
    return $dbTable;
  }

  function updateTranslations($Table, $Element, $Translation)
  {
    global $dbLang;
    $dbLang->query("SET NAMES 'utf8'"); // Specifies utf-8 for query
    // Display element IDs for table
    $query_str = "UPDATE $Table SET en = '$Translation[en]', "
      . "ja = '$Translation[ja]', de = '$Translation[de]' "
      . "WHERE elid = '$Element';";
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
  }
  
  function getElementIDs($Table)
  {
    global $dbLang; 
  	$dbLang->query("SET NAMES 'utf8'"); // Specifies utf-8 for query

    // Display element IDs for table
    $query_str = "SELECT elid FROM $Table ";
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
    $result->close();  // Cleanup result sets when done
    return $dbElid;
  }    
 
  function getTranslations($selTable, $selElement)
  {
    global $dbLang, $hostname, $database;
    // Display element IDs for table
    $query_str = "SELECT en FROM $selTable WHERE elid = '$selElement' ";
  	$result = @$dbLang->query($query_str);
    $row = $result -> fetch_row();
    $Block['en'] = "$row[0]";
    
    $query_str = "SELECT ja FROM $selTable WHERE elid = '$selElement' ";
  	$result = @$dbLang->query($query_str);
    $row = $result -> fetch_row();
    $Block['ja'] = "$row[0]";
    
    $query_str = "SELECT de FROM $selTable WHERE elid = '$selElement' ";
  	$result = @$dbLang->query($query_str);
    $row = $result -> fetch_row();
    $Block['de'] = "$row[0]";
  
    $Block['status'] = "Successfully connected to the server '" . $hostname 
        . "' using MySQL client: ". mysql_get_client_info()
        . " and the '" . $database . "' database.";
    
  	$result->close();  // Cleanup result sets when done
  	$dbLang->close();  // Close Database Connection
    return $Block;
  }    
?>
