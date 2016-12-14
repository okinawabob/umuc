DROP DATABASE islan35_godivers;
SET NAMES 'utf8';
CREATE DATABASE islan35_godivers DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE islan35_godivers;
SET NAMES 'utf8';
--
-- Table structure for table 'languages'
CREATE TABLE languages (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(3) default NULL,
  en varchar(30) default NULL,
  ja varchar(30) default NULL,
  ru varchar(30) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Create data for table 'languages'
INSERT INTO languages (elid, en, ja, ru) VALUES
('SL', 'select language', '言語を選ぶ', 'Выбор языка'),
('EN', 'English', '英語', 'Английский'),
('JA', 'Japanese', '日本語', 'Японский'),
('RU', 'Russian', 'ロシア語', 'Русский')
;
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
--
-- Create data for table 'template'
INSERT INTO template (elid, en, ja, ru) VALUES
('navHome', 'Home Page', 'ホームページ', 'Главная страница'),
('navDive', 'About Diving', 'ダイビングについて', 'Дайвинг'),
('navDiveExp', 'For diving experience','体験ダイビング', 'Для дайвинга опыт'),
('navDiveSenior', 'Dive Senior', 'シニアダイビング', 'Дайвинг для старших'),
('navDiveSD', 'certification courses scuba diving', 'スクーバーダイバー認定コース', '	
сертификат курсов подводное плавание'),
('navDiveOD', 'open water certification course', 'オープンウォーターダイバー認定コース', 'открытой воде 	
сертификат курсы'),
('navDiveAD', 'advance open water certification course', 'アドバンス・オープンウォーターダイバー認定コース', '	
заранее открытой воде 	
сертификат курсов'),
('navDiveDWF', 'Diving With Friends', '	
友人とダイビング', 'Дайвинг с друзьями'),
('navPrice', 'Price List', '料金について', 'Ценообразование'),
('navApply', 'Sign Up', 'お申し込み', 'Зарегистрируйтесь'),
('navShop', 'Shopping', 'ショップについて', 'Магазин для'),
('navStaff', 'Staff', 'スタッフについて', 'Персонала'),
('navInquiry', 'Contact Us', 'お問い合わせ', 'Контакт'),
('navPrivacy', 'Privacy Policy', 'プライバシーポリシー', 'частные политика'),
('navSitemap', 'Sitemap', 'サイトマップ', 'Карта сайта'),
('navLinks', 'Links', 'リンク', 'Связи'),
('navBlogGodi', 'G.O.D.I.<br />Blog', 'G.O.D.I.<br />ブログ', 'G.O.D.I.<br />Блог'),
('navBlogTanya', '&nbsp;Tanya´s<br />&nbsp;Blog', ' &nbsp;ターニャ<br />&nbsp;のブログ', '&nbsp;Таня<br />&nbsp;Блог'),
('navWeather', 'Saipan<br />weather', 'サイパン<br />天気', 'Сайпан<br />погода'),
('navTop', 'Top', 'トップ', 'сверху'),
('askQuestions', 'If you don´t know,<br />then please ask us.', 'わからないことがあればお気軽にご相談ください。', 'Если вы не знаете,<br />то узнайте у нас.'),
('location', 'GLOBAL OCEAN DIVERS, INC.<br /> 
Saipan, Marianas Islands (USA)<br />
Telephone: 1-670-233-8157', 
'グローバルオーシャンダイバー株式会社<br />
サイパン、北マリアナ諸島 （アメリカ表示）<br />
電話番号： 1-670-233-8157', 
'МИРОВОГО ОКЕАНА ВОДОЛАЗОВ, ВКЛЮЧЕНЫ<br />
Сайпан, Марианские Острова (Америка)<br />
телефон: 1-670-233-8157'),
('address', 'Postal Address', '郵便のあて先', 'Почтовый Адрес'),
('phone', 'Office Telephone', '会社の電話', 'Офис Телефон'),
('copyright', 'Copyright &copy; Global Ocean Dive, Inc., All Rights Reserved', '著作権©世界の海の急降下社は、すべての権利を留保', 'Авторское право © Мирового Океана Водолазов, 	Все права защищены')
;

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
INSERT INTO homepage (elid, en, ja, ru) VALUES
('pageTitle', 'Global Ocean Divers, Inc.', 'ダイビングをサイパンの自然の中で楽しもう！ | GLOBAL OCEAN DIVERS', 'Мировым океаном водолазов'),
('keywords', 'Diving, Saipan, experience, licensing', 'ダイビング,サイパン,体験,ライセンス', 'Дайвинг, Сайпан, опыт, лицензирование'),
('hIntro', 'The kid in everyone of the adult divers to return to the rest of the field as possible, &quot;Saipan&quot;', '大人のダイバーの皆様が童心に返る事の出来るような憩いの場 &quot;サイパン&quot;', '	
Козленка в каждый из взрослых водолазов, чтобы вернуться в остальной части области, как это возможно, &quot;Сайпан&quot;'),
('pIntro', 'You Saipan was rushed to the fact that one? <br /> near Saipan is really, really is a beautiful nature. Transportation from Japan, well, can be used relatively Japanese, the country´s rich tropical mood to enjoy diving, please! ! <br /> also touched on the culture of Saipan would be greatly appreciated! <br /> dive shop, GODI so many of the instructors in English and Japanese (※ the U.S. territory of Saipan is the official language is English.) even better weak but OK! (Japanese people who can not even many Japanese.)  feel free to contact us, please.',
'みなさん、サイパンに実際に足を運ばれたことはありますか？<br />サイパン近郊には本当に、本当に綺麗な自然が広がっています。日本からは交通の便もよく、日本語も比較的使用でき、南国情緒豊かなこの国でダイビングを楽しんでください！！<br />同時にサイパンの文化にも触れていただければ幸いです！<br />ダイビングショップ、G.O.D.Iのインストラクターは日本人も多いので英語(※サイパンはアメリカ領なので公用語は英語です。)が苦手な方でも大丈夫！（日本人じゃなくても日本語できる人が多いです。）お気軽に お問い合わせくださいね。',
'Вы Сайпан был срочно доставлен тот факт, что один? <br /> возле Сайпан действительно, действительно является прекрасной природой. Транспортировка из Японии, хорошо, может быть использована относительно Японии, страны, богатые тропические настроение насладиться дайвингом, пожалуйста! ! <br /> также коснулся культуры Сайпан Буду весьма признателен! <br /> погружение магазин, GODI так много инструкторов Английский и японский (※ территории США Сайпан является официальным языком является Английский.) еще более слабый, но ОК! (Японский народ, который не может даже многие японцы.) свяжитесь с нами, пожалуйста.'),
('btOWstory', 'Saipan diving license in (open water) the whole story', 
'サイパンでのダイビングライセンス取得(オープン・ウォーター)体験記　詳しくはこちらから', 
'Сайпан дайвинг в лицензии (в открытой воде) вся история'),
('btPhotos', 
'photo library', 
'フォトライブラリー', 
'фото библиотека'),
('hPhotos', 'Tanya´s diary from Saipan Photo Library', 
'ターニャのサイパン日記より　フォトライブラリー', 'Таня в дневнике от Сайпан фото библиотека'),
('pPhotos', 'The divers dive shop, near Saipan Tanya has taken his life at sea, please!', 
'当ダイビングショップのダイバー、ターニャ自ら撮影したサイパン近郊にいる海洋生物を見てみてください！', 'Аквалангистов погрузиться магазин, неподалеку Сайпан Таня приняла его жизни на море, пожалуйста!'),
('hSenior', 
'Advice for diving seniors', 'シニアダイビングのススメ', 
'Советы старших Дайвинг'),
('pSenior', 'Diving In Japan, young people are often seen as an epidemic of the senior generation in Western culture has become. <br /> neutral buoyancy (floating weightless not even close to the depressed state), even if well utilized, the instructor guides the water´s not even a dream. <br /> <br /> Global Ocean Divers in the middle-aged people have that dream and we shared a dream for a variety of diving courses will be available. <br /> Incidentally, a senior instructor in charge of diving was born in 1941!', 
'日本ではダイビングは若者の流行として捉えられがちですが、欧米ではシニア世代の文化として定着しております。<br />中性浮力（浮きも沈みもしない無重力に近い状態）をうまく活用さえすれば、水中ガイド・インストラクターだって夢じゃありません。<br />						  <br />Global Ocean Diversではそんな夢を持つ中高年の方と夢を共有させていただく為にさまざまなダイビング・コースを用意させていただいております。<br />ちなみにシニアダイビングの担当インストラクターは1941年生まれです！', 
'Дайвинг в Японии, молодые люди нередко рассматривается как эпидемия старшего поколения в западной культуре стало. <br /> нейтральной плавучестью (плавающая невесомую даже не близко к депрессии состояние), даже если так использован, инструктор направляет воду даже не мечта. <br /> <br /> Мирового океана Divers в среднем возрасте люди, которые мечтают, и мы поделились мечтой для различных дайвинг курсы будут доступны. <br /> Кстати, старший инструктор, отвечающий за дайвинг родился в 1941 году!'),
('btSenior', 
'Diving for senior', 
'シニアダイビングについて', 
'Дайвинг для старших'),
('hEnd', 
'Diving into the nature of their sport', 'ダイビングは自然を相手にしたスポーツです', 
'Дайвинг в характере своего вида спорта'),
('pEnd', 'Saipan full of wonderful natural environment of the sea, diving locations and is recommended to enjoy. (<a href="report/report1/report5.html">diving spots near Saipan introduced here. </a>) each to young and old can enjoy, and I learned more depth to the heart is deprived of . However, the nature around you because they have to live a different land in the water and the environment must first be familiar. We dive in educational institutions 70 percent of the world´s PADI diver is a member of the hijack the curriculum, such as various licensing and training are divers, so the first page you see first: Please try.', 
'サイパンの海は自然に溢れた素晴らしい環境で、ダイビングを楽しむのにオススメのロケーションです。(<a href="report/report1/report5.html">サイパン近郊のダイビングスポットの紹介はこちら。</a>)老若男女それぞれに楽しめますし、知れば知るほどその奥深さに心奪われます。ただ、自然を相手にするが故に日頃皆さんが生活する陸上とは環境の違う水中にまず慣れていただく必要があります。私たちはダイビング教育機関の中で世界の7割のダイバーが所属しているＰＡＤＩのカリキュラムにのっとり、各種ライセンス取得などダイバー養成を行っておりますので、初めての方はまず次のページを参照してみてください。', 
'Сайпан полна прекрасных природной среды на море, дайвинг мест и рекомендуется пользоваться. (<a href="report/report1/report5.html">дайвинг пятна возле Сайпан представил здесь.</a>) каждая для молодых и старых можно пользоваться, и я больше узнал глубины сердца, лишенного . Тем не менее, природа вокруг вас, поскольку они живут разные земли в воде и окружающей среды, должны сначала быть знакомы. Мы погружение в учебных заведениях 70 процентов мирового PADI дайвер входит в учебный план угона, такие как различные лицензирование и обучение водолазов, поэтому на первой странице Вы увидите первый: Повторите попытку.'),
('btExperience', 'To the first page', '初めての方用ページ', 'На первую страницу'),
('hNews', 'G.O.D.I. News from Saipan', 'G.O.D.I.ニュースサイパンから', 
'G.O.D.I. Новости из Сайпан'),
('pGODInews', 
'<p>Update 2008/5/10 <br /> Northwest airlines between Narita (Saipan information) the weather in today´s Saipan is good for diving</p>
<p>Update 2008/5/9 <br />Electricity rates has doubled for the people of Saipan. It is hard to economize on electricity.</p> 
<p>Update 2008/5/8 <br /> Japan Airlines charter flight to Saipan, could benefit tourism more.</p>', 
'<p>更新2008/5/10 <br />成田ダイビングを（サイパン情報）今日のサイパン良いことで、天候の間ノースウェスト航空会社</p>
<p>更新2008/5/9 <br />電気料金サイパンの人々に倍増しています。電気を節約するのは難しい。</p>
<p>更新2008/5/8 <br />サイパンに日本航空チャーター便は、給付可能性がある観光詳細。</p>', 
		'<p> обновление 2008/5/10 <br /> Северо-Западные авиалинии между Нарита (Сайпан информации) погода в сегодняшнем Сайпан хорош для дайвинга </p>
<p> обновление 2008/5/9 <br /> тарифов на электроэнергию в два раза для населения Сайпан. Это трудно экономить на электроэнергии. </p>
<p> обновление 2008/5/8 <br /> Japan Airlines чартерного рейса на Сайпан, будет способствовать более туризма. </p>');


SET NAMES 'utf8';
--
-- Table structure for table 'location'
