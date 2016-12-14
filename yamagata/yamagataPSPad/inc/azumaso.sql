DROP DATABASE islan35_azumaso;
SET NAMES 'utf8';
CREATE DATABASE islan35_azumaso DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE islan35_azumaso;
SET NAMES 'utf8';
--
-- Table structure for table 'languages'
CREATE TABLE languages (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(3) default NULL,
  en varchar(30) default NULL,
  ja varchar(30) default NULL,
  de varchar(30) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Creating data for table 'languages'
INSERT INTO languages (elid, en, ja, de) VALUES
('ln', 'Languages', '言語', 'Sprache'),
('en', 'English', '英語', 'Englisch'),
('ja', 'Japanese', '日本語', 'Japanisch'),
('de', 'German', 'ドイツ語', 'Deutsch')
;
--
-- Table structure for table 'homepage'
CREATE TABLE homepage (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  de varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Creating data for table 'homepage'
INSERT INTO homepage (elid, en, ja, de) VALUES
('homTitle', 'Azumaso', '吾妻荘', 'Azumaso'),
('keywords', 'japan, hot, hotel, springs, yamagata, onsen, resort, hot water springs', '日本、ホット、ホテル、 、山形、温泉、リゾート、温泉湯温泉', 'Japan, heiß, Hotel, Federn, Yamagata, Onsen, resort, heiße Quellen'),
('lngLang', 'Languages', '言語', 'Sprache'),
('navLocation', 'Location', '場所', 'Standort'),
('navFacilities', 'Facilities', '施設', '<small>Ausstattung</small>'),
('navFood', 'Food', '食べ物', 'Nahrung'),
('navSeasons', 'Seasons', '季節', '<small>Jahreszeiten</small>'),
('navMap', 'Map', 'マップ', 'Karte'),
('homWelcome', 'Welcome to Azumaso', 'ようこそ吾妻荘へ', 
'Willkommen in Azumaso'),
('homOnsen', 'Hot Springs (Onsen 温泉)', '温泉', 
'Heiße Mineralquellen(Onsen 温泉)'),
('homP1', 'Japan has many volcanoes and in Japan there are thousands of hot springs called onsen. Hot springs are classified by the type of       minerals and their amount in the water. It is very relaxing to take a bath in a hot spring. For many centuries Japanese people have enjoyed going to hot spring resorts.',
'日本には多くの火山があり、それにともなって数多くの温泉が点在しています。その数は大小合わせて数千にも及ぶと言われています。温泉は含まれる成分の種類と量によって、様々に分類されます。温泉は、大変リラックス効果が高く、古来より日本人の大きな楽しみの一つとなっています。',
'Japan hat viele Vulkane und in Japan gibt es tausende von heißen Quellen genannt Onsen. Die heissen Quellen sind von der Art der Mineralien und ihrer Höhe im Wasser. Es ist sehr entspannend, um ein Bad in einer heißen Quelle. For many centuries Japanese people have enjoyed going to hot spring resorts. Für viele Jahrhunderte Japanese people haben genossen wird heißer Frühling Resorts.'),
('homP2', 'People usually enjoy hot springs, by staying at a traditional Japanese style inn called "ryokan". Ryokan rooms are rather simple with tatami mats and sliding paper doors called fusuma and shoji. Futons are used       instead of Western style beds. Two Japanese style meals, breakfast and       dinner, are served in each guest room or a big dining room.', 
' 人々は普通、旅館に泊まって温泉を楽しみます。旅館の客室は簡素な畳の部屋で、 ふすま、障子のついた和室となっています。また様式のベッドの代わりには布団が使われます。食事は朝晩の二食が付いていて、各客室、あるいは大きな共同の食堂で食べる\r\n				ことができます。', '
Die Menschen genießen in der Regel heißen Quellen, durch Aufenthalt in einem traditionellen japanischen Stil Wirtshaus namens "Ryokan". Ryokan Zimmer sind recht einfach mit Tatami-Matten und Schiebe-Türen Papier namens Fusuma und Shoji. Futons werden anstelle von westlichen Stil Betten. Zwei japanische Stil Mahlzeiten, Frühstück und Abendessen, serviert in jedem Zimmer oder einen großen Speisesaal.'
),
('homSec3', '<h3>Azumaso</h3>
<p>Our inn, Azumaso, is one of these Japanese style inns located in Onogawa-Onsen. It is located in the northern area of Japan( Tohoku region). Clear hot spring water of Onogawa-Onsen will heal your sore muscles and stress. Besides it will make your skin really soft and        smooth. That is why our hot spring is very popular especially with ladies.</p>  
<p>The inn consists of three buildings: the main building(Azumaso), the        luxurious annex(Azuma-en), and the reasonable annex for longer staying       guests(Hoyo-Center). You can choose one of these for your taste and        financial condition. We always serve you with heart-warming hospitality. 
We are looking forward to seeing you soon.</p>', 
'<h3>吾妻荘</h3>
<p>吾妻荘は日本の東北地方の小野川温泉にある温泉旅館です。小野川の透明な温泉水は体の疲れだけでなく、心の疲れをも癒してくれます。また、小野川温泉は美肌効果がすばらしく、入浴後の肌は驚くほど柔らかく、すべすべになります。そのため、小野川温泉は特に女性に人気のある温泉です。当旅館は本館（吾妻荘）、豪華な別館(吾妻苑）、湯治客のためのリーズナブルな別館（保養センター）の三棟からなっていますので、お客様の好みとご希望価格によってお選び頂けます。</p>
<p>従業員一同、皆様のお越しを心よりお待ちしております。</p>', 
'<h3>Azumaso</h3>
<p>Unser Gasthaus, Azumaso, ist eins von diesen japanischen Stil Gasthöfe in Onogawa-Onsen. Es befindet sich im nördlichen Bereich von Japan (Tohoku Region). Frei heißen Quellwasser der Onogawa-Onsen wird heilen Ihre Muskelkater und Stress. Außerdem wird sie Ihre Haut wirklich weich und glatt. Das ist der Grund, warum unsere heißer Frühling ist sehr beliebt, vor allem mit Damen.</p>
<p>Das Gasthaus besteht aus drei Gebäuden: dem Hauptgebäude (Azumaso), die luxuriöse Anlage (Azuma-en), und die vernünftige Anlage für einen längeren Aufenthalt Gäste (Hoyo-Center). Sie können wählen Sie eine dieser für Ihren Geschmack und die Finanzlage. Wir sind immer für Sie mit Herz-Erwärmung Gastfreundschaft. Wir freuen uns darauf, Sie bald.</p>'),
('homAddress', 'Address: Onogawa-cho 2471, Yonezawa-City, Yamagata-Prefecture, Japan<br />Telephone: 0238-32-2311 ', 
'住所: 山形県米沢市小野川町２４７１<br />Tel: 0238-32-2311 ', 
'Adresse: Onogawa-cho 2471, Yonezawa-City, Yamagata-Präfektur, Japan <br />Fernsprecher: 0238-32-2311'),
('homCreate', 'This site was created by <a href="http://hiroko.50webs.com">Hiroko Yasukata.</a>', 
'サイト製作：<a href="http://hiroko.50webs.com">安酸弘子</a>', 
'Diese Seite wurde erstellt von <a href="http://hiroko.50webs.com">Hiroko Yasukata.</a>');

SET NAMES 'utf8';
--
-- Table structure for table 'location'
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
INSERT INTO location (elid, en, ja, de) VALUES
('locTitle', 'Azumaso &raquo; Location', '吾妻荘  &raquo; 場所', 'Azumaso &raquo; Standort'),
('keywords', 'japan, hot, hotel, springs, yamagata, onsen, resort, hot water springs', '日本、ホット、ホテル、 、山形、温泉、リゾート、温泉湯温泉', 'Japan, heiß, Hotel, Federn, Yamagata, Onsen, resort, heiße Quellen'),
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

SET NAMES 'utf8';
--
-- Table structure for table 'facilities'
CREATE TABLE facilities (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  de varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Creating data for table 'facilities'
INSERT INTO facilities (elid, en, ja, de) VALUES
('facTitle', 'Azumaso &raquo; facilities', '吾妻荘  &raquo; 場所', 'Azumaso &raquo; Standort'),
('keywords', 'japan, hot, hotel, springs, yamagata, onsen, resort, hot water springs', 
'日本、ホット、ホテル、 、山形、温泉、リゾート、温泉湯温泉', 
'Japan, heiß, Hotel, Federn, Yamagata, Onsen, resort, heiße Quellen'),('lngLang', 'Languages', '言語', 'Sprache'),
('navHome', 'Home', 'ホーム', '<small>Hauptseite</small>'),
('h1Fac', 'Facilities', '施設', 'Ausstattung'),
('h3Bath', 'Bathrooms', '風呂場', 'Badezimmer'),
('p1', 'It is refreshing to take a bath in a large bath tub. 
	But, if you feel uncomfortable to take off 
  all clothes in front of others, 
	we also have smaller bathrooms for families.', 
'大きな湯船の温泉に入るのは実に気持ちのいいものです。でも人前で服を全部脱ぐのが嫌だという方のためには、小さな御家族用のお風呂もございます。', 
	'Es ist erfrischend, um ein Bad in einer großen Badewanne. Aber, wenn Sie sich unbehaglich fühlen, um alle Kleidung vor der anderen, wir haben auch kleinere Badezimmer für Familien.'),
('h3Gar', 'Japanese Garden', '日本庭園', 'Japanischer Garten'),
('p2', 'Gardens are another important elements of Japanese inns. The table and chairs in the left photo are made of stone cut out of rock in the mountain near-by.',
'日本庭園も日本式の旅館にとって大事な要素です。左側の写真に見えるテーブルといすは近くの山から切り出された岩を用いて作られたものです。', 
'Gärten sind weitere wichtige Elemente der japanischen Gasthäusern. Die Tische und Stühle in der linken Foto sind aus Stein geschnitten aus Stein in den Bergen in der Nähe von.'),
('h3Guest', 'Guest rooms', '客室', 'Zimmer'),
('p3', 'These are typical Japanese style rooms. The small sections like a stage at the back of these rooms are called "tokonoma". A nice picture or caligraphy and a simple flower arrangement are displayed there. You need to take off your shoes when entering the guest rooms as you enter other Japanese houses. You may put your socks on, but you must not put on slippers on tatami-mats.',
'客室は典型的な和室です。写真の奥に見えるステージのようなところは
床の間と呼ばれ、絵、書、生け花が飾られます。客室に入る時は、他の家に入る時同様、靴を脱がなければなりません。畳の部屋ではくつ下は構いませんが、スリッパはご遠慮願います。',
'Diese sind typisch japanischen Stil Zimmer. Die kleine Abschnitte wie eine Stufe, auf der Rückseite dieser Zimmer werden als "tokonoma". Ein nettes Bild oder Kalligraphie und eine einfache Blume Vereinbarung werden angezeigt. Sie müssen sich ziehen Sie Ihre Schuhe beim Betreten der Zimmer, wie Sie anderen japanischen Häusern. Sie können Sie Ihre Socken auf, aber Sie müssen nicht auf Pantoffeln auf Tatami-Matten.'),
('h3Banq', 'Banquet Rooms', 
'宴会場', 
'Bankett-Zimmer'),
('p4', 'We have two banquet rooms with karaoke; one is pretty big and the other is smaller. The bigger room has enough space for 60 people.', 
'吾妻荘には大小二つのカラオケ施設の付いた宴会場があります。大きい宴会場は60名のお客様が宴会できる広さです。', 
'Wir haben zwei Banketträume mit Karaoke; eins ist ziemlich groß, und die andere ist kleiner. The bigger room has enough space for 60 people. Die größeren Zimmer verfügt über genügend Platz für 60 Personen.');


SET NAMES 'utf8';
--
-- Table structure for table 'food'
CREATE TABLE food (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  de varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Creating data for table 'food'
INSERT INTO food (elid, en, ja, de) VALUES
('fodTitle', 'Azumaso &raquo; food', '吾妻荘  &raquo; 食べ物', 'Azumaso &raquo; Nahrung'),
('keywords', 'japan, hot, hotel, springs, yamagata, onsen, resort, hot water springs', 
'日本、ホット、ホテル、 、山形、温泉、リゾート、温泉湯温泉', 
'Japan, heiß, Hotel, Federn, Yamagata, Onsen, resort, heiße Quellen'),
('lngLang', 'Languages', '言語', 'Sprache'),
('navHome', 'Home', 'ホーム', '<small>Hauptseite</small>'),
('h1Fod', 'Food', '食べ物', 'Nahrung'),
('h3Beef', 'Beef Menus', '牛肉料理', 'Rind-Menü'),
('p1', 'Yonezawa beef is well known all over	Japan for
	  its great taste. Sukiyaki, Shabushabu, and Steak set menus are very popular with our guests.', 
'米沢牛はその味の良さで日本中にその名を知られています。すき焼き、しゃぶしゃぶ、ステーキのセットメニューはお客様にご好評を頂いております。', 
'Yonezawa Rindfleisch ist in ganz Japan für seine große Geschmack. Sukiyaki, Shabushabu, und Menüs sind sehr beliebt bei unseren Gästen.'),
('h3hf', 'Healthy food', '健康食', 'Gesunde Lebensmittel'),
('p2', 'Eggs are boiled in hot spring water for 40 minutes. The half-boiled eggs are served at every inn and sold at every sovenior shop in Onogawa Onsen. These are delicious and good for health.</p>	
<p> Yamagata-Prefecture is a kind of inland prefecture, so salt-water fishes were precious when transportations were limited. Instead, fresh-water fish dishes have been developed.  The dish in the second photo is a carp stew. It is said that carp is good especially for women after delivering babies.</p>
<p>
Buckwheat noodles, soba, is another popular food. Buckwheat enhances blood circulation and strengthens your veins. Soba is served in hot soup or chilled along with thick soy sauce. You can enjoy various toppings such as eggs, herbs, tempura, and grated taro.</p>
<p>The chef of our inn always seeks not only great taste but also healthy food for our guests.  We sometimes conduct workshops for people who are interested in health and introduce macrobiotic food.',
'卵は温泉のお湯で４０分かけてゆっくり半熟に茹でられます。この温泉卵は小野川温泉の各旅館で召し上がれますし、お土産物の店でも売られています。この温泉卵は実においしく健康にもよいものです。</p>
<p>山形県はほとんど内陸の県です。そのため交通が発達していなかった時代には海水魚は貴重なものでした。その代わり、山形では淡水魚の料理が発達したのです。二番目の写真は鯉の旨煮です。鯉は特に出産後の女性によいとされています。</p>
<p>そばも人気の高い食べ物です。そばは血液の循環を促し，血管を強くします。そばは熱いかけ汁をかけてたべたり、冷たく冷やしてそばつゆをつけて食べたりします。 卵、薬味、てんぷら、おろした山芋などが添えられます。</p>
<p>吾妻荘の料理長は料理のおいしさを追求するだけでなく、いつもお客様の健康を考えて料理を作っています。 私たちは健康に関心のあるお客様のためにワークショップを開き、自然食を紹介することもあります。 ', 
'Eier werden gekocht in heißem Quellwasser für 40 Minuten. The half-boiled eggs are served at every inn and sold at every sovenior shop in Onogawa Onsen. These are delicious and good for health. Die Hälfte gekochten Eiern serviert werden bei jedem Gasthaus und verkauft auf allen sovenior Shop in Onogawa Onsen. Das sind leckere und gut für die Gesundheit.</p>
<p>
Yamagata-Prefecture is a kind of inland prefecture, so salt-water fishes were precious when transportations were limited. Instead, fresh-water fish dishes have been developed. The dish in the second photo is a carp stew. Yamagata-Präfektur ist eine Art der Binnen-Präfektur, so Salz-Wasser-Fische waren kostbar, wenn Transporte waren begrenzt. Stattdessen, frisch-Wasser-Fisch-Gerichte entwickelt worden. Das Gericht in der zweiten Foto ist ein Karpfen Eintopf. It is said that carp is good especially for women after delivering babies. Es wird gesagt, dass Karpfen ist gut, vor allem für Frauen nach der Bereitstellung von Babys.</p>
<p>
Buckwheat noodles, soba, is another popular food. Buchweizen Nudeln, soba, ist ein bekanntes und beliebtes Lebensmittel. Buckwheat enhances blood circulation and strengthens your veins. Soba is served in hot soup or chilled along with thick soy sauce. Buchweizen verbessert die Blutzirkulation und stärkt Ihre Venen. Soba serviert wird in heißen Suppe oder gekühlt zusammen mit dicken Sojasauce. You can enjoy various toppings such as eggs, herbs, tempura, and grated taro. Sie können genießen verschiedenen Toppings wie Eier, Kräuter, Tempura, und gerieben taro.</p>
<p>
The chef of our inn always seeks not only great taste but also healthy food for our guests. We sometimes conduct workshops for people who are interested in health and introduce macrobiotic food. Der Küchenchef unseres Gasthaus soll nicht immer nur große Geschmack, sondern auch gesunde Lebensmittel für unsere Gäste. Wir führen manchmal Workshops für Menschen, die daran interessiert sind, die Gesundheit und die Einführung makrobiotische Küche.'),
('h3Fruits', 'Fruits', '果物', 'Früchte'),
('p3', 'Yamagata-Prefecture is called The kingdom of fruits. Various fruits are available all the year around. 
Major fruits raised in Yamagata are cherries, apples, peaches, grapes and La France (Western pears).',
'山形県は「フルーツ王国」と呼ばれるほど果物の豊富な県で、各種果物が一年を通して出回っています。 山形で栽培されている主な果物には
さくらんぼ、りんご、桃、ぶどう，ラ・フランス（洋ナシの一種）などがあります。',
'Yamagata-Präfektur heißt "Das Reich der Früchte". Verschiedene Früchte sind das ganze Jahr. Major Früchte, die in Yamagata sind Kirschen, Äpfel, Pfirsiche, Weintrauben und La France (West-Birnen).
budou');


SET NAMES 'utf8';
--
-- Table structure for table 'seasons'
CREATE TABLE seasons (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  de varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Creating data for table 'seasons'
INSERT INTO seasons (elid, en, ja, de) VALUES
('seaTitle', 'Azumaso &raquo; seasons', '吾妻荘  &raquo; 季節', 'Azumaso &raquo; Jahreszeiten'),
('keywords', 'japan, hot, hotel, springs, yamagata, onsen, resort, hot water springs', 
'日本、ホット、ホテル、 、山形、温泉、リゾート、温泉湯温泉', 
'Japan, heiß, Hotel, Federn, Yamagata, Onsen, resort, heiße Quellen'),
('lngLang', 'Languages', '言語', 'Sprache'),
('navHome', 'Home', 'ホーム', '<small>Hauptseite</small>'),
('h1Sea', 'Seasons', '季節', 'Jahreszeiten'),
('h3Spring', 'Spring', '春', 'Frühling'),
('nvTop', 'Top', '頂上', '<small>Seitenanfang</small>'),
('p1', 'Cherry blossoms are in full bloom at the end of April in the northern area of Japan. People enjoy picturesque view at this time of the year. ', 
'東北地方では４月下旬に桜が満開になります。人々はこの時期、絵のように美しい風景を楽しみます。 ', 
'Kirschenblüte in voller Blüte Ende April in den nördlichen Bereich von Japan. People enjoy picturesque view at this time of the year. Die Menschen genießen malerischen Blick auf diese Zeit des Jahres.'),
('h3Summer', 'Summer', '夏', 'Sommer'),
('p2', 'Early summer is the rainy season called <i>Tsuyu</i> in Japan. It rains so much during this period. Hydrangeas are beautiful at this time.</p><p>Various festivals are held in summer. Since Onogawa is known as the firefly&acute;s natural habitat, many people visit this local town to see fire flies.',
'日本では初夏には梅雨という雨季に入り、たくさん雨が降ります。梅雨には、紫陽花が美しく咲き揃います。</p><p>夏は様々なお祭りが開催される季節です。小野川は蛍の生息地として知られており、多くの人々が蛍を見にこの地方の町を訪れます。', 
'Frühsommer ist die Regenzeit genannte <i>Tsuyu</i> in Japan. Es regnet so viel in diesem Zeitraum.  Hortensien sind schön in dieser Zeit.</p><p>Verschiedene Festivals finden im Sommer. Da Onogawa ist bekannt als die Leuchtkäfer natürlichen Lebensraum, viele Menschen besuchen diese lokale Stadt, um zu sehen, Feuer fliegt.'),
('h3Autumn', 'Autumn', '秋', 'Herbst '),
('p3', 'In autumn, the leaves turn red, brown, and yellow. People enjoy both hot springs and red maple trees in this season.',
'秋には木の葉が赤、黄、茶色に色づきます。人々は温泉とともに紅葉狩りも楽しみます。',
'Im Herbst, die Blätter rot, braun und gelb. Die Menschen genießen die heißen Quellen und roten Ahorn-Bäume in dieser Saison.'),
('h4Winter', 'Winter', '秋', 'Herbst'),
('p4', 'This area has heavy snow in winter. Mountains and towns are covered with snow. It is gorgeous to watch snow-covered garden and take hot springs bath.',
'秋には木の葉が赤、黄、茶色に色づきます。人々は温泉とともに紅葉狩りも楽しみます。',
'Dieser Bereich hat schwere Schnee im Winter. Berge und Städte sind mit Schnee bedeckt. Es ist zu beobachten wunderschönen verschneiten Garten und die heißen Quellen Badewanne.');
