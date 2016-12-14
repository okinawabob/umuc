<?php      
  function dbReadLang($getLang, $page)
  {
    // Access Database  
    $hostname = 'localhost'; 
    $username = 'islan35_nakamura'; 
    $password = 'tako'; 
    $database = 'islan35_godivers'; 
    $dbTables = array("languages", "template", "$page"); 
    $availableLang = array("en", "ja", "ru"); 
  
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
  
     // Extract Data from tables and load into $strText array
    while(($item = each($dbTables)) !== FALSE)
  	{
    	if( $item['value'] === "languages" )
      {      
        while(($itemLang = each($availableLang)) !== FALSE)
      	{
          $query_str = "SELECT elid, ".$itemLang['value']." FROM ".$item['value'];
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
          while(($row_data = $result -> fetch_assoc()) !== NULL)
        	{
        		$strIndex = $row_data['elid'];
        		$strValue = $row_data[$itemLang['value']];
            $strIndex = $strIndex.'_'.$itemLang['value'];
        		$strText[$strIndex]= $strValue;
        	}
        }
      }
      else
      {
        $query_str = "SELECT elid, ".$getLang." FROM ".$item['value'];
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
        while(($row_data = $result -> fetch_assoc()) !== NULL)
      	{
      		$strIndex = $row_data['elid'];
      		$strValue = $row_data[$getLang];
      		$strText[$strIndex]= $strValue;
      	}      
      }
    }

  	$result->close();  // Cleanup result sets when done
  	$dbLang->close();  // Close Database Connection
    return $strText;
  }
?>
