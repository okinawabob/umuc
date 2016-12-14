<?php	// Food page
  require('../inc/dbReadLang.inc');
  // Read language request from URL append $_GET method
  $lang = setLang($_GET['lang']); // choices: lang=en lang=ja lang=de 
  $strTextUTF = dbReadLang($lang, "food"); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="<?php print $lang; ?>">
  <head>
    <meta name="content-type" content="text/html;charset=utf-8" />
    <meta name="keywords" content="<?php print $strTextUTF['keywords']; ?>"/>
    <meta name="Revisit-After" content="30 Days" />
    <meta name="author" content="Robert Laurie" />
    <meta name="copyright" content="&copy; 2008 Robert Laurie" />
    <meta name="generator" content="coded by hand" />
		<title><?php print $strTextUTF['fodTitle']; ?></title>
    <link href="../topic.css" rel="stylesheet" type="text/css" />  </head>
	<body id="Top">
    <div id="NavMenu">
			<div class="NavButton">
        <a href="../index.php<?php print '?lang='.$lang; ?>"><?php print $strTextUTF['navHome']; ?></a>
			</div>
      <div class="Lang">
        <div title="Languages, 言語, Sprache"><?php print $strTextUTF['lngLang']; ?>:
				</div>
        <a href="index.php?lang=en" title="English, 英語, Englisch">EN</a>
        <a href="index.php?lang=ja" title="Japanese, 日本語, Japanisch">JA</a>
        <a href="index.php?lang=de" title="German, ドイツ語, Deutsch">DE</a>
				</div>
		</div>		
	  <div id="Content">
			<div>
				<img alt="azumaso-kanji (22K)" src="../azumaso-kanji.jpg" height="120" width="749" />
			</div>
			<h1><?php print $strTextUTF['h1Fod']; ?></h1>
			<h3><?php print $strTextUTF['h3Beef']; ?></h3>	
			<p><?php print $strTextUTF['p1']; ?></p>
			<div class="photos"><img src="setmenu.jpg" alt="ryouri" />
				<img src="sukiyaki.jpg" alt="sukiyaki" />  <img src="steak.jpg" alt="steak" />
			</div>
			<h3><?php print $strTextUTF['h3hf']; ?></h3>
			<p><?php print $strTextUTF['p2']; ?></p>
			<div class="photos">	
				<img src="radium-eggs.jpg" alt="tamago" />
				<img src="koi-umani.jpg" alt="kokiUmani" />
		        <img src="soba-2.jpg" alt="soba" />
			</div>
			<h3><?php print $strTextUTF['h3Fruits']; ?></h3>
			<p> <?php print $strTextUTF['p3']; ?></p>
			<div class="photos">	
				<img src="grape.jpg" alt="budou" />
				<img src="cherry.jpg" alt="sakuranbo" />
		        <img src="Apples2.jpg" alt="Apples" />
				<img src="LaFrance.jpg" alt="La France" />
				<img src="peach.jpg" alt="Peaches" />
	    </div>
		</div>
	</body>
</html>