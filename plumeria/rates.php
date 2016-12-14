<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<?php  // Home page
		require('inc/dbReadLang.inc');
		// Read language request from URL append $_GET method
		if (isset($_GET['lang']) && $_GET['lang'] != null)
		{
			$lang = $_GET['lang']; // choices: lang=en lang=ja lang=ko 
			if($lang != 'en' && $lang != 'ja' && $lang != 'ko') 
				$lang = 'en';
		}
		else
			$lang = 'en';
		$strTextHome = dbReadLang($lang, "homepage"); 
		$strTextRates = dbReadLang($lang, "rates"); 
	?>
	<meta name="keywords" content="<?php print $strTextHome['keywords']; ?>" 
		lang="<?php print $lang; ?>" xml:lang="<?php print $lang; ?>" />
	<meta name="robots" content="all, index" />
	<meta name="Revisit-After" content="30 Days" />
	<meta name="author" content="Robert Laurie" />
	<meta name="copyright" content="&copy; 2010 Robert Laurie" />
	<meta name="generator" content="coded by hand" />
	<!-- Disable IE smart tags and image toolbar (2 tags below are required) -->
	<meta name="MSSmartTagsPreventParsing" content="true" />
	<meta http-equiv="imagetoolbar" content="false" /> 
	<title lang="<?php print $lang; ?>" xml:lang="<?php print $lang; ?>">
		<?php print $strTextRates['pageTitle']; ?>
	</title>
	<link href="home.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		/*<![CDATA[*/
		table {border: 4px solid #AACCAA; width: 100%;}
		th { height: 50px; width: 24%; font-weight: bold; text-align: center; background-color: #DDEEDD; border-bottom: 4px solid #AACCAA; }
		td { height: 50px; font-weight: bold; text-align: center; background-color: #EEFFEE;}
		.HomeButton a{
			 display: block;
			 height: 34px;
			 width: 34px;
			 float: left;
			 background: #FFFFCC url("btHome.gif") no-repeat;
			 text-decoration: none;
		}
		.HomeButton a:hover {background-position: 0 -34px; background-color: #FFFFCC;}
		.HomeButton a:active {background-position: 0 -34px; background-color: #FFFFCC;}
		p {text-align: center}
		/*]]>*/
	</style>
	<style type="text/css">
		/*<![CDATA[*/
			<?php print $strTextHome['langCSS']; ?>
		/*]]>*/
	</style>
	<script type="text/javascript" src="AntiSpam.js">
	</script>
</head>

<body>
  <div id="divContent">
		<div class="HomeButton" title="Go Home"><a href="index.php?lang=<?php print $strTextRates['language']; ?>"></a></div>
    <h1><?php print $strTextHome['hCompany']; ?></h1>
    <h2><?php print $strTextHome['hLocation']; ?></h2>
    <p><?php print $strTextHome['pSlogan']; ?></p>
    <p><?php print $strTextHome['pSensei']; ?></p>
 		<p>
			<?php print $strTextHome['pCall']; ?>
			<br />
			<img alt="" src="phoneBlue.gif" height="19" width="30"
			style=
			"vertical-align: middle; margin-left: 10px; margin-right: 6px;" /> 
			+1-670-483-1213
		</p>
    <p>
			<?php print $strTextHome['pEmail']; ?>
			<br />
			<img alt="" src="Envelope.gif" height="12" width="19"
			style=
			"margin-top: 2px; margin-left: 10px; margin-right: 6px; line-height: 20px" />
			<script type="text/javascript">
			//<![CDATA[
			AntiSpam("moc", "atakusayokorih", "liamg", "Language Training?", "")
			//]]>
			</script>
			<noscript>
					<img alt="mailme" src="mailmeSmall.gif" height="16" width="194" />
			</noscript>
			<br style="clear:both">
		</p>
		<p>
			<?php print $strTextRates['pDeliver']; ?>
		</p>
		
    <table summary="Training Rates" cellspacing="1"  border="1" align="center">
      <tr>
        <th><?php print $strTextRates['nStudents']; ?></th>

        <th><?php print $strTextRates['hourFee']; ?></th>

        <th><?php print $strTextRates['monthFee8']; ?></th>

        <th><?php print $strTextRates['monthFee12']; ?></th>
      </tr>

      <tr>
        <td>10-16 <?php print $strTextRates['students']; ?></td>

        <td>$8</td>

        <td>$64</td>

        <td>$96</td>
      </tr>

      <tr>
        <td>5-9 <?php print $strTextRates['students']; ?></td>

        <td>$10</td>

        <td>$80</td>

        <td>$120</td>
      </tr>

      <tr>
        <td>4 <?php print $strTextRates['students']; ?></td>

        <td>$12</td>

        <td>$96</td>

        <td>$144</td>
      </tr>

      <tr>
        <td>3 <?php print $strTextRates['students']; ?></td>

        <td>$15</td>

        <td>$120</td>

        <td>$180</td>
      </tr>

      <tr>
        <td>2 <?php print $strTextRates['students']; ?></td>

        <td>$20</td>

        <td>$160</td>

        <td>$240</td>
      </tr>

      <tr>
        <td>1 <?php print $strTextRates['student']; ?></td>

        <td>$30</td>

        <td>$240</td>

        <td>$360</td>
      </tr>
    </table>
		<p style="text-align: left;"><?php print $strTextRates['priceChange']; ?></p>
  </div>
</body>
</html>
