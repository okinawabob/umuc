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
('locTitle', 'Azumaso &raquo; facilities', '吾妻荘  &raquo; 場所', 'Azumaso &raquo; Standort'),
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