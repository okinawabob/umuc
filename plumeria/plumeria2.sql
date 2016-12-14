DROP DATABASE islan35_plumeria;
SET NAMES 'utf8';
CREATE DATABASE islan35_plumeria DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE islan35_plumeria;
SET NAMES 'utf8';
--
-- Drop All Tables 
DROP TABLE IF EXISTS languages;
DROP TABLE IF EXISTS homepage;
DROP TABLE IF EXISTS rates;
--
-- Table structure for table 'languages'
CREATE TABLE languages (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(8) default NULL,
  en varchar(30) default NULL,
  ja varchar(30) default NULL,
  ko varchar(30) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;

SET NAMES 'utf8';
--
-- Create data for table 'languages'
INSERT INTO languages (id, elid, en, ja, ko) VALUES
(1, 'SL', 'Select Language', '言語を選ぶ', '언어 선택'),
(2, 'EN', 'English', '英語', '영어'),
(3, 'JA', 'Japanese', '日本語', '일본어'),
(4, 'KO', 'Korean', '韓国語', '한국어');
--
SET NAMES 'utf8';
--
-- Table structure for table 'homepage'
CREATE TABLE homepage (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  ko varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Create data for table 'homepage'
INSERT INTO homepage (elid, en, ja, ko) VALUES('keywords', 'plumeria, language, institute, Saipan, CNMI, training, classes, english, korean, japanese, hiroko, yasukata, mariana, marianas', 'プルメリア, 言語, 機関, サイパン, 北マリアナ諸島, 英語, 韓国語, 日本語, 安酸弘子, 履歴書', '언어, 학회,사이판, 북 마리 아나 제도, 한국의, 일본어, 영어');
INSERT INTO homepage (elid, en, ja, ko) VALUES('langCSS', 'h1, h2 {font-family: Verdana, Arial, Helvetica, sans-serif}', 'h1, h2, p {font-family: MS PGothic, Osaka, Arial Unicode MS, arial, helvetica, sans-serif}', 'h1, h2, p {font-family: Gulim Che, AppleGothic, Seoul, Arial Unicode MS, arial, helvetica, sans-serif}');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pageTitle', 'Plumeria Language Institute, Saipan, CNMI', 'プルメリア, 言語, 機関, サイパン, 北マリアナ諸島', '언어, 학회,사이판, 북 마리 아나 제도');
INSERT INTO homepage (elid, en, ja, ko) VALUES('hCompany', 'Plumeria Language Institute', 'プルメリア, 言語, 機関', '의꽃 학회 사이판');
INSERT INTO homepage (elid, en, ja, ko) VALUES('hLocation', 'Room 602, Marianas Business Plaza<br />Susupe, Saipan, CNMI', '客室602、マリアナビジネスプラザ<br />ススピ、サイパン、北マリアナ諸島', '객실 602, 마리 아나 비즈니스 플라자<br />susupe, 사이판, 북마리아나 제도');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pSlogan', 'Let your language skills blossom. We deliver customized training in Japanese, English, and Korean languages.', 'あなたの語学力の花をしましょう。我々は日本語、英語、韓国語のトレーニングをカスタマイズを提供します。', '언어 능력의 꽃을 보자. 저희는 일본어, 영어, 한국어 언어 훈련을 맞춤 제공합니다.');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pSensei', '<a href="resume/index.html">Hiroko Yasukata,</a><small>Language Instructor</small>', '<a href="resume/index_ja.html">安酸弘子の履歴書 </a><small>言語教授</small>', '<a href="resume/index.html">히로코 履歴書 </a><small>언어 교수</small>');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pCall', 'Please call for more information:', '詳細についてはお問い合わせください：', '자세한 내용은 전화주세요 :');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pEmail', 'Please email for more information:', '詳細については、ご電子メール：', '자세한 내용을 보려면 이메일 :');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pAnnouncement', 'Announcement: Please join up for the evening of July 1 at 7:OO.', 'のお知らせ：7月1日午後7時まで参加してください：オブジェクト指向です。', '발표 : 7 월 1 일 저녁 7시에 참가하시기 바랍니다 : 각종하십시오.');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pLocation', 'We are easy to find in room 602 on the sixth floor of the <a href="http://marianasbusinessplaza.com/index.html">Marianas Business Plaza</a>. We have a classroom that can accommodate up to ten students, and can also deliver classes at the client site. Please call for an appointment to discuss your language training needs. We provide professional training in the languages Japanese, Korean, and English.</p> <p>Classes are forming every month at various skill levels. New classes can be created anytime for groups of four or more students. Personal instruction is also available at higher rates. <a href="rates.html">Click here to view rates.</a>', '我々は、マリアナビジネスプラザの6階の部屋602で見つけることは簡単です。\私たちは、学生を10まで収容できる教室があり、また、クライアントのサイトで授業を提供することができます。予約はお問い合わせくださいお客様の言語訓練のニーズを議論する。我々は、言語の専門的な訓練日本語、韓国語、英語を提供します。</p>	<p>クラスは毎月様々なスキルレベルで形成している。新しいクラスは、いつでも4人以上のグループのために作成することができます。個人指導も可能高い料金です。<a href="rates.html">ここをクリックし料金を表示します。</a>', '우리는 마리 아나 비즈니스 플라자 6 층에 객실 602에서 쉽게 찾을 수 있습니다. 우리는 학생 10 개까지 수용할 수있는 교실을 가지고 또한 클라이언트 사이트에서 클래스를 제공할 수 있습니다. 약속을위한 전화주세요 당신의 언어 훈련 요구 사항을 논의하기 위해. 우리는 언어의 전문 교육 일본어, 한국어, 그리고 영어를 제공합니다.</p> <p> 수업은 매달 다양한 기술 수준에서 형성됩니다. 새로운 수업은 언제든지 4 명 이상의 학생 단체 만들 수 있습니다. 개인지도도 가능합니다 높은 가격이다. <a href="rates.html">여기를 클릭 요금을 볼 수 있습니다.</a>');
INSERT INTO homepage (elid, en, ja, ko) VALUES('pRainbow', '<em>A subsidiary of Rainbow Corporation, Saipan, CNMI</em>', 'レインボー株式会社、サイパンの子会社、 北マリアナ諸島', '레인보우 공사, 사이판, 북부의 마리 아나 제도의 자회사');
SET NAMES 'utf8';

CREATE TABLE rates (
  id int(10) unsigned NOT NULL auto_increment,
  elid varchar(100) NOT NULL,
  en varchar(1000) default NULL,
  ja varchar(1000) default NULL,
  ko varchar(1000) default NULL,
  PRIMARY KEY  (id)
) TYPE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;
SET NAMES 'utf8';
--
-- Create data for table 'rates'

INSERT INTO rates (elid, en, ja, ko) VALUES('pageTitle', 'Plumeria Language Institute :: Instruction Rates', 'プルメリア 言語 機関 ：： 命令料金', '언어 학회 사이판 :: 인스트럭션 요금');
INSERT INTO rates (elid, en, ja, ko) VALUES('pDeliver', 'We deliver customized training in Japanese, English, and Korean languages.', '我々は日本語、英語、韓国語のトレーニングをカスタマイズを提供します。', '저희는 일본어, 영어, 한국어 언어 훈련을 맞춤 제공합니다.');
INSERT INTO rates (elid, en, ja, ko) VALUES('nStudents', 'Number of Students', '生徒数', '학생 번호');
INSERT INTO rates (elid, en, ja, ko) VALUES('hourFee', 'Hourly Fee', '時間別料金', '시간별 요금');
INSERT INTO rates (elid, en, ja, ko) VALUES('monthFee8', 'Monthly Fee 8 times per month', '毎月毎月料金を8回', '<a href="resume/index.html">히로코 履歴書 </a><small>언어 교수</small>');
INSERT INTO rates (elid, en, ja, ko) VALUES('monthFee12', 'Monthly Fee 12 times per month', '毎月毎月料金を12回', '월간 매월 요금 12 회');
INSERT INTO rates (elid, en, ja, ko) VALUES('students', 'students', '学生', '학생');
INSERT INTO rates (elid, en, ja, ko) VALUES('student', 'student', '学生', '학생');
INSERT INTO rates (elid, en, ja, ko) VALUES('priceChange', 'Monthly prices are based on four weeks in one month and are subject to change depending on the month and schedule.', '月額料金は4週間で1ヶ月に基づいていると月とスケジュールに応じて変更する場合があります。', '월별 가격은 4 주간에 1 개월에 본사를두고 있으며 매월 및 일정에 따라 변경될 수 있습니다.');
SET NAMES 'utf8';