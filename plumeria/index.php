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
		$strTextUTF = dbReadLang($lang, "homepage"); 
	?>
	<meta name="keywords" content="<?php print $strTextUTF['keywords']; ?>" 
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
		<?php print $strTextUTF['pageTitle']; ?>
	</title>
	<link href="home.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
		/*<![CDATA[*/
			<?php print $strTextUTF['langCSS']; ?>
		/*]]>*/
	</style>
	<script type="text/javascript" src="AntiSpam.js">
	</script>
	 <script type="text/javascript">   
	//<![CDATA[
		var fileImage = new Array("mainPhotoPlumeria.jpg", "mainPhotoClass.jpg", "mainPhotoParty.jpg");
		var timerSeconds = 6; //set timerSeconds for each image
		var ads = new Array(); 
		var ct=0;

		function switchAd() 
		{
			var imgToRotate = document.getElementById("mainPhoto");
			var n = (ct + 1) % fileImage.length;
			if (ads[n] && (ads[n].complete | ads[n].complete==null)) 
			{
				imgToRotate.src = ads[ct=n].src;
			}
			ads[ n = (ct + 1) % fileImage.length ] = new Image;
			ads[n].src = fileImage[n];
			setTimeout("switchAd()",timerSeconds*1000);
		}
		onload = function()
		{
			if (document.images)
				switchAd();
		}
	//]]>
	</script>
</head>

<body>
  <div id="divContent">
    <h1><?php print $strTextUTF['hCompany']; ?></h1>
    <h2><?php print $strTextUTF['hLocation']; ?></h2>
		<img id="mainPhoto" alt="Plumeria" src="mainPhotoPlumeria.jpg" height=
    "255" width="300" />
    <p><?php print $strTextUTF['pSlogan']; ?></p>
    <p>
			<img alt="" src="Earth.gif" height="21" width="24"
			style=
			"vertical-align: middle; margin-left: 15px; margin-right: 10px;" />
			 <a href=
			"http://www.plumeria.biz">http://www.plumeria.biz</a>
		</p>
    <hr />
    <p><?php print $strTextUTF['pSensei']; ?></p>
		<p>
			<?php print $strTextUTF['pCall']; ?>
			<br />
			<img alt="" src="phoneBlue.gif" height="19" width="30"
			style=
			"vertical-align: middle; margin-left: 10px; margin-right: 6px;" /> 
			+1-670-483-1213
		</p>
    <p>
			<?php print $strTextUTF['pEmail']; ?>
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

		</p>
		<div><br style="clear:both"> </div>
<div id="navBar">
				 <div class="NavButton">
				 <a href="index.php?lang=en">EN = <?php print $strTextUTF['EN_en']; ?><br /><?php print $strTextUTF['EN_ko']; ?> - <?php print $strTextUTF['EN_ja']; ?> </a> </div>
				 <div class="NavButton">
				<a href="index.php?lang=ko">KO = <?php print $strTextUTF['KO_en']; ?> <br /><?php print $strTextUTF['KO_ko']; ?> - <?php print $strTextUTF['KO_ja']; ?>  </a> </div>
				 <div class="NavButton">
				<a href="index.php?lang=ja"> JA = <?php print $strTextUTF['JA_en']; ?> <br /><?php print $strTextUTF['JA_ja']; ?> - <?php print $strTextUTF['JA_ko']; ?></a>  </div>
		</div>
	
		<div id="ancBar"> 
		<p style="text-align: left;">
		<?php print $strTextUTF['pAnnouncement']; ?>
		<p>
		</div>
    <p style=" margin-top: 20px; clear: both"><img alt=
    "Location Map" src="LocationMap.gif" height="255" width=
    "367" style="float: right; margin-left: 18px;" />
		<?php print $strTextUTF['pLocation']; ?>
		</p>
    <hr />
    <p style="text-align:left; font-size: small;">
		<?php print $strTextUTF['pRainbow']; ?>
		
    
		<span style="text-align: right; font-size: x-small; float: right;">
		<!-- Start of StatCounter Code -->
<a href="http://my.statcounter.com/project/standard/stats.php?project_id=6000494&guest=1">Visitors
<script type="text/javascript">
var sc_project=6000494; 
var sc_invisible=0; 
var sc_security="e2d2a4af"; 
var sc_text=2; 
</script>

<script type="text/javascript"
src="http://www.statcounter.com/counter/counter_xhtml.js"></script></a>
<noscript>
<div class="statcounter">
<a title="counter on godaddy"
class="statcounter"
href="http://www.statcounter.com/godaddy_website_tonight/">
<img class="statcounter" src="http://c.statcounter.com/6000494/0/e2d2a4af/0/"
alt="counter on godaddy" />
</a>
</div>
</noscript>
<!-- End of StatCounter Code --> 
</span>
</div>	
</body>
</html>
