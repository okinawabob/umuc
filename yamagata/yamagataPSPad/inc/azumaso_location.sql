SET NAMES 'utf8';
--
-- Table structure for table 'location'
--
CREATE TABLE location (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  de varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Creating data for table 'location'
--
INSERT INTO location (elid, en, ja, de) VALUES
('locTitle', 'Azumaso &raquo; Location', '吾妻荘  &raquo; 場所', 'Azumaso &raquo; Standort'),
('lngLang', 'Languages', '言語', 'Sprache'),
('navHome', 'Home', 'ホーム', '<small>Hauptseite</small>'),
('h1Loc', 'Location', '場所', 'Standort'),
('h3MapJp', 'Map of Japan', '日本地図', 'Karte von Japan'),
('p1', 'Onogawa-Onsen is in Yonezawa-City, Yamagata-Prefecture<br /> that is in the northern area of the main island(Honshu) of Japan.', 
	'小野川温泉は日本の東北地方、山形県米沢市にあります。', 
	'Onogawa-Onsen ist in Yonezawa-City, Präfektur Yamagata -
 ist, dass in den nördlichen Bereich des Haupt-Insel (Honshu) von Japan.'),
('h3MapOn', 'Map of Onogawa Onsen', '小野川温泉マップ', 'Karte von Onogawa Onsen'),
('p2', 'Onogawa-Onsen is in a small town with beautiful nature.
<br />You can take a walk along the stream going through the town,
<br />enjoying birds singing.',
'小野川温泉は美しい自然に恵まれた小さな町です。<br />
	   町を流れる川に沿って散歩すると小鳥のさえずりが聞こえます。', 
'Onogawa-Onsen ist in einer kleinen Stadt mit der wunderschönen Natur.<br />Sie können einen Spaziergang entlang der Stream geht durch die Stadt,
Genießen birds singing.'),
('h3Access', 'Access', 'アクセス', 'Zufahrt'),
('toOnogawa', '<strong>To Onogawa onsen</strong><br />&nbsp;&nbsp;&nbsp;From Yonezawa Station: 20 minutes by car',
'<strong>小野川温泉</strong><br />&nbsp;&nbsp;&nbsp;米沢駅から車で20分',
'<strong>Um Onogawa Onsen</strong><br />&nbsp;&nbsp;&nbsp;
Von Yonezawa Station: 20 Minuten mit dem Auto'),
('toYonezawa', '<strong>To Yonezawa Station</strong><br />&nbsp;&nbsp;&nbsp;From Tokyo: 2hours &amp; 10minutes by Yamagata Shinkansen', 
'<strong>米沢駅</strong><br />&nbsp;&nbsp;&nbsp;東京から山形新幹線で2時間10分', 
'<strong>Um Yonezawa Station</strong><br />&nbsp;&nbsp;&nbsp;
Von Tokio: 2 Stunden und 10 Minuten von Yamagata-Shinkansen'),
('frKitakata', '<strong>To Yonezawa</strong><br />&nbsp;&nbsp;&nbsp;From Kitakata: 40minutes by car', 
'<strong>米沢</strong><br />&nbsp;&nbsp;&nbsp;喜多方から車で40分', 
'<strong>Um Yonezawa</strong><br />&nbsp;&nbsp;&nbsp;
Von Kitakata: 40 Minuten mit dem Auto'),
('gifAccess', 'Access_en.gif', 'Access.gif', 'Access_en.gif'),
('gifOnsen', 'OnsenMap.gif', 'OnsenMap_ja.gif', 'OnsenMap.gif');