
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
('facTitle', 'Azumaso &raquo; food', '吾妻荘  &raquo; 食べ物', 'Azumaso &raquo; Nahrung'),
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
'Eier werden gekocht in heißem Quellwasser für 40 Minuten. The half-boiled eggs are served at every inn and sold at every sovenior shop in Onogawa Onsen. These are delicious and good for health. Die Hälfte gekochten Eiern serviert werden bei jedem Gasthaus und verkauft auf allen sovenior Shop in Onogawa Onsen. Das sind leckere und gut für die Gesundheit.

Yamagata-Prefecture is a kind of inland prefecture, so salt-water fishes were precious when transportations were limited. Instead, fresh-water fish dishes have been developed. The dish in the second photo is a carp stew. Yamagata-Präfektur ist eine Art der Binnen-Präfektur, so Salz-Wasser-Fische waren kostbar, wenn Transporte waren begrenzt. Stattdessen, frisch-Wasser-Fisch-Gerichte entwickelt worden. Das Gericht in der zweiten Foto ist ein Karpfen Eintopf. It is said that carp is good especially for women after delivering babies. Es wird gesagt, dass Karpfen ist gut, vor allem für Frauen nach der Bereitstellung von Babys.

Buckwheat noodles, soba, is another popular food. Buchweizen Nudeln, soba, ist ein bekanntes und beliebtes Lebensmittel. Buckwheat enhances blood circulation and strengthens your veins. Soba is served in hot soup or chilled along with thick soy sauce. Buchweizen verbessert die Blutzirkulation und stärkt Ihre Venen. Soba serviert wird in heißen Suppe oder gekühlt zusammen mit dicken Sojasauce. You can enjoy various toppings such as eggs, herbs, tempura, and grated taro. Sie können genießen verschiedenen Toppings wie Eier, Kräuter, Tempura, und gerieben taro.

The chef of our inn always seeks not only great taste but also healthy food for our guests. We sometimes conduct workshops for people who are interested in health and introduce macrobiotic food. Der Küchenchef unseres Gasthaus soll nicht immer nur große Geschmack, sondern auch gesunde Lebensmittel für unsere Gäste. Wir führen manchmal Workshops für Menschen, die daran interessiert sind, die Gesundheit und die Einführung makrobiotische Küche.'),
('h3Fruits', 'Fruits', '果物', 'Früchte'),
('p3', 'Yamagata-Prefecture is called The kingdom of fruits. Various fruits are available all the year around. 
Major fruits raised in Yamagata are cherries, apples, peaches, grapes and La France (Western pears).',
'山形県は「フルーツ王国」と呼ばれるほど果物の豊富な県で、各種果物が一年を通して出回っています。 山形で栽培されている主な果物には
さくらんぼ、りんご、桃、ぶどう，ラ・フランス（洋ナシの一種）などがあります。',
'Yamagata-Präfektur heißt "Das Reich der Früchte". Verschiedene Früchte sind das ganze Jahr. Major Früchte, die in Yamagata sind Kirschen, Äpfel, Pfirsiche, Weintrauben und La France (West-Birnen).
budou');
