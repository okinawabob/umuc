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
        $lang = $_GET['lang']; // choices: lang=en lang=ja lang=ru 
        if($lang != 'en' && $lang != 'ja' && $lang != 'ru') 
          $lang = 'ja';
      }
      else
        $lang = 'ja';
      $strTextUTF = dbReadLang($lang, "homepage"); 
    ?>
    <meta name="keywords" content=
    "<?php print $strTextUTF['keywords']; ?>" lang="<?php print $lang; ?>" xml:lang="<?php print $lang; ?>" />
    <meta name="robots" content="all, index" />
    <meta name="Revisit-After" content="30 Days" />
    <meta name="author" content="Robert Laurie" />
    <meta name="copyright" content="&copy; 2007 Robert Laurie" />
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
        var fileImage = new Array("topPhoto1.jpg", "topPhoto2.jpg");
        var timerSeconds = 5; //set timerSeconds for each image
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
  <body lang="<?php print $lang; ?>" xml:lang="<?php print $lang; ?>">
    <div id="dvTop"><a name="TOP" id="TOP"></a></div>
    <div id="wrapper">
      <div id="logo">
        <img alt="GODI Logo" src="GodiLogo.gif" height="200" width="202" />
      </div>
      <div id="askus">
        <?php print $strTextUTF['askQuestions']; ?><br />
        <script type="text/javascript">
          AntiSpam("ten", "ofni", "srevidog", "Your Web Site", "")
        </script>
      </div>
      <noscript>
        <div id="askusNS">
          <img alt="mailme" src="mailmeSmall.gif" height="16" width="129" />
        </div>
      </noscript>
      <div id="location">
        <?php print $strTextUTF['location']; ?>
      </div>
      <img id="mainPhoto" alt="" src="topPhoto1.jpg" height="225" width="550" />


      <div id="selectLang">
        <?php print $strTextUTF['SL_en']; ?> <a href="index.php?lang=en" title="<?php print $strTextUTF['EN_en']; ?> - <?php print $strTextUTF['EN_ja']; ?>  - <?php print $strTextUTF['EN_ru']; ?>">EN</a> 
<img src="JapaneseLang.gif" style="vertical-align: text-bottom;" alt="Select Japanese" height="17" width="85" /> <a href="index.php?lang=ja" title="<?php print $strTextUTF['JA_en']; ?> - <?php print $strTextUTF['JA_ja']; ?>  - <?php print $strTextUTF['JA_ru']; ?>">JA</a> <?php print $strTextUTF['SL_ru']; ?> 
<a href="index.php?lang=ru"  title="<?php print $strTextUTF['RU_en']; ?> - <?php print $strTextUTF['RU_ja']; ?>  - <?php print $strTextUTF['RU_ru']; ?>">RU</a>
      </div>
      <div id="mainContent">
        <h1><?php print $strTextUTF['hIntro']; ?></h1>
        <p><img  class="contentPhotos" alt="Dive Shop Photo" src="shopPhoto.jpg" height="160" width="240" /><?php print $strTextUTF['pIntro']; ?></p>
        <div id="bannerReport"><a href="http://www.godivers.net/report/index.html"><?php print $strTextUTF['btOWstory']; ?></a></div>
        <h4><?php print $strTextUTF['hEnd']; ?></h4>
        <p>
          <img class="contentPhotos" alt="swimPhoto" src="swimPhoto.jpg" height="152" width="201" /><?php print $strTextUTF['pEnd']; ?>
        </p>
        <div class="navButtonOrange">
          <a href="http://www.godivers.net/diving/experience/index.html"><?php print $strTextUTF['btExperience']; ?></a>
        </div>          
        <h4><?php print $strTextUTF['hSenior']; ?></h4>
        <p>
          <?php print $strTextUTF['pSenior']; ?>
        </p>
        <div class="navButtonOrange">
          <a href="http://www.godivers.net/diving/experience/index.html"><?php print $strTextUTF['btSenior']; ?></a>
        </div>        
   
        <div id="dvPhotos">
          <img style="float: left;" alt="photoAlbum" src="photoAlbum.jpg" height="212" width="291" />
          <h3 id="h3Photo"><?php print $strTextUTF['hPhotos']; ?></h3>
          <p id="pPhoto"><?php print $strTextUTF['pPhotos']; ?></p>
          <div class="navButtonOrangeAlbum">
            <a href="http://www.godivers.net/photolibrary/index.html"><?php print $strTextUTF['btPhotos']; ?></a>
          </div>
        </div>
        <h4><?php print $strTextUTF['hNews']; ?></h4>
        <div id="divNews">
          <?php print $strTextUTF['pGODInews']; ?>
        </div>
        <p class="contactInfo">GLOBAL OCEAN DIVERS, INC.<br />
          <img style="margin-top: 11px;" alt="Postal address" title="<?php print $strTextUTF['address']; ?>" src="Envelope.gif" height="12" width="19" /> PMB 110 P.O.BOX 10001<br />SAIPAN MP 96950-8901<br />CNMI - USA<br />
    		  <img style="margin-top: 4px;" alt="Telephone number" src="phoneBlue.gif" height="19" width="30" title="<?php print $strTextUTF['phone']; ?>" /> 1-670-233-8157<br />
        </p>   
        <p class="contactInfo">
          <script type="text/javascript">
            AntiSpam("ten", "ofni", "srevidog", "Your Web Site", "")
          </script>
        </p>        
        <noscript>
        <p class="contactInfo">
          <img alt="" src="mailme.gif" height="20" width="180" />
        </p>
        </noscript>
        <hr />
        <p id="copyright"><?php print $strTextUTF['copyright']; ?> </p>
      </div>   

      <div id="navMenu">
        <div class="navButton1">
          <a href="http://www.godivers.net/index.html"><?php print $strTextUTF['navHome']; ?></a>
        </div>
        <div class="navButton1">
          <a href="http://www.godivers.net/diving/index.html"><?php print $strTextUTF['navDive']; ?></a>
        </div>
        <div class="navButton1a">
          <a href="http://www.godivers.net/diving/experience/index.html"><?php print $strTextUTF['navDiveExp']; ?></a>
        </div>
        <div class="navButton1a">
          <a href="http://www.godivers.net/diving/senior/index.html"><?php print $strTextUTF['navDiveSenior']; ?></a>
        </div>
        <div class="navButton1b">
          <a href="http://www.godivers.net/diving/sd/index.html"><?php print $strTextUTF['navDiveSD']; ?></a>
        </div>
        <div class="navButton1b">
          <a href="http://www.godivers.net/diving/od/index.html"><?php print $strTextUTF['navDiveOD']; ?></a>
        </div>
        <div class="navButton1b">
          <a href="http://www.godivers.net/diving/ad/index.html"><?php print $strTextUTF['navDiveAD']; ?></a>
        </div>
        <div class="navButton1a">
          <a href="http://www.godivers.net/diving/dwf/index.html"><?php print $strTextUTF['navDiveDWF']; ?></a>
        </div>
        <div class="navButton1">
          <a href="http://www.godivers.net/price/index.html"><?php print $strTextUTF['navPrice']; ?></a>
        </div>
        <div class="navButton1">
          <a href="http://www.godivers.net/apply/index.html"><?php print $strTextUTF['navApply']; ?></a>
        </div>
        <div class="navButton1">
          <a href="http://www.godivers.net/shop/index.html"><?php print $strTextUTF['navShop']; ?></a>
        </div>
        <div class="navButton1">
          <a href="http://www.godivers.net/staff/index.html"><?php print $strTextUTF['navStaff']; ?></a>
        </div>
        <div class="navButton1">
          <a href="http://www.godivers.net/inquiry/index.html"><?php print $strTextUTF['navInquiry']; ?></a>
        </div>
        <div class="navButtonBlue" style="margin-top: 20px;">
          <a href="http://www.godivers.net/privacy/index.html"><?php print $strTextUTF['navPrivacy']; ?></a>
        </div>
        <div class="navButtonBlue">
          <a href="http://www.godivers.net/sitemap/index.html"><?php print $strTextUTF['navSitemap']; ?></a>
        </div>
        <div class="navButtonBlue">
          <a href="http://www.godivers.net/link/index.html"><?php print $strTextUTF['navLinks']; ?></a>
        </div>
        <div class="navButtonBlogGodi">
          <a href="http://blog.godivers.net/"><?php print $strTextUTF['navBlogGodi']; ?></a>
        </div>
        <div class="navButtonBlogTanya">
          <a href="http://tanyagodi.exblog.jp/"><?php print $strTextUTF['navBlogTanya']; ?></a>
        </div>
        <div class="weather">
          <a href="http://www.wunderground.com/US/MP/Saipan.html?bannertypeclick=miniWeather06"><span id="weatherText"><?php print $strTextUTF['navWeather']; ?></span></a>
        </div>
        <div class="navButtonBlue" style="margin-top: 20px;">
          <a href="#TOP"><?php print $strTextUTF['navTop']; ?></a>
        </div>
      </div>  
    </div>
  </body>
</html>
