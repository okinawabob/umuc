DROP DATABASE islan35_godivers;
SET NAMES 'utf8';
CREATE DATABASE islan35_godivers DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE islan35_godivers;
SET NAMES 'utf8';
--
-- Drop All Tables 
DROP TABLE IF EXISTS languages;
DROP TABLE IF EXISTS template;
DROP TABLE IF EXISTS homepage;
--
-- Table structure for table 'languages'
CREATE TABLE languages (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(8) default NULL,
  en varchar(30) default NULL,
  ja varchar(30) default NULL,
  ru varchar(30) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;

SET NAMES 'utf8';
--
-- Create data for table 'languages'
INSERT INTO languages (id, elid, en, ja, ru) VALUES(1, 'SL', 'select language', '言語を選ぶ', 'Выбор языка');
INSERT INTO languages (id, elid, en, ja, ru) VALUES(2, 'EN', 'English', '英語', 'Английский');
INSERT INTO languages (id, elid, en, ja, ru) VALUES(3, 'JA', 'Japanese', '日本語', 'Японский');
INSERT INTO languages (id, elid, en, ja, ru) VALUES(4, 'RU', 'Russian', 'ロシア語', 'Русский');
--
-- Table structure for table 'template' which includes navigation menus
CREATE TABLE template (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  ru varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;

SET NAMES 'utf8';
--
-- Create data for table 'template'
INSERT INTO template (id, elid, en, ja, ru) VALUES(1, 'navHome', 'Home Page', 'ホームページ', 'Главная страница');
INSERT INTO template (id, elid, en, ja, ru) VALUES(2, 'navDive', 'About Diving', 'ダイビングについて', 'Дайвинг');
INSERT INTO template (id, elid, en, ja, ru) VALUES(3, 'navDiveExp', 'Experiencing diving ', '体験ダイビング', 'Для дайвинга опыт');
INSERT INTO template (id, elid, en, ja, ru) VALUES(4, 'navDiveSenior', 'Senior Diving', 'シニアダイビング', 'Дайвинг для старших');
INSERT INTO template (id, elid, en, ja, ru) VALUES(5, 'navDiveSD', 'scuba diving certification courses ', 'スクーバーダイバー認定コース', 'сертификат курсов подводное плавание');
INSERT INTO template (id, elid, en, ja, ru) VALUES(6, 'navDiveOD', 'open water certification course', 'オープンウォーターダイバー認定コース', 'открытой воде 	\r\nсертификат курсы');
INSERT INTO template (id, elid, en, ja, ru) VALUES(7, 'navDiveAD', 'advance open water certification course', 'アドバンス・オープンウォーターダイバー認定コース', '	\r\nзаранее открытой воде 	\r\nсертификат курсов');
INSERT INTO template (id, elid, en, ja, ru) VALUES(8, 'navDiveDWF', 'Diving With Friends', '	\r\n友人とダイビング', 'Дайвинг с друзьями');
INSERT INTO template (id, elid, en, ja, ru) VALUES(9, 'navPrice', 'Price List', '料金について', 'Ценообразование');
INSERT INTO template (id, elid, en, ja, ru) VALUES(10, 'navApply', 'Sign Up', 'お申し込み', 'Зарегистрируйтесь');
INSERT INTO template (id, elid, en, ja, ru) VALUES(11, 'navShop', 'About our shop', 'ショップについて', 'Магазин для');
INSERT INTO template (id, elid, en, ja, ru) VALUES(12, 'navStaff', 'Staff', 'スタッフについて', 'Персонала');
INSERT INTO template (id, elid, en, ja, ru) VALUES(13, 'navInquiry', 'Contact Us', 'お問い合わせ', 'Контакт');
INSERT INTO template (id, elid, en, ja, ru) VALUES(14, 'navPrivacy', 'Privacy Policy', 'プライバシーポリシー', 'частные политика');
INSERT INTO template (id, elid, en, ja, ru) VALUES(15, 'navSitemap', 'Site map', 'サイトマップ', 'Карта сайта');
INSERT INTO template (id, elid, en, ja, ru) VALUES(16, 'navLinks', 'Links', 'リンク', 'Связи');
INSERT INTO template (id, elid, en, ja, ru) VALUES(17, 'navBlogGodi', 'G.O.D.I.<br />Blog', 'G.O.D.I.<br />ブログ', 'G.O.D.I.<br />Блог');
INSERT INTO template (id, elid, en, ja, ru) VALUES(18, 'navBlogTanya', '&nbsp;Tanya´s<br />&nbsp;Blog', ' &nbsp;ターニャ<br />&nbsp;のブログ', '&nbsp;Таня<br />&nbsp;Блог');
INSERT INTO template (id, elid, en, ja, ru) VALUES(19, 'navWeather', 'Saipan<br />weather', 'サイパン<br />天気', 'Сайпан<br />погода');
INSERT INTO template (id, elid, en, ja, ru) VALUES(20, 'navTop', 'Top', 'トップ', 'сверху');
INSERT INTO template (id, elid, en, ja, ru) VALUES(21, 'askQuestions', 'If you have questions,<br />please ask us!', 'わからないことがあればお気軽にご相談ください。', 'Если вы не знаете,<br />то узнайте у нас.');
INSERT INTO template (id, elid, en, ja, ru) VALUES(22, 'location', 'GLOBAL OCEAN DIVERS, INC.<br /> \r\nSaipan, Marianas Islands (USA)<br />\r\nTelephone: 1-670-233-8157', 'グローバルオーシャンダイバー株式会社<br />\r\nサイパン、北マリアナ諸島 （アメリカ表示）<br />\r\n電話番号： 1-670-233-8157', 'МИРОВОГО ОКЕАНА ВОДОЛАЗОВ, ВКЛЮЧЕНЫ<br />\r\nСайпан, Марианские Острова (Америка)<br />\r\nтелефон: 1-670-233-8157');
INSERT INTO template (id, elid, en, ja, ru) VALUES(23, 'address', 'Postal Address', '郵便のあて先', 'Почтовый Адрес');
INSERT INTO template (id, elid, en, ja, ru) VALUES(24, 'phone', 'Office Telephone', '会社の電話', 'Офис Телефон');
INSERT INTO template (id, elid, en, ja, ru) VALUES(25, 'copyright', 'Copyright © Global Ocean Dives, Inc., All Rights Reserved', '著作権©グローバルオーシャンダイバー株式会社が全ての権利を保有', 'Авторское право © Мирового Океана Водолазов, 	Все права защищены');
INSERT INTO template (id, elid, en, ja, ru) VALUES(26, 'langCSS', 
'body {font-size: 1em; line-height: 1.1em; font-family: Arial, Helvetica, "Nimbus Sans L", "Liberation Sans", FreeSans, Sans-serif;}', 
'body {font-size: 1em; line-height: 1.1em; font-family: "Meiryo", "Arial Unicode MS", "MS Gothic", "Sazanami Gothic", "IPA Mona Font", "Kochi Gothic", "Hiragino Kaku Gothic", "Osaka" , "Arial", sans-serif;}', 
'body {font-size: 1em; line-height: 1.1em; font-family: Arial, Helvetica, "Nimbus Sans L", "Liberation Sans", FreeSans, Sans-serif;}');

SET NAMES 'utf8';
--
-- Table structure for table 'homepage'
CREATE TABLE homepage (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  ru varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Create data for table 'homepage'
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(1, 'pageTitle', 'Global Ocean Divers, Inc.', 'ダイビングをサイパンの自然の中で楽しもう！ | GLOBAL OCEAN DIVERS', 'Мировым океаном водолазов');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(2, 'keywords', 'diving, Saipan, experience, licensing, godi, global, ocean, divers, nmi, cnmi, fiesta, resort', 'ダイビング,サイパン,体験,ライセンス', 'Дайвинг, Сайпан, опыт, лицензирование');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(3, 'hIntro', '"Saipan" is the Ideal  Tropical Water Diving Destination', '大人のダイバーの皆様が童心に返る事の出来るような憩いの場 "サイパン"', 'Козленка в каждый из взрослых водолазов, чтобы вернуться в остальной части области, как это возможно, "Сайпан"');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(4, 'pIntro', 'Have you ever been to Saipan? </p>\r\n<p>Saipan is a really beautiful tropical island with wonderful clear waters for scuba diving. \r\nThe island´s weather is very tropical which provides a great environment for diving. \r\nSaipan is easy to get to via either Northwest or Continental airlines. \r\nEnglish is spoken by almost every one (※ Saipan is the largest island in the \r\nNorthern Marianas Islands and a Commonwealth territory of the USA). \r\nThe culture of Saipan is relaxed and close to nature and attracts residents from many places in the world. </p>\r\n<p>Dive shop GODI has instructors  and dive masters that speak English, Japanese, and Russian.  Please feel free to contact us, and we can help you organize and plan your next diving vacation.', 'みなさん、サイパンに実際に足を運ばれたことはありますか？<br />サイパン近郊には本当に、本当に綺麗な自然が広がっています。日本からは交通の便もよく、日本語も比較的使用でき、南国情緒豊かなこの国でダイビングを楽しんでください！！<br />同時にサイパンの文化にも触れていただければ幸いです！<br />ダイビングショップ、G.O.D.Iのインストラクターは日本人も多いので英語(※サイパンはアメリカ領なので公用語は英語です。)が苦手な方でも大丈夫！（日本人じゃなくても日本語できる人が多いです。）お気軽に お問い合わせくださいね。', 'Вы Сайпан был срочно доставлен тот факт, что один? <br /> возле Сайпан действительно, действительно является прекрасной природой. Транспортировка из Японии, хорошо, может быть использована относительно Японии, страны, богатые тропические настроение насладиться дайвингом, пожалуйста! ! <br /> также коснулся культуры Сайпан Буду весьма признателен! <br /> погружение магазин, GODI так много инструкторов Английский и японский (※ территории США Сайпан является официальным языком является Английский.) еще более слабый, но ОК! (Японский народ, который не может даже многие японцы.) свяжитесь с нами, пожалуйста.');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(5, 'btOWstory', 'Read our customer report about getting their open water diving license ', 'サイパンでのダイビングライセンス取得(オープン・ウォーター)体験記　詳しくはこちらから', 'Сайпан дайвинг в лицензии (в открытой воде) вся история');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(6, 'btPhotos', 'photo library', 'フォトライブラリー', 'фото библиотека');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(7, 'hPhotos', 'Tanya´s Underwater Saipan Photo Library', 'ターニャのサイパン日記より　フォトライブラリー', 'Таня в дневнике от Сайпан фото библиотека');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(8, 'pPhotos', 'Our dive instructor Tanya has taken these underwater photos around Saipan. Please take a look.', '当ダイビングショップのダイバー、ターニャ自ら撮影したサイパン近郊にいる海洋生物を見てみてください！', 'Аквалангистов погрузиться магазин, неподалеку Сайпан Таня приняла его жизни на море, пожалуйста!');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(9, 'hSenior', 'We recommend diving for seniors', 'シニアダイビングのススメ', 'Советы старших Дайвинг');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(10, 'pSenior', 'Diving is often regarded as a sport for younger people, but diving is also  popular with seniors in North America and Europe. Global Ocean Divers provides quality instruction and training for people of all ages and skill levels.</p><p>We also cater to seniors that would like to experience diving for the first time. We work with students carefully to maintain neutral buoyancy when diving, which results in a feeling of floating in relaxed weightless state. Incidentally, a senior instructor in charge of diving was born in 1941!', '日本ではダイビングは若者の流行として捉えられがちですが、欧米ではシニア世代の文化として定着しております。<br />中性浮力（浮きも沈みもしない無重力に近い状態）をうまく活用さえすれば、水中ガイド・インストラクターだって夢じゃありません。</p><p>Global Ocean Diversではそんな夢を持つ中高年の方と夢を共有させていただく為にさまざまなダイビング・コースを用意させていただいております。<br />ちなみにシニアダイビングの担当インストラクターは1941年生まれです！', 'Дайвинг в Японии, молодые люди нередко рассматривается как эпидемия старшего поколения в западной культуре стало. <br /> нейтральной плавучестью (плавающая невесомую даже не близко к депрессии состояние), даже если так использован, инструктор направляет воду даже не мечта. <br /> <br /> Мирового океана Divers в среднем возрасте люди, которые мечтают, и мы поделились мечтой для различных дайвинг курсы будут доступны. <br /> Кстати, старший инструктор, отвечающий за дайвинг родился в 1941 году!');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(11, 'btSenior', 'Diving for senior', 'シニアダイビングについて', 'Дайвинг для старших');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(12, 'hEnd', 'Diving into the nature of their sport', 'ダイビングは自然を相手にしたスポーツです', 'Дайвинг в характере своего вида спорта');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(13, 'pEnd', 'Saipan is a wonderful natural environment both on land and under the sea. We offer dives at many recommended locations for you to enjoy. Saipan has many places for diving that offer calm tranquil waters for the less experienced divers. \r\n(<a href="report/report1/report5.html">Click here to view a report about diving spots around Saipan</a>). Enjoying nature underwater is a wonderful treat and you will feel euphoric  to float weightless in the underwater tropical environment. However, it is very important that you receive quality instruction and guidance to safely explore this undersea world.   </p>\r\n<p>Seventy percent of all divers in the world have been trained using the PADI curriculum. Our dive certification courses utilize the PADI curriculum for all dive classes and we are a PADI accredited dive shop. You will learn to safely enjoy the undersea tropical environment in all our certification courses. We provide modern and well maintained equipment for our customers.', 'サイパンの海は自然に溢れた素晴らしい環境で、ダイビングを楽しむのにオススメのロケーションです。(<a href="report/report1/report5.html">サイパン近郊のダイビングスポットの紹介はこちら。</a>)老若男女それぞれに楽しめますし、知れば知るほどその奥深さに心奪われます。ただ、自然を相手にするが故に日頃皆さんが生活する陸上とは環境の違う水中にまず慣れていただく必要があります。私たちはダイビング教育機関の中で世界の7割のダイバーが所属しているＰＡＤＩのカリキュラムにのっとり、各種ライセンス取得などダイバー養成を行っておりますので、初めての方はまず次のページを参照してみてください。', 'Сайпан полна прекрасных природной среды на море, дайвинг мест и рекомендуется пользоваться. (<a href="report/report1/report5.html">дайвинг пятна возле Сайпан представил здесь.</a>) каждая для молодых и старых можно пользоваться, и я больше узнал глубины сердца, лишенного . Тем не менее, природа вокруг вас, поскольку они живут разные земли в воде и окружающей среды, должны сначала быть знакомы. Мы погружение в учебных заведениях 70 процентов мирового PADI дайвер входит в учебный план угона, такие как различные лицензирование и обучение водолазов, поэтому на первой странице Вы увидите первый: Повторите попытку.');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(14, 'btExperience', 'For beginning diver ', '初めての方用ページ', 'На первую страницу');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(15, 'hNews', 'G.O.D.I. News from Saipan', 'G.O.D.I.ニュースサイパンから', 'G.O.D.I. Новости из Сайпан');
INSERT INTO homepage (id, elid, en, ja, ru) VALUES(16, 'pGODInews', '<p>Update 2008/12/8 <br /> Asiana Airlines will add additional flight to serve Saipan. A routing from Inchon to Osaka to Saipan begins December 20<sup>th</sup>.</p>\r\n<p>Update 2008/5/10 <br /> Northwest airlines has added more flights between from Narita, Nogoya, and Osaka to Saipan. Today´s weather is great for diving.  </p>\r\n<p>Update 2008/5/9 <br />Electricity rates has doubled for the people of Saipan in the past year. It is hard to economize on electricity with these high rates.</p> \r\n<p>Update 2008/5/8 <br /> Japan Airlines will charter flights to Saipan, which could benefit tourism more.</p>', '<p>更新2008/5/10 <br />成田ダイビングを（サイパン情報）今日のサイパン良いことで、天候の間ノースウェスト航空会社</p>\r\n<p>更新2008/5/9 <br />電気料金サイパンの人々に倍増しています。電気を節約するのは難しい。</p>\r\n<p>更新2008/5/8 <br />サイパンに日本航空チャーター便は、給付可能性がある観光詳細。</p>', '<p> обновление 2008/5/10 <br /> Северо-Западные авиалинии между Нарита (Сайпан информации) погода в сегодняшнем Сайпан хорош для дайвинга </p>\r\n<p> обновление 2008/5/9 <br /> тарифов на электроэнергию в два раза для населения Сайпан. Это трудно экономить на электроэнергии. </p>\r\n<p> обновление 2008/5/8 <br /> Japan Airlines чартерного рейса на Сайпан, будет способствовать более туризма. </p>');
SET NAMES 'utf8';

