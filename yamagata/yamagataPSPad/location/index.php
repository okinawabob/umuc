<?php	// Location page
  require('../inc/dbReadLang.inc');
  // Read language request from URL append $_GET method
  $lang = setLang($_GET['lang']); // choices: lang=en lang=ja lang=de 
  $strTextUTF = dbReadLang($lang, "location"); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<?php print $lang; ?>">
  <head>
    <meta name="content-type" content="text/html;charset=utf-8" />
    <meta name="keywords" content="<?php print $strTextUTF[keywords]; ?>"/>
    <meta name="Revisit-After" content="30 Days" />
    <meta name="author" content="Robert Laurie" />
    <meta name="copyright" content="&copy; 2008 Robert Laurie" />
    <meta name="generator" content="coded by hand" />
		<title><?php print $strTextUTF[locTitle]; ?></title>
    <link href="../topic.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    /*<![CDATA[*/
			.JapanMap img{border: 5px solid #CCCCFF; margin-left: 150px; margin-bottom:50px;}	
			.OnsenMap img{border: 5px solid #FFFF00; margin-left: 150px; margin-bottom:50px;}	
	    .AccessMap img{border: 5px solid #CCCCFF; margin-left: 150px; margin-bottom:5px;}
			strong{font-weight:400}
			ul{ font-size:12pt; font-family: "Georgia"; margin-top:4pt; margin-bottom:100px;}
	    li{list-style-image:url(bullet-red.gif); list-style-position:outside;margin-left:100px}
		/*]]>*/ 
	 
    </style>
	
  </head>
  <body id="Top">
    <div id="NavMenu">
      <div class="NavButton">
        <a href="../index.php<?php print '?lang='.$lang; ?>"><?php print $strTextUTF[navHome]; ?></a>
			</div>
      <div class="Lang">
        <div title="Languages, 言語, Sprache"><?php print $strTextUTF[lngLang]; ?>:</div>
        <a href="index.php?lang=en" title="English, 英語, Englisch">EN</a>
        <a href="index.php?lang=ja" title="Japanese, 日本語, Japanisch">JA</a>
        <a href="index.php?lang=de" title="German, ドイツ語, Deutsch">DE</a>
      </div>
    </div>
    <div id="Content">
      <div>
        <img alt="azumaso-kanji (22K)" src="../azumaso-kanji.jpg"         height="120" width="749" />
      </div>
		  <h1><?php print $strTextUTF[h1Loc]; ?></h1>
		  <h3><?php print $strTextUTF[h3MapJp]; ?></h3>	 
		  <p><?php print $strTextUTF[p1]; ?></p>
			<div class="JapanMap"><img src="MapJapan.gif" alt="Map of Japan" />
			</div>
			<h3><?php print $strTextUTF[h3MapOn]; ?></h3>
			<p><?php print $strTextUTF[p2]; ?></p>
			<div class="OnsenMap"><img src="<?php print $strTextUTF[gifAccess]; ?>" alt="Map of Onogawa Onsen" /> </div>
				 
			<h3><?php print $strTextUTF[h3Access]; ?></h3>
			<div class="AccessMap"><img src="<?php print $strTextUTF[gifAccess]; ?>" alt="Access" /></div>
			
			<ul>
				<li><?php print $strTextUTF[toOnogawa]; ?></li>
				<li><?php print $strTextUTF[toYonezawa]; ?></li>
		    <li><?php print $strTextUTF[frKitakata]; ?></li>	
		   </ul>
    </div>
  </body>
</html>
