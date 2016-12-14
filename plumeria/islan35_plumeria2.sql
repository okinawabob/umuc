-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2010 at 07:36 AM
-- Server version: 5.0.90
-- PHP Version: 5.2.9



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `islan35_plumeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `homepage`
--

CREATE TABLE IF NOT EXISTS `homepage` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `elid` varchar(100) NOT NULL,
  `en` varchar(1000) default NULL,
  `ja` varchar(1000) default NULL,
  `ko` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=InnoDB ;

--
-- Dumping data for table `homepage`
--

INSERT INTO `homepage` (`id`, `elid`, `en`, `ja`, `ko`) VALUES
(1, 'keywords', 'plumeria, language, institute, Saipan, CNMI, training, classes, english, korean, japanese, hiroko, yasukata, mariana, marianas', 'プルメリア, ランゲージ, インスティチュート, サイパン, 北マリアナ諸島, 英語, 韓国語, 日本語, 安酸弘子, 履歴書', '언어, 학원,사이판, 북 마리 아나 제도, 한국어, 일본어, 영어'),
(2, 'langCSS', 'h1, h2 {font-family: verdana, arial, helvetica, sans-serif}', 'h1, h2, p {font-family: MS PGothic, Osaka, Arial Unicode MS, arial, helvetica, sans-serif; }\r\n', 'h1, h2, p {font-family: Gulim Che, AppleGothic, Seoul, Arial Unicode MS, arial, helvetica, sans-serif;}\r\np { font-size: larger;}'),
(3, 'pageTitle', 'Plumeria Language Institute, Saipan, CNMI', '北マリアナ諸島、サイパン、プルメリア　ランゲージ　インスティチュート', '북 마리아나 플메리아 언어 학원'),
(4, 'hCompany', 'Plumeria Language Institute', 'プルメリア　ランゲージ　インスティチュート', ' 프루메리아 언어학원'),
(5, 'hLocation', 'Room 602, Marianas Business Plaza<br />Susupe, Saipan, CNMI', '北マリアナ諸島　サイパン　ススピ<br />マリアナビジネスプラザ　602号室', '북마리아나 사이판 수수피 <br />마리아나 비즈니스 플라자 602호'),
(6, 'pSlogan', 'Let your language skills blossom. We deliver customized training in Japanese, English, and Korean languages.', 'あなたの語学能力を開花させて下さい。当校にはそれぞれの学習者のニーズに合った日本語、英語、韓国語のクラスがあります。', '당신의 언어 능력을 개발하세요. 저희 학원에는 각학생에게\r\n 알맛는일본어, 영어, 한국어 클라스가\r\n있습니다.'),
(7, 'pSensei', '<a href="resume/index.html">Hiroko Yasukata,</a> <small>Language Instructor</small>', '<a href="resume/index_ja.html">講師　安酸弘子の履歴書 </a>', '<a href="resume/index.html"><small>언어 강사\r\n</small>야스까다 히로꼬의 履歴書 </a>'),
(8, 'pCall', 'Please call for more information:', '詳細については、お電話でお問い合わせ下さい。', '자세한 내용은 전화로\r\n문의하세요 :'),
(9, 'pEmail', 'Please email for more information:', '電子メール　アドレスはこちらです。', '이메일 아드레스는 이 쪽입니다.'),
(10, 'pAnnouncement', '<b>Announcements: </b>Please join us for a recital the evening of July 1 at 7:OO. <br />Try learning Japanese this summer. New classes can be formed each week dependent on interest and availability.', '<b>お知らせ：</b>7月1日午後7時から当校で小さなパーティーを開催いたします。<br />パーティーでは日本語でのスピーチ、ロールプレイ、ゲームなどを行います。<br />また、この夏の期間に日本語を始めたい人のために５週間（３０時間）の集中講座を開いています。関心のある方はご連絡下さい。', '<b>발표 : </b>7 월 1 일 저녁 7시에 참가하시기 바랍니다 : 각종하십시오.<br />일본어를 배우는 이번 여름에보십시오. 새로운 클래스는 매주 관심과 예약 상황에 따라 형성 할 수 있습니다.'),
(11, 'pLocation', 'We are easy to find in room 602 on the sixth floor of the <a href="http://marianasbusinessplaza.com/index.html">Marianas Business Plaza</a>. We have a classroom that can accommodate up to twelve students, and can also deliver classes at the client site. Please call for an appointment to discuss your language training needs. We provide professional training in the languages Japanese, Korean, and English.</p> <p>Classes are forming every month at various skill levels. New classes can be created anytime for groups of four or more students. Personal instruction is also available at higher rates. <a href="rates.php?lang=en">Click here to view rates.</a>', 'プルメリア　ランゲージ　インスティチュートは、マリアナビジネスプラザの6階、602号室にあります。当校の教室は学生を1２人まで収容できますが、ご希望があれば出張講義も可能です。講義についてのご相談はお電話でアポイントメントをとって、直接こちらにお越し下さい。私たちは、日本語、韓国語、英語の専門的なトレーニングを行っています。</p>	<p>クラスは毎月、語学のレベルによって形成されます。新しいクラスは、4人以上であれば、原則としていつでも作ることができます。個人教授も別料金で行っています。<a href="rates.php?lang=ja">授業料はここをクリックして下さい。</a>', '우리는 마리 아나 비즈니스 플라자 6 층에 객실 602에서 쉽게 찾을 수 있습니다. 우리는 학생 10 개까지 수용할 수있는 교실을 가지고 또한 클라이언트 사이트에서 클래스를 제공할 수 있습니다. 약속을위한 전화주세요 당신의 언어 훈련 요구 사항을 논의하기 위해. 우리는 언어의 전문 교육 일본어, 한국어, 그리고 영어를 제공합니다.</p> <p> 수업은 매달 다양한 기술 수준에서 형성됩니다. 새로운 수업은 언제든지 4 명 이상의 학생 단체 만들 수 있습니다. 개인지도도 가능합니다 높은 가격이다. <a href="rates.php?lang=ko">여기를 클릭 요금을 볼 수 있습니다.</a>'),
(12, 'pRainbow', '<em>A subsidiary of Rainbow Corporation, Saipan, CNMI</em>', 'レインボー株式会社、サイパンの子会社、 北マリアナ諸島', '레인보우 공사, 사이판, 북부의 마리 아나 제도의 자회사');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `elid` varchar(8) default NULL,
  `en` varchar(30) default NULL,
  `ja` varchar(30) default NULL,
  `ko` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=InnoDB ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `elid`, `en`, `ja`, `ko`) VALUES
(1, 'SL', 'Select Language', '言語を選ぶ', '언어 선택'),
(2, 'EN', 'English', '英語', '영어'),
(3, 'JA', 'Japanese', '日本語', '일본어'),
(4, 'KO', 'Korean', '韓国語', '한국어');

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `elid` varchar(100) NOT NULL,
  `en` varchar(1000) default NULL,
  `ja` varchar(1000) default NULL,
  `ko` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=InnoDB ;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `elid`, `en`, `ja`, `ko`) VALUES
(1, 'pageTitle', 'Plumeria Language Institute :: Instruction Rates', 'プルメリア 言語 機関 ：： 命令料金', '언어 학회 사이판 :: 인스트럭션 요금'),
(2, 'pDeliver', 'We deliver customized training in Japanese, English, and Korean languages.', '我々は日本語、英語、韓国語のトレーニングをカスタマイズを提供します。', '저희는 일본어, 영어, 한국어 언어 훈련을 맞춤 제공합니다.'),
(3, 'nStudents', 'Number of Students', '生徒数', '학생 번호'),
(4, 'hourFee', 'Hourly Fee', '時間別料金', '시간별 요금'),
(5, 'monthFee8', 'Monthly Fee 8 times per month', '毎月毎月料金を8回', '월간 매월 요금 8 회ll>'),
(6, 'monthFee12', 'Monthly Fee 12 times per month', '毎月毎月料金を12回', '월간 매월 요금 12 회'),
(7, 'students', 'students', '学生', '학생'),
(8, 'student', 'student', '学生', '학생'),
(9, 'priceChange', 'Monthly prices are based on four weeks in one month and are subject to change depending on the month and schedule.', '月額料金は4週間で1ヶ月に基づいていると月とスケジュールに応じて変更する場合があります。', '월별 가격은 4 주간에 1 개월에 본사를두고 있으며 매월 및 일정에 따라 변경될 수 있습니다.'),
(10, 'language', 'en', 'ja', 'ko');
