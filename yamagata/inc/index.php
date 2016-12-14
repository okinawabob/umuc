<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta name="content-type" content="text/html;charset=utf-8" />
		<?php  // Home page
			require('inc/dbReadLang.inc');
			// Read language request from URL append $_GET method
			$lang = setLang($_GET['lang']); // choices: lang=en lang=ja lang=de 
			$strTextUTF = dbReadLang($lang, "homepage"); 
		?>
    <meta name="keywords"  lang="<?php print $lang; ?>" content="<?php print $strTextUTF[keywords]; ?>"/>
    <meta name="Revisit-After" content="30 Days" />
    <meta name="author" content="Robert Laurie" />
    <meta name="copyright" content="&copy; 2008 Robert Laurie" />
    <meta name="generator" content="coded by hand" />
		<title  lang="<?php print $lang; ?>"><?php print $strTextUTF[homTitle]; ?></title>
    <link href="topic.css" rel="stylesheet" type="text/css" />
  </head>
  <body lang="<?php print $lang; ?>">
     <div id="NavMenu">
       <div class="NavButton">
        <a href="location/index.php<?php print '?lang='.$lang; ?>"><?php print $strTextUTF[navLocation]; ?></a>
      </div>
      <div class="NavButton">
        <a href=
        "facilities/index.php<?php print '?lang='.$lang; ?>"><?php print $strTextUTF[navFacilities]; ?></a>
      </div>
      <div class="NavButton">
        <a href="food/index.php<?php print '?lang='.$lang; ?>"><?php print $strTextUTF[navFood]; ?></a>
      </div>
      <div class="NavButton">
        <a href=
        "seasons/index.php<?php print '?lang='.$lang; ?>"><?php print $strTextUTF[navSeasons]; ?></a>
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
        <img alt="azumaso-kanji (22K)" src="azumaso-kanji.jpg" height="120"
        width="749" />
      </div>
      <h1>
        <?php print $strTextUTF[homWelcome]; ?>
      </h1>
      <p>
        <img alt="niwa (60K)" src="niwa.jpg" height="321" width="483" />
      </p>
      <h3>
        <?php print $strTextUTF[homOnsen]; ?>
      </h3>
      <p>
        <?php print $strTextUTF[homP1]; ?>
      </p>
      <p>
        <?php print $strTextUTF[homP2]; ?>
      </p><?php print $strTextUTF[homSec3]; ?>
      <p style="width: auto;">
        <img alt="koi-niwa " src="koi.jpg" height="235" width="300" style=
        "vertical-align: text-top;" /> <img alt="azumaen " src="azumaen.gif"
        height="250" width="261" style="vertical-align: text-top;" />
      </p>
      <h4>
        <?php print $strTextUTF[homAddress]; ?>
      </h4>
      <h5>
        <?php print $strTextUTF[homCreate]; ?>
      </h5>
    </div> 
  </body>
</html>
