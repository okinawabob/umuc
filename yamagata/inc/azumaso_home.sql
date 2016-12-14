DROP DATABASE azumaso;
SET NAMES 'utf8';
CREATE DATABASE azumaso DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE azumaso;
SET NAMES 'utf8';
--
-- Table structure for table 'homepage'
--
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
--
INSERT INTO homepage (elid, en, ja, de) VALUES
('homTitle', 'Azumaso', '吾妻荘', 'Azumaso'),
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
