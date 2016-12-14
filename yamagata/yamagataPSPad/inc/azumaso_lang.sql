SET NAMES 'utf8';
--
-- Table structure for table 'homepage'
--
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
-- Creating data for table 'homepage'
--
INSERT INTO languages (elid, en, ja, de) VALUES
('ln', 'Languages', '言語', 'Sprache'),
('en', 'English', '英語', 'Englisch'),
('ja', 'Japanese', '日本語', 'Japanisch'),
('de', 'German', 'ドイツ語', 'Deutsch')
;
