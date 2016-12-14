
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
