<?php	// Seasons page
  require('../inc/dbReadLang.inc');
  // Read language request from URL append $_GET method
  $lang = setLang($_GET['lang']); // choices: lang=en lang=ja lang=de 
  $strTextUTF = dbReadLang($lang, "seasons"); 
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
		<title><?php print $strTextUTF['seaTitle']; ?></title>
    <link href="../topic.css" rel="stylesheet" type="text/css" />
  </head>
  <body id="Top">
    <div id="NavMenu">
			<div class="NavButton">
        <a href="../index.php<?php print '?lang='.$lang; ?>"><?php print $strTextUTF['navHome']; ?></a>
			</div>
			<div class="NavButton">
        <a href="#Spring"><?php print $strTextUTF['h3Spring']; ?></a>
      </div>
      <div class="NavButton">
        <a href="#Summer"><?php print $strTextUTF['h3Summer']; ?></a>
      </div>
      <div class="NavButton">
        <a href="#Fall"><?php print $strTextUTF['h3Autumn']; ?></a>
      </div>
      <div class="NavButton">
        <a href="#Winter"><?php print $strTextUTF['h4Winter']; ?></a>
      </div>
      <div class="NavButton">
        <a href="#Top"><?php print $strTextUTF['nvTop']; ?></a>
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
        <img alt="azumaso-kanji (22K)" src="../azumaso-kanji.jpg"
        height="120" width="749" />
      </div>
      <h1><?php print $strTextUTF['h1Sea']; ?></h1>
			<h3 id= "Spring"><?php print $strTextUTF['h3Spring']; ?></h3  >
       <p><?php print $strTextUTF['p1']; ?></p>
      <div class="images">
				<img src="sakura-1.jpg" alt="sakura1" /> 
				<img src="sakura-2.jpg" alt="sakura2" /> 
				<img src="sakuraBoat.jpg" alt="sakura3" /> 
				<img src="sakuraschool.jpg" alt="sakura4" />
      </div>
      <h3 id="Summer"><?php print $strTextUTF['h3Summer']; ?></h3>
      <p><?php print $strTextUTF['p2']; ?></p>
      <div class="images"> 
				<img src="ajisai.jpg" alt="ajisai" />  
				<img src="cherryFirefly.jpg" alt="hotaru" /> 
				<img src="matsuri.jpg" alt="matsuri" /> 
     </div>
      <h3 id="Fall"><?php print $strTextUTF['h3Autumn']; ?></h3>
      <p><?php print $strTextUTF['p3']; ?></p>
	 <div class="images"> 
        <img src="ohoribata.jpg" alt="ohori" /> <img src="mapletrees2.jpg" alt="momiji" /> <img src="yonezawa-bonchi.jpg" alt="kouyou1" /> 
      </div>
      <h3 id="Winter"><?php print $strTextUTF['h4Winter']; ?></h3>
      <p><?php print $strTextUTF['p4']; ?></p>
			<div class="images"> 
				<img src="kadomatsu.jpg" alt="oshougatu" /> 
				<img src="nanakamado.jpg" alt="yukigeshiki2" /> 	
				<img src="onogawa.jpg" alt="Yuki no Onogawa" /> 	
				<img src="yukimi-buro.jpg" alt="yukigeshiki" /> 
      </div>
    </div>
  </body>
</html>
