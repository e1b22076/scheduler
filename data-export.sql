-- H2 2.2.224;
;             
CREATE USER IF NOT EXISTS "SA" SALT 'c7b67b0dbfe38e9a' HASH '637e611311cbd57d6870c3e3fb8ccf463a91db9e9bff5192522ed5151c796280' ADMIN;         
CREATE MEMORY TABLE "PUBLIC"."SCHEDULE"(
    "ID" CHARACTER VARYING NOT NULL,
    "DEPARTMENT" CHARACTER VARYING NOT NULL,
    "CLASSNAME" CHARACTER VARYING NOT NULL,
    "ATTRIBUTE" CHARACTER VARYING NOT NULL,
    "CONTINUOUS" BOOLEAN NOT NULL,
    "CREDIT" INTEGER NOT NULL,
    "GRADE" INTEGER NOT NULL,
    "TIMING" CHARACTER VARYING NOT NULL,
    "DAYOFWEEK" CHARACTER VARYING NOT NULL,
    "DAYTIME" INTEGER NOT NULL,
    "OTHERCLASS" CHARACTER VARYING NOT NULL,
    "SYLLABUSURL" CHARACTER VARYING NOT NULL
);             
ALTER TABLE "PUBLIC"."SCHEDULE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_5" PRIMARY KEY("ID");     
-- 497 +/- SELECT COUNT(*) FROM PUBLIC.SCHEDULE;              
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B0B002A0', 'Humanities', U&'\54f2\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B002A0&value(crclumcd)=10200ZZZ'),
('B0B002B0', 'Humanities', U&'\54f2\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B002B0&value(crclumcd)=10200ZZZ'),
('B0C004A0', 'Humanities', U&'\793e\4f1a\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C004A0&value(crclumcd)=10200ZZZ'),
('B0C004B0', 'Humanities', U&'\793e\4f1a\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C004B0&value(crclumcd)=10200ZZZ'),
('B0B005A0', 'Humanities', U&'\60c5\5831\793e\4f1a\8ad6', 'CSchoice', FALSE, 2, 1, 'B', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B005A0&value(crclumcd)=10200ZZZ'),
('B0B005B0', 'Humanities', U&'\60c5\5831\793e\4f1a\8ad6', 'CSchoice', FALSE, 2, 1, 'B', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B005B0&value(crclumcd)=10200ZZZ'),
('B0C007A0', 'Humanities', U&'\502b\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C007A0&value(crclumcd)=10200ZZZ'),
('B0C007B0', 'Humanities', U&'\502b\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C007B0&value(crclumcd)=10200ZZZ'),
('B0C007D0', 'Humanities', U&'\502b\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Tue', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C007D0&value(crclumcd)=10200ZZZ'),
('B0C007C0', 'Humanities', U&'\502b\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C007C0&value(crclumcd)=10200ZZZ'),
('B0B010A0', 'Humanities', U&'\5fdc\7528\502b\7406\5b66', 'CSchoice', FALSE, 2, 1, 'B', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B010A0&value(crclumcd)=10200ZZZ'),
('B0B010B0', 'Humanities', U&'\5fdc\7528\502b\7406\5b66', 'CSchoice', FALSE, 2, 1, 'B', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B010B0&value(crclumcd)=10200ZZZ'),
('B0B010C0', 'Humanities', U&'\5fdc\7528\502b\7406\5b66', 'CSchoice', FALSE, 2, 1, 'B', 'Wed', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B010C0&value(crclumcd)=10200ZZZ'),
('B0C011A0', 'Humanities', U&'\65e5\672c\306e\6b74\53f2', 'normal', FALSE, 2, 1, 'A', 'Tue', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C011A0&value(crclumcd)=10200ZZZ'),
('B0C011B0', 'Humanities', U&'\65e5\672c\306e\6b74\53f2', 'normal', FALSE, 2, 1, 'A', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C011B0&value(crclumcd)=10200ZZZ'),
('B0C011C0', 'Humanities', U&'\65e5\672c\306e\6b74\53f2', 'normal', FALSE, 2, 1, 'A', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C011C0&value(crclumcd)=10200ZZZ'),
('B0B012A0', 'Humanities', U&'\4eba\985e\306e\6b74\53f2', 'CSchoice', FALSE, 2, 1, 'B', 'Tue', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B012A0&value(crclumcd)=10200ZZZ');       
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B0B012B0', 'Humanities', U&'\4eba\985e\306e\6b74\53f2', 'CSchoice', FALSE, 2, 1, 'B', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B012B0&value(crclumcd)=10200ZZZ'),
('B0B012C0', 'Humanities', U&'\4eba\985e\306e\6b74\53f2', 'CSchoice', FALSE, 2, 1, 'B', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B012C0&value(crclumcd)=10200ZZZ'),
('B0B014C0', 'Humanities', U&'\6587\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'A', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B014C0&value(crclumcd)=10200ZZZ'),
('B0B014A0', 'Humanities', U&'\6587\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B014A0&value(crclumcd)=10200ZZZ'),
('B0B014B0', 'Humanities', U&'\6587\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B014B0&value(crclumcd)=10200ZZZ'),
('B0B014D0', 'Humanities', U&'\6587\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'B', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B014D0&value(crclumcd)=10200ZZZ'),
('B0C015B0', 'Humanities', U&'\89b3\308b\6587\5b66', 'normal', FALSE, 2, 1, 'B', 'Wed', 1, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C015B0&value(crclumcd)=10200ZZZ'),
('B0C015A0', 'Humanities', U&'\89b3\308b\6587\5b66', 'normal', FALSE, 2, 1, 'B', 'Fri', 1, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C015A0&value(crclumcd)=10200ZZZ'),
('B0C015C0', 'Humanities', U&'\89b3\308b\6587\5b66', 'normal', FALSE, 2, 1, 'B', 'Fri', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C015C0&value(crclumcd)=10200ZZZ'),
('B0C016A0', 'Humanities', U&'\8a00\8a9e\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 1, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C016A0&value(crclumcd)=10200ZZZ'),
('B0C016B0', 'Humanities', U&'\8a00\8a9e\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C016B0&value(crclumcd)=10200ZZZ'),
('B0C016C0', 'Humanities', U&'\8a00\8a9e\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Tue', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C016C0&value(crclumcd)=10200ZZZ'),
('B0C016D0', 'Humanities', U&'\8a00\8a9e\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C016D0&value(crclumcd)=10200ZZZ'),
('B0C017A0', 'Humanities', U&'\65e5\672c\56fd\61b2\6cd5', 'normal', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C017A0&value(crclumcd)=10200ZZZ'),
('B0C017B0', 'Humanities', U&'\65e5\672c\56fd\61b2\6cd5', 'normal', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C017B0&value(crclumcd)=10200ZZZ'),
('B0C018A0', 'Humanities', U&'\6cd5\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C018A0&value(crclumcd)=10200ZZZ'),
('B0C018B0', 'Humanities', U&'\6cd5\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C018B0&value(crclumcd)=10200ZZZ');              
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B0B019A0', 'Humanities', U&'\60c5\5831\6cd5\5b66', 'CSchoice', FALSE, 2, 3, 'A', 'Wed', 1, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B019A0&value(crclumcd)=10200ZZZ'),
('B0B019B0', 'Humanities', U&'\60c5\5831\6cd5\5b66', 'CSchoice', FALSE, 2, 3, 'A', 'Wed', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B019B0&value(crclumcd)=10200ZZZ'),
('B0B020A0', 'Humanities', U&'\7d4c\6e08\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B020A0&value(crclumcd)=10200ZZZ'),
('B0B020B0', 'Humanities', U&'\7d4c\6e08\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B020B0&value(crclumcd)=10200ZZZ'),
('B0B020C0', 'Humanities', U&'\7d4c\6e08\5b66\57fa\790e', 'CSchoice', FALSE, 2, 1, 'B', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0B020C0&value(crclumcd)=10200ZZZ'),
('B0C021A0', 'Humanities', U&'\73fe\4ee3\7d4c\6e08\8ad6', 'normal', FALSE, 2, 1, 'B', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C021A0&value(crclumcd)=10200ZZZ'),
('B0C022A0', 'Humanities', U&'\5fc3\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C022A0&value(crclumcd)=10200ZZZ'),
('B0C022B0', 'Humanities', U&'\5fc3\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C022B0&value(crclumcd)=10200ZZZ'),
('B0C022C0', 'Humanities', U&'\5fc3\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C022C0&value(crclumcd)=10200ZZZ'),
('B0C022D0', 'Humanities', U&'\5fc3\7406\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C022D0&value(crclumcd)=10200ZZZ'),
('B0C023A0', 'Humanities', U&'\4eba\9593\767a\9054\3068\4eba\6a29', 'normal', FALSE, 2, 2, 'B', 'Fri', 5, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B0C023A0&value(crclumcd)=10200ZZZ'),
('B1C001A0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)a', 'normal', FALSE, 1, 1, 'A', 'Mon', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C001A0&value(crclumcd)=10200ZZZ'),
('B1C001D0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)a', 'normal', FALSE, 1, 1, 'A', 'Mon', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C001D0&value(crclumcd)=10200ZZZ'),
('B1C001G0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)a', 'normal', FALSE, 1, 1, 'A', 'Thu', 1, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C001G0&value(crclumcd)=10200ZZZ'),
('B1C001K0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)a', 'normal', FALSE, 1, 1, 'A', 'Thu', 2, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C001K0&value(crclumcd)=10200ZZZ'),
('B1C002A0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)b', 'normal', FALSE, 1, 1, 'B', 'Mon', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C002A0&value(crclumcd)=10200ZZZ'),
('B1C002D0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)b', 'normal', FALSE, 1, 1, 'B', 'Mon', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C002D0&value(crclumcd)=10200ZZZ');             
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B1C002G0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)b', 'normal', FALSE, 1, 1, 'B', 'Thu', 1, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C002G0&value(crclumcd)=10200ZZZ'),
('B1C002K0', 'English', U&'\82f1\8a9e\8868\73fe(basic1)b', 'normal', FALSE, 1, 1, 'B', 'Thu', 2, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C002K0&value(crclumcd)=10200ZZZ'),
('B1C003A0', 'English', U&'\82f1\8a9e\306e\8a9e\6cd5', 'normal', FALSE, 2, 3, 'A', 'Mon', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C003A0&value(crclumcd)=10200ZZZ'),
('B1C003D0', 'English', U&'\82f1\8a9e\306e\8a9e\6cd5', 'normal', FALSE, 2, 3, 'A', 'Tue', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C003D0&value(crclumcd)=10200ZZZ'),
('B1C003J0', 'English', U&'\82f1\8a9e\306e\8a9e\6cd5', 'normal', FALSE, 2, 3, 'A', 'Wed', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C003J0&value(crclumcd)=10200ZZZ'),
('B1C003L0', 'English', U&'\82f1\8a9e\306e\8a9e\6cd5', 'normal', FALSE, 2, 3, 'A', 'Wed', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C003L0&value(crclumcd)=10200ZZZ'),
('B1C003G0', 'English', U&'\82f1\8a9e\306e\8a9e\6cd5', 'normal', FALSE, 2, 3, 'A', 'Mon', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C003G0&value(crclumcd)=10200ZZZ'),
('B1C003I0', 'English', U&'\82f1\8a9e\306e\8a9e\6cd5', 'normal', FALSE, 2, 3, 'B', 'Thu', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C003I0&value(crclumcd)=10200ZZZ'),
('B1C004A0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160a', 'normal', FALSE, 1, 1, 'A', 'Mon', 3, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C004A0&value(crclumcd)=10200ZZZ'),
('B1C004E0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160a', 'normal', FALSE, 1, 1, 'A', 'Mon', 4, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C004E0&value(crclumcd)=10200ZZZ'),
('B1C004I0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160a', 'normal', FALSE, 1, 1, 'A', 'Thu', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C004I0&value(crclumcd)=10200ZZZ'),
('B1C004M0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160a', 'normal', FALSE, 1, 1, 'A', 'Thu', 4, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C004M0&value(crclumcd)=10200ZZZ'),
('B1C005A0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160b', 'normal', FALSE, 1, 1, 'B', 'Mon', 3, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C005A0&value(crclumcd)=10200ZZZ'),
('B1C005E0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160b', 'normal', FALSE, 1, 1, 'B', 'Mon', 4, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C005E0&value(crclumcd)=10200ZZZ'),
('B1C005I0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160b', 'normal', FALSE, 1, 1, 'B', 'Thu', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C005I0&value(crclumcd)=10200ZZZ'),
('B1C005M0', 'English', U&'\53e3\8a9e\82f1\8a9e\2160b', 'normal', FALSE, 1, 1, 'B', 'Thu', 4, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C005M0&value(crclumcd)=10200ZZZ'),
('B1C006A0', 'English', U&'\82f1\8a9e\306b\3088\308b\60c5\5831\6280\8853\2161', 'normal', FALSE, 2, 3, 'A', 'Mon', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C006A0&value(crclumcd)=10200ZZZ');       
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B1C006B0', 'English', U&'\82f1\8a9e\306b\3088\308b\60c5\5831\6280\8853\2161', 'normal', FALSE, 2, 3, 'A', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C006B0&value(crclumcd)=10200ZZZ'),
('B1C006D0', 'English', U&'\82f1\8a9e\306b\3088\308b\60c5\5831\6280\8853\2161', 'normal', FALSE, 2, 3, 'A', 'Thu', 2, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C006D0&value(crclumcd)=10200ZZZ'),
('B1C006C0', 'English', U&'\82f1\8a9e\306b\3088\308b\60c5\5831\6280\8853\2161', 'normal', FALSE, 2, 3, 'A', 'Thu', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C006C0&value(crclumcd)=10200ZZZ'),
('B1C006F0', 'English', U&'\82f1\8a9e\306b\3088\308b\60c5\5831\6280\8853\2161', 'normal', FALSE, 2, 3, 'B', 'Thu', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C006C0&value(crclumcd)=10200ZZZ'),
('B1C007A0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)a', 'normal', FALSE, 1, 2, 'A', 'Tue', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C007A0&value(crclumcd)=10200ZZZ'),
('B1C007C0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)a', 'normal', FALSE, 1, 2, 'A', 'Tue', 5, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C007C0&value(crclumcd)=10200ZZZ'),
('B1C007E0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)a', 'normal', FALSE, 1, 2, 'A', 'Fri', 3, '1,1,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C007E0&value(crclumcd)=10200ZZZ'),
('B1C007G0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)a', 'normal', FALSE, 1, 2, 'A', 'Fri', 4, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C007G0&value(crclumcd)=10200ZZZ'),
('B1C008A0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)b', 'normal', FALSE, 1, 2, 'B', 'Tue', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C008A0&value(crclumcd)=10200ZZZ'),
('B1C008C0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)b', 'normal', FALSE, 1, 2, 'B', 'Tue', 5, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C008C0&value(crclumcd)=10200ZZZ'),
('B1C008E0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)b', 'normal', FALSE, 1, 2, 'B', 'Fri', 3, '1,1,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C008E0&value(crclumcd)=10200ZZZ'),
('B1C008G0', 'English', U&'\82f1\8a9e\8868\73fe(basic2)b', 'normal', FALSE, 1, 2, 'B', 'Fri', 4, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C008G0&value(crclumcd)=10200ZZZ'),
('B1C009A0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161a', 'normal', FALSE, 1, 2, 'A', 'Tue', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C009A0&value(crclumcd)=10200ZZZ'),
('B1C009B0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161a', 'normal', FALSE, 1, 2, 'A', 'Tue', 5, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C009B0&value(crclumcd)=10200ZZZ'),
('B1C009C0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161a', 'normal', FALSE, 1, 2, 'A', 'Fri', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C009C0&value(crclumcd)=10200ZZZ'),
('B1C009D0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161a', 'normal', FALSE, 1, 2, 'A', 'Fri', 4, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C009D0&value(crclumcd)=10200ZZZ');
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B1C010A0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161b', 'normal', FALSE, 1, 2, 'B', 'Tue', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C010A0&value(crclumcd)=10200ZZZ'),
('B1C010B0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161b', 'normal', FALSE, 1, 2, 'B', 'Tue', 5, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C010B0&value(crclumcd)=10200ZZZ'),
('B1C010C0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161b', 'normal', FALSE, 1, 2, 'B', 'Fri', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C010C0&value(crclumcd)=10200ZZZ'),
('B1C010D0', 'English', U&'\53e3\8a9e\82f1\8a9e\2161b', 'normal', FALSE, 1, 2, 'B', 'Fri', 4, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C010D0&value(crclumcd)=10200ZZZ'),
('B1C011A0', 'English', U&'\82f1\8a9e\306b\3088\308b\60c5\5831\6280\8853\2160a', 'normal', FALSE, 1, 2, 'A', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C011A0&value(crclumcd)=10200ZZZ'),
('B1C012A0', 'English', U&'\82f1\8a9e\306b\3088\308b\60c5\5831\6280\8853\2160b', 'normal', FALSE, 1, 2, 'B', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C012A0&value(crclumcd)=10200ZZZ'),
('B1C016A0', 'English', U&'\82f1\8a9e\6f14\7fd2', 'normal', FALSE, 1, 3, 'B', 'Thu', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C016A0&value(crclumcd)=10200ZZZ'),
('B1C013C0', 'English', U&'\6d77\5916\8a9e\5b66\7814\4fee\3010\6625\5b63\3011', 'normal', FALSE, 2, 1, 'Z', 'ZZZ', 0, '1,1,1,1,1', U&'\3053\306e\6388\696d\306b\30b7\30e9\30d0\30b9\306f\5b58\5728\3057\307e\305b\3093'),
('B1C013B0', 'English', U&'\6d77\5916\8a9e\5b66\7814\4fee\3010\590f\5b63\3011', 'normal', FALSE, 2, 1, 'Z', 'ZZZ', 0, '1,1,1,1,1', U&'\3053\306e\6388\696d\306b\30b7\30e9\30d0\30b9\306f\5b58\5728\3057\307e\305b\3093'),
('B1C014A0', 'English', U&'\65e5\672c\8a9e\2160', 'normal', TRUE, 2, 1, 'A', 'Wed', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C014A0&value(crclumcd)=10200ZZZ'),
('B1C015B0', 'English', U&'\65e5\672c\8a9e\2161', 'normal', TRUE, 2, 1, 'B', 'Wed', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B1C015B0&value(crclumcd)=10200ZZZ'),
('B2C001A0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66a', 'normal', FALSE, 1, 1, 'A', 'Tue', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C001A0&value(crclumcd)=10200ZZZ'),
('B2C001B0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66a', 'normal', FALSE, 1, 1, 'A', 'Tue', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C001B0&value(crclumcd)=10200ZZZ'),
('B2C001C0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66a', 'normal', FALSE, 1, 1, 'A', 'Tue', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C001C0&value(crclumcd)=10200ZZZ'),
('B2C001D0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66a', 'normal', FALSE, 1, 1, 'A', 'Fri', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C001D0&value(crclumcd)=10200ZZZ'),
('B2C001E0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66a', 'normal', FALSE, 1, 1, 'A', 'Fri', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C001E0&value(crclumcd)=10200ZZZ'),
('B2C002A0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66b', 'normal', FALSE, 1, 2, 'B', 'Tue', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C002A0&value(crclumcd)=10200ZZZ');         
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B2C002B0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66b', 'normal', FALSE, 1, 2, 'B', 'Tue', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C002B0&value(crclumcd)=10200ZZZ'),
('B2C002C0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66b', 'normal', FALSE, 1, 2, 'B', 'Tue', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C002C0&value(crclumcd)=10200ZZZ'),
('B2C002D0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66b', 'normal', FALSE, 1, 2, 'B', 'Fri', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C002D0&value(crclumcd)=10200ZZZ'),
('B2C002E0', 'Sports', U&'\57fa\790e\30b9\30dd\30fc\30c4\79d1\5b66b', 'normal', FALSE, 1, 2, 'B', 'Fri', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C002E0&value(crclumcd)=10200ZZZ'),
('B2C003A0', 'Sports', U&'\5065\5eb7\79d1\5b66', 'normal', FALSE, 2, 3, 'A', 'Wed', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C003A0&value(crclumcd)=10200ZZZ'),
('B2C004A0', 'Sports', U&'\30b9\30dd\30fc\30c4\79d1\5b66\5b9f\7fd2', 'normal', FALSE, 1, 3, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B2C004A0&value(crclumcd)=10200ZZZ'),
('B3C001A0', 'Science', U&'\79d1\5b66\53f2', 'normal', FALSE, 2, 4, 'B', 'Wed', 1, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C001A0&value(crclumcd)=10200ZZZ'),
('B3B003A0', 'Science', U&'\7269\7406\5b66\57fa\790e', 'choice', FALSE, 2, 1, 'A', 'Tue', 3, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B003A0&value(crclumcd)=10200ZZZ'),
('B3B003B0', 'Science', U&'\7269\7406\5b66\57fa\790e', 'choice', FALSE, 2, 1, 'A', 'Tue', 4, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B003B0&value(crclumcd)=10200ZZZ'),
('B3B003C0', 'Science', U&'\7269\7406\5b66\57fa\790e', 'choice', FALSE, 2, 1, 'A', 'Fri', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B003C0&value(crclumcd)=10200ZZZ'),
('B3B003D0', 'Science', U&'\7269\7406\5b66\57fa\790e', 'choice', FALSE, 2, 1, 'A', 'Fri', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B003D0&value(crclumcd)=10200ZZZ'),
('B3C004A0', 'Science', U&'\7269\7406\73fe\8c61\306e\6570\7406', 'normal', FALSE, 2, 2, 'A', 'Mon', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C004A0&value(crclumcd)=10200ZZZ'),
('B3C004B0', 'Science', U&'\7269\7406\73fe\8c61\306e\6570\7406', 'normal', FALSE, 2, 2, 'A', 'Mon', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C004B0&value(crclumcd)=10200ZZZ'),
('B3C005B0', 'Science', U&'\529b\5b66', 'normal', FALSE, 2, 1, 'A', 'Tue', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C005B0&value(crclumcd)=10200ZZZ'),
('B3C005A0', 'Science', U&'\529b\5b66', 'normal', FALSE, 2, 1, 'A', 'Tue', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C005A0&value(crclumcd)=10200ZZZ'),
('B3C005C0', 'Science', U&'\529b\5b66', 'normal', FALSE, 2, 1, 'A', 'Thu', 3, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C005C0&value(crclumcd)=10200ZZZ'),
('B3C005D0', 'Science', U&'\529b\5b66', 'normal', FALSE, 2, 1, 'A', 'Thu', 4, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C005D0&value(crclumcd)=10200ZZZ');              
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B3C006A0', 'Science', U&'\96fb\78c1\6c17\5b66', 'normal', FALSE, 2, 1, 'B', 'Tue', 3, '1,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C006A0&value(crclumcd)=10200ZZZ'),
('B3C006B0', 'Science', U&'\96fb\78c1\6c17\5b66', 'normal', FALSE, 2, 1, 'B', 'Tue', 4, '1,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C006B0&value(crclumcd)=10200ZZZ'),
('B3C006C0', 'Science', U&'\96fb\78c1\6c17\5b66', 'normal', FALSE, 2, 1, 'B', 'Fri', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C006C0&value(crclumcd)=10200ZZZ'),
('B3C006D0', 'Science', U&'\96fb\78c1\6c17\5b66', 'normal', FALSE, 2, 1, 'B', 'Fri', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C006D0&value(crclumcd)=10200ZZZ'),
('B3B007A0', 'Science', U&'\73fe\4ee3\7269\7406\5b66\5165\9580', 'choice', FALSE, 2, 2, 'B', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B007A0&value(crclumcd)=10200ZZZ'),
('B3B007B0', 'Science', U&'\73fe\4ee3\7269\7406\5b66\5165\9580', 'choice', FALSE, 2, 2, 'B', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B007B0&value(crclumcd)=10200ZZZ'),
('B3C009A0', 'Science', U&'\5316\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C009A0&value(crclumcd)=10200ZZZ'),
('B3C009B0', 'Science', U&'\5316\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C009B0&value(crclumcd)=10200ZZZ'),
('B3C009C0', 'Science', U&'\5316\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C009C0&value(crclumcd)=10200ZZZ'),
('B3C010A0', 'Science', U&'\74b0\5883\60c5\5831\79d1\5b66', 'normal', FALSE, 2, 2, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C010A0&value(crclumcd)=10200ZZZ'),
('B3C010B0', 'Science', U&'\74b0\5883\60c5\5831\79d1\5b66', 'normal', FALSE, 2, 1, 'B', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C010B0&value(crclumcd)=10200ZZZ'),
('B3C010C0', 'Science', U&'\74b0\5883\60c5\5831\79d1\5b66', 'normal', FALSE, 2, 1, 'B', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C010C0&value(crclumcd)=10200ZZZ'),
('B3C012B0', 'Science', U&'\5730\7403\79d1\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C012B0&value(crclumcd)=10200ZZZ'),
('B3C012A0', 'Science', U&'\5730\7403\79d1\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C012A0&value(crclumcd)=10200ZZZ'),
('B3C012D0', 'Science', U&'\5730\7403\79d1\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Thu', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C012D0&value(crclumcd)=10200ZZZ'),
('B3C012C0', 'Science', U&'\5730\7403\79d1\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Thu', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C012C0&value(crclumcd)=10200ZZZ'),
('B3B014B0', 'Science', U&'\5730\7403\74b0\5883', 'choice', FALSE, 2, 1, 'B', 'Tue', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B014B0&value(crclumcd)=10200ZZZ'); 
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B3B014A0', 'Science', U&'\5730\7403\74b0\5883', 'choice', FALSE, 2, 1, 'B', 'Tue', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B014A0&value(crclumcd)=10200ZZZ'),
('B3B014C0', 'Science', U&'\5730\7403\74b0\5883', 'choice', FALSE, 2, 1, 'B', 'Thu', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B014C0&value(crclumcd)=10200ZZZ'),
('B3C015A0', 'Science', U&'\751f\547d\79d1\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C015A0&value(crclumcd)=10200ZZZ'),
('B3C015B0', 'Science', U&'\751f\547d\79d1\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C015B0&value(crclumcd)=10200ZZZ'),
('B3C015C0', 'Science', U&'\751f\547d\79d1\5b66\57fa\790e', 'normal', FALSE, 2, 1, 'A', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C015C0&value(crclumcd)=10200ZZZ'),
('B3B017A0', 'Science', U&'\60c5\5831\751f\547d\79d1\5b66', 'choice', FALSE, 2, 1, 'B', 'Tue', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B017A0&value(crclumcd)=10200ZZZ'),
('B3B017B0', 'Science', U&'\60c5\5831\751f\547d\79d1\5b66', 'choice', FALSE, 2, 1, 'B', 'Fri', 3, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B017B0&value(crclumcd)=10200ZZZ'),
('B3B017C0', 'Science', U&'\60c5\5831\751f\547d\79d1\5b66', 'choice', FALSE, 2, 1, 'B', 'Fri', 4, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3B017C0&value(crclumcd)=10200ZZZ'),
('B3C018A0', 'Science', U&'\8996\308b\81ea\7136\79d1\5b66', 'normal', FALSE, 2, 2, 'B', 'Wed', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B3C018A0&value(crclumcd)=10200ZZZ'),
('B4C001A0', 'Career', U&'\57fa\790e\30bc\30df\30ca\30fc\30eb', 'normal', FALSE, 1, 1, 'A', 'Wed', 1, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C001A0&value(crclumcd)=10200ZZZ'),
('B4C001M0', 'Career', U&'\57fa\790e\30bc\30df\30ca\30fc\30eb', 'normal', FALSE, 1, 1, 'A', 'Wed', 2, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C001M0&value(crclumcd)=10200ZZZ'),
('B4C002A0', 'Career', U&'\30ad\30e3\30ea\30a2\30b9\30c6\30c3\30d7', 'normal', FALSE, 1, 1, 'B', 'Mon', 2, '1,1,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C002A0&value(crclumcd)=10200ZZZ'),
('B4C002C0', 'Career', U&'\30ad\30e3\30ea\30a2\30b9\30c6\30c3\30d7', 'normal', FALSE, 1, 1, 'B', 'Mon', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C002C0&value(crclumcd)=10200ZZZ'),
('B4C002B0', 'Career', U&'\30ad\30e3\30ea\30a2\30b9\30c6\30c3\30d7', 'normal', FALSE, 1, 1, 'B', 'Mon', 4, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C002B0&value(crclumcd)=10200ZZZ'),
('B4C003C0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Mon', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C003C0&value(crclumcd)=10200ZZZ'),
('B4C003D0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Mon', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C003D0&value(crclumcd)=10200ZZZ');             
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('B4C003E0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Mon', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C003E0&value(crclumcd)=10200ZZZ'),
('1CCG02A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Mon', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCG02A0&value(crclumcd)=10201300'),
('1DCG02A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Mon', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1DCG02A0&value(crclumcd)=10201400'),
('B4C003B0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Wed', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C003B0&value(crclumcd)=10200ZZZ'),
('1BCG02A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Wed', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCG02A0&value(crclumcd)=10201200'),
('B4C003A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Fri', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C003A0&value(crclumcd)=10200ZZZ'),
('1ACG02A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2160', 'normal', FALSE, 1, 2, 'A', 'Fri', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ACG02A0&value(crclumcd)=10201102'),
('B4C004D0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2161', 'normal', FALSE, 1, 2, 'B', 'Thu', 3, '0,0,1,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C004D0&value(crclumcd)=10200ZZZ'),
('B4C004A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2161', 'normal', FALSE, 1, 2, 'B', 'Thu', 4, '1,1,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C004A0&value(crclumcd)=10200ZZZ'),
('1BCG03A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2161', 'normal', FALSE, 1, 2, 'B', 'Thu', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCG03A0&value(crclumcd)=10201200'),
('1DCG03A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2161', 'normal', FALSE, 1, 2, 'B', 'Thu', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1DCG03A0&value(crclumcd)=10201400'),
('1ACG03A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2161', 'normal', FALSE, 1, 2, 'B', 'Thu', 4, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ACG03A0&value(crclumcd)=10201102'),
('1CCG03A0', 'Career', U&'\30ad\30e3\30ea\30a2\30c7\30b6\30a4\30f3\2161', 'normal', FALSE, 1, 2, 'B', 'Thu', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCG03A0&value(crclumcd)=10201300'),
('B4C005A0', 'Career', U&'\30b0\30ed\30fc\30d0\30eb\30c6\30af\30ce\30ed\30b8\8ad6', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C005A0&value(crclumcd)=10200ZZZ'),
('B4C006A0', 'Career', U&'OIT\6982\8ad6', 'normal', FALSE, 1, 1, 'Z', 'ZZZ', 0, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4C006A0&value(crclumcd)=10200ZZZ'),
('1GAA01B0', 'ID', U&'\7dda\5f62\6570\5b66\2160', 'required', FALSE, 2, 1, 'A', 'Mon', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAA01B0&value(crclumcd)=10201500');    
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1GAA01A0', 'ID', U&'\7dda\5f62\6570\5b66\2160', 'required', FALSE, 2, 1, 'A', 'Mon', 4, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAA01A0&value(crclumcd)=10201500'),
('1GCA02A0', 'ID', U&'\7dda\5f62\6570\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCA02A0&value(crclumcd)=10201500'),
('1GAA03A0', 'ID', U&'\5fae\7a4d\5206\5b66\2160', 'required', FALSE, 2, 1, 'A', 'Thu', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAA03A0&value(crclumcd)=10201500'),
('1GAA03B0', 'ID', U&'\5fae\7a4d\5206\5b66\2160', 'required', FALSE, 2, 1, 'A', 'Thu', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAA03B0&value(crclumcd)=10201500'),
('1GCA04A0', 'ID', U&'\5fae\7a4d\5206\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 5, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCA04A0&value(crclumcd)=10201500'),
('1GCA05A0', 'ID', U&'\60c5\5831\6570\5b66', 'normal', FALSE, 2, 2, 'B', 'Thu', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCA05A0&value(crclumcd)=10201500'),
('1GCA07A0', 'ID', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Thu', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCA07A0&value(crclumcd)=10201500'),
('1GCA07B0', 'ID', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Mon', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCA07B0&value(crclumcd)=10201500'),
('1GCA08A0', 'ID', U&'\30b0\30e9\30d5\7406\8ad6', 'normal', FALSE, 2, 2, 'A', 'Tue', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCA08A0&value(crclumcd)=10201500'),
('1GCA09A0', 'ID', U&'\6570\7406\8a08\753b\6cd5', 'normal', FALSE, 2, 3, 'B', 'Mon', 4, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCA09A0&value(crclumcd)=10201500'),
('1GCA11A0', 'ID', U&'\78ba\7387\30fb\7d71\8a08', 'required', FALSE, 2, 2, 'A', 'Wed', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAA11A0&value(crclumcd)=10201500'),
('1GAB01A0', 'ID', U&'\30b3\30f3\30d4\30e5\30fc\30bf\5165\9580', 'required', FALSE, 2, 1, 'A', 'Mon', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB01A0&value(crclumcd)=10201500'),
('1GCB01A0', 'ID', U&'\60c5\5831\901a\4fe1\30cd\30c3\30c8\30ef\30fc\30af', 'normal', FALSE, 2, 2, 'A', 'Fri', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCB01A0&value(crclumcd)=10201500'),
('1GAB03A0', 'ID', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\57fa\790e', 'required', FALSE, 2, 1, 'B', 'Thu', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB03A0&value(crclumcd)=10201500'),
('1GAB05A0', 'ID', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Fri', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB05A0&value(crclumcd)=10201500'),
('1GAB05B0', 'ID', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Fri', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB05B0&value(crclumcd)=10201500'),
('1GCB08A0', 'ID', U&'\60c5\5831\51e6\7406\57fa\790e', 'normal', FALSE, 2, 1, 'Z', 'ZZZ', 0, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCB08A0&value(crclumcd)=10201500');             
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1GAB26A0', 'ID', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'required', FALSE, 2, 1, 'A', 'Wed', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB26A0&value(crclumcd)=10201500'),
('1GAB26B0', 'ID', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'required', FALSE, 2, 1, 'A', 'Wed', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB26B0&value(crclumcd)=10201500'),
('1GAB32A0', 'ID', U&'\30c7\30fc\30bf\30b5\30a4\30a8\30f3\30b9\5165\9580', 'required', FALSE, 2, 1, 'A', 'Fri', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB32A0&value(crclumcd)=10201500'),
('1GBB33A0', 'ID', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0', 'choice', FALSE, 2, 2, 'A', 'Wed', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBB33A0&value(crclumcd)=10201500'),
('1GCB34A0', 'ID', U&'\5b9f\9a13\8a08\753b\6cd5', 'normal', FALSE, 2, 3, 'A', 'Fri', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCB34A0&value(crclumcd)=10201500'),
('1GAB35A0', 'ID', U&'\7d71\8a08\89e3\6790', 'required', FALSE, 2, 2, 'B', 'Mon', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAB35A0&value(crclumcd)=10201500'),
('1GCB36A0', 'ID', U&'\591a\5909\91cf\89e3\6790', 'normal', FALSE, 2, 3, 'A', 'Thu', 4, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCB36A0&value(crclumcd)=10201500'),
('1GBB37A0', 'ID', U&'IoT\6982\8ad6', 'choice', FALSE, 2, 1, 'B', 'Fri', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBB37A0&value(crclumcd)=10201500'),
('1GCB38A0', 'ID', U&'\6559\80b2\5fc3\7406', 'normal', FALSE, 2, 1, 'B', 'Fri', 5, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCB38A0&value(crclumcd)=10201500'),
('1GBL09A0', 'ID', U&'\30c7\30fc\30bf\30d9\30fc\30b9\30b7\30b9\30c6\30e0', 'choice', FALSE, 2, 2, 'B', 'Fri', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBL09A0&value(crclumcd)=10201500'),
('1GCL20A0', 'ID', U&'\30aa\30da\30ec\30fc\30b7\30e7\30f3\30ba\30fb\30ea\30b5\30fc\30c1', 'normal', FALSE, 2, 3, 'A', 'Mon', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL20A0&value(crclumcd)=10201500'),
('1GAL27A0', 'ID', U&'\60c5\5831\6280\8853\8005\8ad6', 'required', FALSE, 2, 3, 'B', 'Wed', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAL27A0&value(crclumcd)=10201500'),
('1GAL29A0', 'ID', U&'\60c5\5831\30bc\30df\30ca\30fc\30eb', 'required', FALSE, 2, 3, 'B', 'Thu', 4, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAL29A0&value(crclumcd)=10201500'),
('1GCL31A0', 'ID', U&'\30b7\30b9\30c6\30e0\5de5\5b66', 'normal', FALSE, 2, 2, 'A', 'Thu', 4, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL31A0&value(crclumcd)=10201500'),
('1GCL32A0', 'ID', U&'\60c5\5831\30bb\30ad\30e5\30ea\30c6\30a3\306e\57fa\790e', 'normal', FALSE, 2, 3, 'A', 'Mon', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL32A0&value(crclumcd)=10201500'),
('1GAL33A0', 'ID', U&'\7d4c\55b6\30b7\30b9\30c6\30e0\8ad6\2160', 'required', FALSE, 2, 2, 'A', 'Tue', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAL33A0&value(crclumcd)=10201500');      
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1GAL33B0', 'ID', U&'\7d4c\55b6\30b7\30b9\30c6\30e0\8ad6\2160', 'required', FALSE, 2, 2, 'A', 'Tue', 4, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAL33B0&value(crclumcd)=10201500'),
('1GBL35A0', 'ID', U&'\30c7\30fc\30bf\30de\30a4\30cb\30f3\30b0', 'choice', FALSE, 2, 2, 'B', 'Mon', 4, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBL35A0&value(crclumcd)=10201500'),
('1GCL36A0', 'ID', U&'\30c6\30ad\30b9\30c8\30de\30a4\30cb\30f3\30b0\3010\524d\671f\5f8c\534a\3011', 'normal', FALSE, 1, 2, 'D', 'Mon', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL36A0&value(crclumcd)=10201500'),
('1GCL36B0', 'ID', U&'\30c6\30ad\30b9\30c8\30de\30a4\30cb\30f3\30b0\3010\524d\671f\524d\534a\3011', 'normal', FALSE, 1, 2, 'C', 'Mon', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL36B0&value(crclumcd)=10201500'),
('1GCL37A0', 'ID', U&'\30d3\30b8\30e5\30a2\30eb\30d7\30ed\30b0\30e9\30df\30f3\30b0\8ad6', 'normal', FALSE, 2, 2, 'B', 'Mon', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL37A0&value(crclumcd)=10201500'),
('1GBL38A0', 'ID', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66', 'choice', FALSE, 2, 2, 'B', 'Mon', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBL38A0&value(crclumcd)=10201500'),
('1GCL39A0', 'ID', U&'\4eba\5de5\77e5\80fd', 'normal', FALSE, 2, 3, 'A', 'Mon', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL39A0&value(crclumcd)=10201500'),
('1GCL40A0', 'ID', U&'\30d1\30bf\30fc\30f3\8a8d\8b58', 'normal', FALSE, 2, 2, 'A', 'Mon', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL40A0&value(crclumcd)=10201500'),
('1GAL41A0', 'ID', U&'\6a5f\68b0\5b66\7fd2', 'required', FALSE, 2, 2, 'A', 'Thu', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAL41A0&value(crclumcd)=10201500'),
('1GCL42A0', 'ID', U&'\767a\60f3\6cd5\3068\554f\984c\89e3\6c7a\3010\524d\671f\524d\534a\3011', 'normal', FALSE, 1, 2, 'C', 'Mon', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL42A0&value(crclumcd)=10201500'),
('1GCL42B0', 'ID', U&'\767a\60f3\6cd5\3068\554f\984c\89e3\6c7a\3010\524d\671f\5f8c\534a\3011', 'normal', FALSE, 1, 2, 'D', 'Mon', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCL42B0&value(crclumcd)=10201500'),
('1GCM21A0', 'ID', U&'\30e2\30c7\30ea\30f3\30b0\3068\30b7\30df\30e5\30ec\30fc\30b7\30e7\30f3', 'normal', FALSE, 2, 3, 'B', 'Mon', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM21A0&value(crclumcd)=10201500'),
('1GCM23A0', 'ID', U&'\7d4c\55b6\30b7\30b9\30c6\30e0\8ad6\2161', 'normal', FALSE, 2, 3, 'B', 'Thu', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM23A0&value(crclumcd)=10201500'),
('1GCM30A0', 'ID', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\969bPBL)', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM30A0&value(crclumcd)=10201500'),
('1GBM31A0', 'ID', U&'\30de\30fc\30b1\30c6\30a3\30f3\30b0\8ad6', 'choice', FALSE, 2, 3, 'A', 'Thu', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBM31A0&value(crclumcd)=10201500'),
('1GBM32A0', 'ID', U&'\6570\7406\30d5\30a1\30a4\30ca\30f3\30b9', 'choice', FALSE, 2, 3, 'B', 'Mon', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBM32A0&value(crclumcd)=10201500');              
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1GCM33A0', 'ID', U&'\30ed\30b8\30b9\30c6\30a3\30af\30b9', 'normal', FALSE, 2, 3, 'B', 'Thu', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM33A0&value(crclumcd)=10201500'),
('1GCM34A0', 'ID', U&'\4f01\696d\4f1a\8a08\8ad6', 'normal', FALSE, 2, 3, 'A', 'Fri', 2, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM34A0&value(crclumcd)=10201500'),
('1GBM35A0', 'ID', U&'\6559\80b2\5de5\5b66', 'choice', FALSE, 2, 3, 'B', 'Wed', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBM35A0&value(crclumcd)=10201500'),
('1GCM36A0', 'ID', U&'\6559\80b2\6280\6cd5', 'normal', FALSE, 2, 2, 'A', 'Thu', 5, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM36A0&value(crclumcd)=10201500'),
('1GCM37A0', 'ID', U&'\60c5\5831\79d1\6559\80b2\6cd5', 'normal', FALSE, 2, 3, 'A', 'Mon', 5, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM37A0&value(crclumcd)=10201500'),
('1GBM38A0', 'ID', U&'\5de5\696d\7d4c\55b6\8ad6', 'choice', FALSE, 2, 2, 'A', 'Fri', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBM38A0&value(crclumcd)=10201500'),
('1GCM39A0', 'ID', U&'\6295\8cc7\610f\601d\6c7a\5b9a\8ad6', 'normal', FALSE, 2, 3, 'B', 'Tue', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM39A0&value(crclumcd)=10201500'),
('1GCM40A0', 'ID', U&'\7d4c\55b6\6226\7565\8ad6', 'normal', FALSE, 2, 3, 'A', 'Tue', 3, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GCM40A0&value(crclumcd)=10201500'),
('1GAN03A0', 'ID', U&'C\6f14\7fd2\2160', 'required', TRUE, 3, 1, 'B', 'Wed', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAN03A0&value(crclumcd)=10201500'),
('1GBN04A0', 'ID', U&'C\6f14\7fd2\2161', 'choice', TRUE, 3, 2, 'A', 'Thu', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBN04A0&value(crclumcd)=10201500'),
('1GBN05A0', 'ID', U&'Java\6f14\7fd2', 'choice', TRUE, 3, 2, 'B', 'Thu', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBN05A0&value(crclumcd)=10201500'),
('1GAN07A0', 'ID', U&'\30c7\30fc\30bf\30b5\30a4\30a8\30f3\30b9\5b9f\8df5\6f14\7fd2\2160', 'required', TRUE, 2, 2, 'B', 'Tue', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAN07A0&value(crclumcd)=10201500'),
('1GAN08A0', 'ID', U&'\30c7\30fc\30bf\30b5\30a4\30a8\30f3\30b9\5b9f\8df5\6f14\7fd2\2161', 'required', TRUE, 2, 3, 'A', 'Tue', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GAN08A0&value(crclumcd)=10201500'),
('1GAN09A0', 'ID', U&'\30c7\30fc\30bf\30b5\30a4\30a8\30f3\30b9\5b9f\8df5\6f14\7fd2\2162', 'choice', TRUE, 2, 3, 'B', 'Tue', 1, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBN09A0&value(crclumcd)=10201500'),
('1GAN10A0', 'ID', U&'\4fa1\5024\5275\9020\6f14\7fd2', 'choice', FALSE, 2, 3, 'Z', 'ZZZ', 0, '1,0,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1GBN10A0&value(crclumcd)=10201500'),
('1EBA01A0', 'IC', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA01A0&value(crclumcd)=10201103'),
('1EBA01B0', 'IC', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA01B0&value(crclumcd)=10201103');      
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1EBA01C0', 'IC', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'B', 'Mon', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA01C0&value(crclumcd)=10201103'),
('1ECA02A0', 'IC', U&'\7dda\5f62\6570\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECA02A0&value(crclumcd)=10201103'),
('1EBA03A0', 'IC', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA03A0&value(crclumcd)=10201103'),
('1EBA03B0', 'IC', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA03B0&value(crclumcd)=10201103'),
('1EBA03C0', 'IC', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Thu', 4, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA03C0&value(crclumcd)=10201103'),
('1ECA04A0', 'IC', U&'\5fae\7a4d\5206\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 5, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECA04A0&value(crclumcd)=10201103'),
('1EBA05A0', 'IC', U&'\60c5\5831\6570\5b66', 'choice', FALSE, 2, 2, 'B', 'Thu', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA05A0&value(crclumcd)=10201103'),
('1ECA06A0', 'IC', U&'\5468\6ce2\6570\89e3\6790', 'normal', FALSE, 2, 2, 'A', 'Mon', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECA06A0&value(crclumcd)=10201103'),
('1ECA07A0', 'IC', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECA07A0&value(crclumcd)=10201103'),
('1ECA07B0', 'IC', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECA07B0&value(crclumcd)=10201103'),
('1EBA08A0', 'IC', U&'\30b0\30e9\30d5\7406\8ad6', 'choice', FALSE, 2, 2, 'A', 'Thu', 4, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA08A0&value(crclumcd)=10201103'),
('1EBA11A0', 'IC', U&'\78ba\7387\30fb\7d71\8a08', 'choice', FALSE, 2, 3, 'A', 'Wed', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBA11A0&value(crclumcd)=10201103'),
('1EAB01A0', 'IC', U&'\30b3\30f3\30d4\30e5\30fc\30bf\5165\9580', 'required', FALSE, 2, 1, 'A', 'Tue', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAB01A0&value(crclumcd)=10201103'),
('1EBB02A0', 'IC', U&'\60c5\5831\901a\4fe1\30cd\30c3\30c8\30ef\30fc\30af', 'choice', FALSE, 2, 2, 'A', 'Tue', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBB02A0&value(crclumcd)=10201103'),
('1ECB03A0', 'IC', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Tue', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECB03A0&value(crclumcd)=10201103'),
('1EAB05A0', 'IC', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAB05A0&value(crclumcd)=10201103'),
('1EAB05B0', 'IC', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAB05B0&value(crclumcd)=10201103');            
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1EAB07A0', 'IC', U&'\30c7\30a3\30b8\30bf\30eb\56de\8def', 'required', FALSE, 2, 1, 'B', 'Fri', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAB07A0&value(crclumcd)=10201103'),
('1ECB08A0', 'IC', U&'\60c5\5831\51e6\7406\57fa\790e', 'normal', FALSE, 2, 1, 'Z', 'ZZZ', 0, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECB08A0&value(crclumcd)=10201103'),
('1ECB10A0', 'IC', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\5165\9580', 'normal', FALSE, 2, 1, 'A', 'Fri', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECB10A0&value(crclumcd)=10201103'),
('1EBB13A0', 'IC', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2160', 'choice', FALSE, 2, 2, 'A', 'Wed', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBB13A0&value(crclumcd)=10201103'),
('1EAB18A0', 'IC', U&'\30a2\30bb\30f3\30d6\30ea\8a00\8a9e', 'required', FALSE, 2, 2, 'B', 'Fri', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAB18A0&value(crclumcd)=10201103'),
('1EAB18B0', 'IC', U&'\30a2\30bb\30f3\30d6\30ea\8a00\8a9e', 'required', FALSE, 2, 3, 'B', 'Fri', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAB18B0&value(crclumcd)=10201103'),
('1EBB21A0', 'IC', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2160', 'choice', FALSE, 2, 2, 'B', 'Mon', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBB21A0&value(crclumcd)=10201103'),
('1EAB23A0', 'IC', U&'\7d44\307f\8fbc\307f\30b7\30b9\30c6\30e0\57fa\790e', 'required', FALSE, 2, 2, 'A', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAB23A0&value(crclumcd)=10201103'),
('1ECB26A0', 'IC', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECB26A0&value(crclumcd)=10201103'),
('1ECB26B0', 'IC', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECB26B0&value(crclumcd)=10201103'),
('1EBL01A0', 'IC', U&'\30aa\30fc\30c8\30de\30c8\30f3\3068\5f62\5f0f\8a00\8a9e', 'choice', FALSE, 2, 3, 'A', 'Tue', 5, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBL01A0&value(crclumcd)=10201103'),
('1EAL02A0', 'IC', U&'\8a08\7b97\6a5f\30a2\30fc\30ad\30c6\30af\30c1\30e3', 'required', FALSE, 2, 2, 'A', 'Tue', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAL02A0&value(crclumcd)=10201103'),
('1EBL03A0', 'IC', U&'\30d7\30ed\30bb\30c3\30b5\8a2d\8a08', 'choice', FALSE, 2, 3, 'A', 'Tue', 4, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBL03A0&value(crclumcd)=10201103'),
('1EBL04A0', 'IC', U&'\96c6\7a4d\56de\8def\5de5\5b66', 'choice', FALSE, 2, 3, 'A', 'Thu', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBL04A0&value(crclumcd)=10201103'),
('1ECL05A0', 'IC', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2161', 'normal', FALSE, 2, 3, 'A', 'Tue', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECL05A0&value(crclumcd)=10201103'),
('1ECL06A0', 'IC', U&'\30b7\30b9\30c6\30e0\30d7\30ed\30b0\30e9\30e0', 'normal', FALSE, 2, 3, 'A', 'Tue', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECL06A0&value(crclumcd)=10201103');    
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1EAL07A0', 'IC', U&'\30aa\30da\30ec\30fc\30c6\30a3\30f3\30b0\30b7\30b9\30c6\30e0', 'required', FALSE, 2, 2, 'B', 'Mon', 5, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAL07A0&value(crclumcd)=10201103'),
('1EBL08A0', 'IC', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\8a00\8a9e\8ad6', 'choice', FALSE, 2, 3, 'A', 'Thu', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBL08A0&value(crclumcd)=10201103'),
('1EBL09A0', 'IC', U&'\30c7\30fc\30bf\30d9\30fc\30b9\30b7\30b9\30c6\30e0', 'choice', FALSE, 2, 2, 'B', 'Tue', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBL09A0&value(crclumcd)=10201103'),
('1EBL11A0', 'IC', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2161', 'choice', FALSE, 2, 3, 'A', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBL11A0&value(crclumcd)=10201103'),
('1ECL16A0', 'IC', U&'Unix\30d7\30ed\30b0\30e9\30df\30f3\30b0', 'normal', FALSE, 2, 3, 'B', 'Thu', 2, '0,1,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECL16A0&value(crclumcd)=10201103'),
('1EAL27A0', 'IC', U&'\60c5\5831\6280\8853\8005\8ad6', 'required', FALSE, 2, 3, 'B', 'Wed', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAL27A0&value(crclumcd)=10201103'),
('1EAL29A0', 'IC', U&'\60c5\5831\30bc\30df\30ca\30fc\30eb', 'required', FALSE, 2, 3, 'B', 'Thu', 4, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAL29A0&value(crclumcd)=10201103'),
('1ECL30A0', 'IC', U&'\30a4\30f3\30bf\30fc\30d5\30a7\30fc\30b9\30fb\30bb\30f3\30b5\56de\8def', 'normal', FALSE, 2, 2, 'A', 'Thu', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECL30A0&value(crclumcd)=10201103'),
('1EBL32A0', 'IC', U&'\60c5\5831\30bb\30ad\30e5\30ea\30c6\30a3\306e\57fa\790e', 'choice', FALSE, 2, 3, 'A', 'Mon', 2, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBL32A0&value(crclumcd)=10201103'),
('1ECM01A0', 'IC', U&'\77e5\80fd\5236\5fa1\5de5\5b66\57fa\790e', 'normal', FALSE, 2, 3, 'A', 'Thu', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM01A0&value(crclumcd)=10201103'),
('1ECM04A0', 'IC', U&'\96c6\7a4d\56de\8def\8a2d\8a08', 'normal', FALSE, 2, 3, 'B', 'Thu', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM04A0&value(crclumcd)=10201103'),
('1ECM04B0', 'IC', U&'\96c6\7a4d\56de\8def\8a2d\8a08', 'normal', FALSE, 2, 3, 'B', 'Fri', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM04B0&value(crclumcd)=10201103'),
('1ECM06A0', 'IC', U&'\753b\50cf\51e6\7406', 'normal', FALSE, 2, 3, 'A', 'Thu', 4, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM06A0&value(crclumcd)=10201103'),
('1ECM07A0', 'IC', U&'\4fe1\53f7\51e6\7406', 'normal', FALSE, 2, 3, 'B', 'Tue', 4, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM07A0&value(crclumcd)=10201103'),
('1ECM08A0', 'IC', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30b0\30e9\30d5\30a3\30c3\30af\30b9\2160', 'normal', FALSE, 2, 3, 'B', 'Mon', 4, '0,1,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM08A0&value(crclumcd)=10201103'),
('1ECM09A0', 'IC', U&'\77e5\80fd\60c5\5831\51e6\7406', 'normal', FALSE, 2, 3, 'A', 'Mon', 4, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM09A0&value(crclumcd)=10201103');
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1ECM10A0', 'IC', U&'\77e5\80fd\5236\5fa1\5de5\5b66', 'normal', FALSE, 2, 3, 'B', 'Tue', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM10A0&value(crclumcd)=10201103'),
('1ECM30A0', 'IC', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\969bPBL)', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM30A0&value(crclumcd)=10201103'),
('1ECM41A0', 'IC', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)a', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM41A0&value(crclumcd)=10201103'),
('1ECM42A0', 'IC', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)b', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECM42A0&value(crclumcd)=10201103'),
('1EAN03A0', 'IC', U&'C\6f14\7fd2\2160', 'required', TRUE, 3, 1, 'B', 'Wed', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAN03A0&value(crclumcd)=10201103'),
('1EBN04A0', 'IC', U&'C\6f14\7fd2\2161', 'choice', TRUE, 3, 2, 'A', 'Thu', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBN04A0&value(crclumcd)=10201103'),
('1EBN05A0', 'IC', U&'Java\6f14\7fd2', 'choice', TRUE, 3, 2, 'B', 'Thu', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBN05A0&value(crclumcd)=10201103'),
('1EBN06A0', 'IC', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\6f14\7fd2', 'choice', TRUE, 2, 3, 'A', 'Fri', 1, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBN06A0&value(crclumcd)=10201103'),
('1EAN07A0', 'IC', U&'\60c5\5831\79d1\5b66\6f14\7fd2\2160', 'required', TRUE, 2, 2, 'B', 'Mon', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAN07A0&value(crclumcd)=10201103'),
('1EAN08A0', 'IC', U&'\60c5\5831\79d1\5b66\6f14\7fd2\2161', 'required', TRUE, 2, 3, 'A', 'Fri', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAN08A0&value(crclumcd)=10201103'),
('1EAN09A0', 'IC', U&'\60c5\5831\79d1\5b66\6f14\7fd2\2162', 'required', TRUE, 2, 2, 'B', 'Fri', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EAN09A0&value(crclumcd)=10201103'),
('1ECN10A0', 'IC', U&'\77e5\80fd\5236\5fa1\5de5\5b66\6f14\7fd2', 'normal', FALSE, 1, 3, 'B', 'Tue', 3, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1ECN10A0&value(crclumcd)=10201103'),
('1EBN11A0', 'IC', U&'CS\30d7\30ed\30b8\30a7\30af\30c8\6f14\7fd2', 'choice', FALSE, 1, 4, 'Z', 'ZZZ', 0, '0,1,0,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1EBN11A0&value(crclumcd)=10201103'),
('1BBA01A0', 'IS', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Thu', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA01A0&value(crclumcd)=10201200'),
('1BBA01B0', 'IS', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Thu', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA01B0&value(crclumcd)=10201200'),
('1BBA01C0', 'IS', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'B', 'Mon', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA01C0&value(crclumcd)=10201200'),
('1BCA02A0', 'IS', U&'\7dda\5f62\6570\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCA02A0&value(crclumcd)=10201200');         
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1BBA03A0', 'IS', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA03A0&value(crclumcd)=10201200'),
('1BBA03B0', 'IS', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA03B0&value(crclumcd)=10201200'),
('1BBA03C0', 'IS', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'B', 'Thu', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA03C0&value(crclumcd)=10201200'),
('1BCA04A0', 'IS', U&'\5fae\7a4d\5206\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 5, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCA04A0&value(crclumcd)=10201200'),
('1BBA05A0', 'IS', U&'\60c5\5831\6570\5b66', 'choice', FALSE, 2, 2, 'B', 'Tue', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA05A0&value(crclumcd)=10201200'),
('1BCA06A0', 'IS', U&'\5468\6ce2\6570\89e3\6790', 'normal', FALSE, 2, 2, 'A', 'Mon', 4, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCA06A0&value(crclumcd)=10201200'),
('1BCA07A0', 'IS', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Tue', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCA07A0&value(crclumcd)=10201200'),
('1BCA07B0', 'IS', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Tue', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCA07B0&value(crclumcd)=10201200'),
('1BBA08A0', 'IS', U&'\30b0\30e9\30d5\7406\8ad6', 'choice', FALSE, 2, 2, 'A', 'Mon', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA08A0&value(crclumcd)=10201200'),
('1BCA09A0', 'IS', U&'\6570\7406\8a08\753b\6cd5', 'normal', FALSE, 2, 3, 'A', 'Tue', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCA09A0&value(crclumcd)=10201200'),
('1BBA11A0', 'IS', U&'\78ba\7387\30fb\7d71\8a08', 'choice', FALSE, 2, 2, 'A', 'Tue', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBA11A0&value(crclumcd)=10201200'),
('1BAB01A0', 'IS', U&'\30b3\30f3\30d4\30e5\30fc\30bf\5165\9580', 'required', FALSE, 2, 1, 'A', 'Thu', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAB01A0&value(crclumcd)=10201200'),
('1BBB02A0', 'IS', U&'\60c5\5831\901a\4fe1\30cd\30c3\30c8\30ef\30fc\30af', 'choice', FALSE, 2, 2, 'A', 'Tue', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBB02A0&value(crclumcd)=10201200'),
('1BCB03A0', 'IS', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\57fa\790e', 'normal', FALSE, 2, 1, 'B', 'Mon', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB03A0&value(crclumcd)=10201200'),
('1BBB04A0', 'IS', U&'\30aa\30fc\30c8\30de\30c8\30f3\3068\5f62\5f0f\8a00\8a9e', 'choice', FALSE, 2, 3, 'A', 'Tue', 5, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBB04A0&value(crclumcd)=10201200'),
('1BAB05A0', 'IS', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAB05A0&value(crclumcd)=10201200'),
('1BAB05B0', 'IS', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAB05B0&value(crclumcd)=10201200');              
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1BCB07A0', 'IS', U&'\30c7\30a3\30b8\30bf\30eb\56de\8def', 'normal', FALSE, 2, 1, 'B', 'Fri', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB07A0&value(crclumcd)=10201200'),
('1BCB08A0', 'IS', U&'\60c5\5831\51e6\7406\57fa\790e', 'normal', FALSE, 2, 1, 'Z', 'ZZZ', 0, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB08A0&value(crclumcd)=10201200'),
('1BAB11A0', 'IS', U&'\8a08\7b97\6a5f\30a2\30fc\30ad\30c6\30af\30c1\30e3', 'required', FALSE, 2, 2, 'A', 'Fri', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAB11A0&value(crclumcd)=10201200'),
('1BBB13A0', 'IS', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2160', 'choice', FALSE, 2, 2, 'A', 'Wed', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBB13A0&value(crclumcd)=10201200'),
('1BCB15A0', 'IS', U&'\30b7\30b9\30c6\30e0\30d7\30ed\30b0\30e9\30e0', 'normal', FALSE, 2, 3, 'A', 'Tue', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB15A0&value(crclumcd)=10201200'),
('1BAB16A0', 'IS', U&'\30aa\30da\30ec\30fc\30c6\30a3\30f3\30b0\30b7\30b9\30c6\30e0', 'required', FALSE, 2, 2, 'B', 'Mon', 5, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAB16A0&value(crclumcd)=10201200'),
('1BCB18A0', 'IS', U&'\30a2\30bb\30f3\30d6\30ea\8a00\8a9e', 'normal', FALSE, 2, 2, 'B', 'Fri', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB18A0&value(crclumcd)=10201200'),
('1BCB18B0', 'IS', U&'\30a2\30bb\30f3\30d6\30ea\8a00\8a9e', 'normal', FALSE, 2, 3, 'B', 'Fri', 5, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB18B0&value(crclumcd)=10201200'),
('1BCB26A0', 'IS', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB26A0&value(crclumcd)=10201200'),
('1BCB26B0', 'IS', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB26B0&value(crclumcd)=10201200'),
('1BCB27A0', 'IS', U&'Unix\30b7\30b9\30c6\30e0\5165\9580', 'normal', FALSE, 2, 2, 'A', 'Fri', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB27A0&value(crclumcd)=10201200'),
('1BCB27B0', 'IS', U&'Unix\30b7\30b9\30c6\30e0\5165\9580', 'normal', FALSE, 2, 2, 'A', 'Fri', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCB27B0&value(crclumcd)=10201200'),
('1BCL05A0', 'IS', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2161', 'normal', FALSE, 2, 3, 'A', 'Tue', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCL05A0&value(crclumcd)=10201200'),
('1BBL08A0', 'IS', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\8a00\8a9e\8ad6', 'choice', FALSE, 2, 3, 'A', 'Thu', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBL08A0&value(crclumcd)=10201200'),
('1BAL09A0', 'IS', U&'\30c7\30fc\30bf\30d9\30fc\30b9\30b7\30b9\30c6\30e0', 'required', FALSE, 2, 2, 'B', 'Tue', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAL09A0&value(crclumcd)=10201200'),
('1BAL10A0', 'IS', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2160', 'required', FALSE, 2, 2, 'B', 'Mon', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAL10A0&value(crclumcd)=10201200');         
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1BBL11A0', 'IS', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2161', 'choice', FALSE, 2, 3, 'A', 'Tue', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBL11A0&value(crclumcd)=10201200'),
('1BCL15A0', 'IS', U&'\30d2\30e5\30fc\30de\30f3\30a4\30f3\30bf\30fc\30d5\30a7\30fc\30b9', 'normal', FALSE, 2, 3, 'A', 'Mon', 1, '0,1,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCL15A0&value(crclumcd)=10201200'),
('1BBL19A0', 'IS', U&'\30cd\30c3\30c8\30ef\30fc\30af\8a2d\8a08', 'choice', FALSE, 2, 3, 'A', 'Wed', 2, '0,1,1,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBL19A0&value(crclumcd)=10201200'),
('1BCL20A0', 'IS', U&'\30aa\30da\30ec\30fc\30b7\30e7\30f3\30ba\30fb\30ea\30b5\30fc\30c1', 'normal', FALSE, 2, 3, 'A', 'Fri', 3, '0,1,1,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCL20A0&value(crclumcd)=10201200'),
('1BAL27A0', 'IS', U&'\60c5\5831\6280\8853\8005\8ad6', 'required', FALSE, 2, 3, 'B', 'Wed', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAL27A0&value(crclumcd)=10201200'),
('1BBL28A0', 'IS', U&'\60c5\5831\30b7\30b9\30c6\30e0\306e\8a08\753b\7b56\5b9a', 'choice', FALSE, 2, 3, 'A', 'Thu', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBL28A0&value(crclumcd)=10201200'),
('1BAL29A0', 'IS', U&'\60c5\5831\30bc\30df\30ca\30fc\30eb', 'required', FALSE, 2, 3, 'A', 'Thu', 4, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAL29A0&value(crclumcd)=10201200'),
('1BBL31A0', 'IS', U&'\30b7\30b9\30c6\30e0\5de5\5b66', 'normal', FALSE, 2, 2, 'A', 'Thu', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBL31A0&value(crclumcd)=10201200'),
('1BBL32A0', 'IS', U&'\60c5\5831\30bb\30ad\30e5\30ea\30c6\30a3\306e\57fa\790e', 'choice', FALSE, 2, 3, 'A', 'Mon', 2, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBL32A0&value(crclumcd)=10201200'),
('1BCL33A0', 'IS', U&'\7d4c\55b6\30b7\30b9\30c6\30e0\8ad6\2160', 'normal', FALSE, 2, 3, 'A', 'Tue', 4, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCL33A0&value(crclumcd)=10201200'),
('1BCM02A0', 'IS', U&'\60c5\5831\691c\7d22', 'normal', FALSE, 2, 3, 'B', 'Mon', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM02A0&value(crclumcd)=10201200'),
('1BCM03A0', 'IS', U&'\4eba\5de5\77e5\80fd', 'normal', FALSE, 2, 3, 'A', 'Thu', 4, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM03A0&value(crclumcd)=10201200'),
('1BCM04A0', 'IS', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30b0\30e9\30d5\30a3\30c3\30af\30b9\2160', 'normal', FALSE, 2, 3, 'B', 'Fri', 2, '0,0,1,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM04A0&value(crclumcd)=10201200'),
('1BCM16A0', 'IS', U&'\69cb\9020\5316\6587\66f8\51e6\7406', 'normal', FALSE, 2, 3, 'B', 'Fri', 3, '0,1,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM16A0&value(crclumcd)=10201200'),
('1BCM17A0', 'IS', U&'\9ad8\4fe1\983c\30b7\30b9\30c6\30e0', 'normal', FALSE, 2, 3, 'B', 'Tue', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM17A0&value(crclumcd)=10201200'),
('1BCM21A0', 'IS', U&'\30e2\30c7\30ea\30f3\30b0\3068\30b7\30df\30e5\30ec\30fc\30b7\30e7\30f3', 'normal', FALSE, 2, 3, 'B', 'Wed', 2, '0,1,1,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM21A0&value(crclumcd)=10201200');              
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1BCM22A0', 'IS', U&'Web\30b5\30fc\30d3\30b9\8ad6', 'normal', FALSE, 2, 3, 'B', 'Fri', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM22A0&value(crclumcd)=10201200'),
('1BCM23A0', 'IS', U&'\7d4c\55b6\30b7\30b9\30c6\30e0\8ad6\2161', 'normal', FALSE, 2, 3, 'B', 'Thu', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM23A0&value(crclumcd)=10201200'),
('1BCM24A0', 'IS', U&'\60c5\5831\30b7\30b9\30c6\30e0\5b66\7279\5225\8b1b\7fa9', 'normal', FALSE, 2, 3, 'B', 'Tue', 5, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM24A0&value(crclumcd)=10201200'),
('1BCM30A0', 'IS', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\969bPBL)', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM30A0&value(crclumcd)=10201200'),
('1BCM41A0', 'IS', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)a', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM41A0&value(crclumcd)=10201200'),
('1BCM42A0', 'IS', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)b', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BCM42A0&value(crclumcd)=10201200'),
('1BAN03A0', 'IS', U&'C\6f14\7fd2\2160', 'required', TRUE, 3, 1, 'B', 'Wed', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAN03A0&value(crclumcd)=10201200'),
('1BBN04A0', 'IS', U&'C\6f14\7fd2\2161', 'choice', TRUE, 3, 2, 'A', 'Thu', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBN04A0&value(crclumcd)=10201200'),
('1BBN05A0', 'IS', U&'Java\6f14\7fd2', 'choice', TRUE, 3, 2, 'B', 'Thu', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBN05A0&value(crclumcd)=10201200'),
('1BBN06A0', 'IS', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\6f14\7fd2', 'choice', TRUE, 2, 3, 'A', 'Fri', 1, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBN06A0&value(crclumcd)=10201200'),
('1BAN07A0', 'IS', U&'\60c5\5831\30b7\30b9\30c6\30e0\57fa\790e\6f14\7fd2', 'required', TRUE, 2, 2, 'B', 'Mon', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAN07A0&value(crclumcd)=10201200'),
('1BAN08A0', 'IS', U&'\60c5\5831\30b7\30b9\30c6\30e0\5c02\9580\6f14\7fd2', 'required', TRUE, 2, 3, 'A', 'Mon', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BAN08A0&value(crclumcd)=10201200'),
('1BBN09A0', 'IS', U&'\60c5\5831\30b7\30b9\30c6\30e0\5fdc\7528\6f14\7fd2', 'choice', TRUE, 2, 3, 'B', 'Tue', 3, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBN09A0&value(crclumcd)=10201200'),
('1BBN11A0', 'IS', U&'CS\30d7\30ed\30b8\30a7\30af\30c8\6f14\7fd2', 'choice', FALSE, 1, 4, 'Z', 'ZZZ', 0, '0,0,1,0,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1BBN11A0&value(crclumcd)=10201200'),
('1CBA01A0', 'IM', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Thu', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA01A0&value(crclumcd)=10201300'),
('1CBA01B0', 'IM', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Thu', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA01B0&value(crclumcd)=10201300');     
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1CBA01C0', 'IM', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'B', 'Mon', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA01C0&value(crclumcd)=10201300'),
('1CCA02A0', 'IM', U&'\7dda\5f62\6570\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCA02A0&value(crclumcd)=10201300'),
('1CBA03A0', 'IM', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA03A0&value(crclumcd)=10201300'),
('1CBA03B0', 'IM', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA03B0&value(crclumcd)=10201300'),
('1CBA03C0', 'IM', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'B', 'Thu', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA03C0&value(crclumcd)=10201300'),
('1CCA04A0', 'IM', U&'\5fae\7a4d\5206\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCA04A0&value(crclumcd)=10201300'),
('1CBA05A0', 'IM', U&'\60c5\5831\6570\5b66', 'choice', FALSE, 2, 2, 'B', 'Tue', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA05A0&value(crclumcd)=10201300'),
('1CCA06A0', 'IM', U&'\5468\6ce2\6570\89e3\6790', 'normal', FALSE, 2, 2, 'A', 'Wed', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCA06A0&value(crclumcd)=10201300'),
('1CCA07A0', 'IM', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Mon', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCA07A0&value(crclumcd)=10201300'),
('1CCA07B0', 'IM', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Mon', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCA07B0&value(crclumcd)=10201300'),
('1CBA08A0', 'IM', U&'\30b0\30e9\30d5\7406\8ad6', 'choice', FALSE, 2, 2, 'A', 'Mon', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA08A0&value(crclumcd)=10201300'),
('1CCA09A0', 'IM', U&'\6570\7406\8a08\753b\6cd5', 'normal', FALSE, 2, 3, 'B', 'Tue', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCA09A0&value(crclumcd)=10201300'),
('1CBA11A0', 'IM', U&'\78ba\7387\30fb\7d71\8a08', 'choice', FALSE, 2, 3, 'A', 'Mon', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBA11A0&value(crclumcd)=10201300'),
('1CAB01A0', 'IM', U&'\30b3\30f3\30d4\30e5\30fc\30bf\5165\9580', 'required', FALSE, 2, 1, 'A', 'Tue', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAB01A0&value(crclumcd)=10201300'),
('1CBB02A0', 'IM', U&'\60c5\5831\901a\4fe1\30cd\30c3\30c8\30ef\30fc\30af', 'choice', FALSE, 2, 2, 'A', 'Tue', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB02A0&value(crclumcd)=10201300'),
('1CBB04A0', 'IM', U&'\30aa\30fc\30c8\30de\30c8\30f3\3068\5f62\5f0f\8a00\8a9e', 'choice', FALSE, 2, 3, 'A', 'Tue', 5, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB04A0&value(crclumcd)=10201300'),
('1CAB05A0', 'IM', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAB05A0&value(crclumcd)=10201300');  
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1CAB05B0', 'IM', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAB05B0&value(crclumcd)=10201300'),
('1CCB07A0', 'IM', U&'\30c7\30a3\30b8\30bf\30eb\56de\8def', 'normal', FALSE, 2, 1, 'B', 'Fri', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB07A0&value(crclumcd)=10201300'),
('1CCB08A0', 'IM', U&'\60c5\5831\51e6\7406\57fa\790e', 'normal', FALSE, 2, 1, 'Z', 'ZZZ', 0, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB08A0&value(crclumcd)=10201300'),
('1CCB10A0', 'IM', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\5165\9580', 'normal', FALSE, 2, 1, 'A', 'Mon', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB10A0&value(crclumcd)=10201300'),
('1CAB11A0', 'IM', U&'\8a08\7b97\6a5f\30a2\30fc\30ad\30c6\30af\30c1\30e3', 'required', FALSE, 2, 2, 'A', 'Fri', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAB11A0&value(crclumcd)=10201300'),
('1CBB12A0', 'IM', U&'\60c5\5831\30bb\30ad\30e5\30ea\30c6\30a3\306e\57fa\790e', 'choice', FALSE, 2, 3, 'A', 'Mon', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB12A0&value(crclumcd)=10201300'),
('1CBB13A0', 'IM', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2160', 'choice', FALSE, 2, 2, 'A', 'Wed', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB13A0&value(crclumcd)=10201300'),
('1CCB14A0', 'IM', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2161', 'normal', FALSE, 2, 3, 'A', 'Tue', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB14A0&value(crclumcd)=10201300'),
('1CCB15A0', 'IM', U&'\30b7\30b9\30c6\30e0\30d7\30ed\30b0\30e9\30e0', 'normal', FALSE, 2, 3, 'A', 'Tue', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB15A0&value(crclumcd)=10201300'),
('1CAB16A0', 'IM', U&'\30aa\30da\30ec\30fc\30c6\30a3\30f3\30b0\30b7\30b9\30c6\30e0', 'required', FALSE, 2, 2, 'B', 'Mon', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAB16A0&value(crclumcd)=10201300'),
('1CBB17A0', 'IM', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\8a00\8a9e\8ad6', 'choice', FALSE, 2, 3, 'B', 'Wed', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB17A0&value(crclumcd)=10201300'),
('1CCB18A0', 'IM', U&'\30a2\30bb\30f3\30d6\30ea\8a00\8a9e', 'normal', FALSE, 2, 2, 'B', 'Thu', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB18A0&value(crclumcd)=10201300'),
('1CCB18B0', 'IM', U&'\30a2\30bb\30f3\30d6\30ea\8a00\8a9e', 'normal', FALSE, 2, 3, 'B', 'Fri', 5, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB18B0&value(crclumcd)=10201300'),
('1CBB20A0', 'IM', U&'\30c7\30fc\30bf\30d9\30fc\30b9\30b7\30b9\30c6\30e0', 'choice', FALSE, 2, 2, 'B', 'Thu', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB20A0&value(crclumcd)=10201300'),
('1CBB21A0', 'IM', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2160', 'choice', FALSE, 2, 2, 'B', 'Mon', 5, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB21A0&value(crclumcd)=10201300'),
('1CBB22A0', 'IM', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2161', 'choice', FALSE, 2, 3, 'A', 'Mon', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBB22A0&value(crclumcd)=10201300');     
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1CCB26A0', 'IM', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB26A0&value(crclumcd)=10201300'),
('1CCB26B0', 'IM', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCB26B0&value(crclumcd)=10201300'),
('1CCL12A0', 'IM', U&'\30e1\30c7\30a3\30a2\30c7\30fc\30bf\8ad6', 'normal', FALSE, 2, 1, 'B', 'Thu', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCL12A0&value(crclumcd)=10201300'),
('1CBL13A0', 'IM', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30b0\30e9\30d5\30a3\30c3\30af\30b9\2160', 'choice', FALSE, 2, 2, 'A', 'Mon', 4, '0,0,0,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBL13A0&value(crclumcd)=10201300'),
('1CBL13B0', 'IM', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30b0\30e9\30d5\30a3\30c3\30af\30b9\2160', 'choice', FALSE, 2, 2, 'A', 'Mon', 3, '0,0,0,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBL13B0&value(crclumcd)=10201300'),
('1CCL14A0', 'IM', U&'\4eba\9593\60c5\5831\5b66', 'normal', FALSE, 2, 2, 'A', 'Thu', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCL14A0&value(crclumcd)=10201300'),
('1CCL15A0', 'IM', U&'\30d2\30e5\30fc\30de\30f3\30a4\30f3\30bf\30fc\30d5\30a7\30fc\30b9', 'normal', FALSE, 2, 3, 'A', 'Thu', 2, '0,1,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCL15A0&value(crclumcd)=10201300'),
('1CBL21A0', 'IM', U&'\753b\50cf\60c5\5831\51e6\7406\2160', 'choice', FALSE, 2, 2, 'B', 'Mon', 3, '0,0,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBL21A0&value(crclumcd)=10201300'),
('1CBL22A0', 'IM', U&'\97f3\97ff\51e6\7406', 'choice', FALSE, 2, 2, 'A', 'Fri', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBL22A0&value(crclumcd)=10201300'),
('1CCL23A0', 'IM', U&'\611f\6027\60c5\5831\51e6\7406', 'normal', FALSE, 2, 2, 'B', 'Fri', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCL23A0&value(crclumcd)=10201300'),
('1CCL24A0', 'IM', U&'\8272\5f69\5b66', 'normal', FALSE, 2, 3, 'B', 'Tue', 5, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCL24A0&value(crclumcd)=10201300'),
('1CAL27A0', 'IM', U&'\60c5\5831\6280\8853\8005\8ad6', 'required', FALSE, 2, 3, 'B', 'Wed', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAL27A0&value(crclumcd)=10201300'),
('1CAL29A0', 'IM', U&'\60c5\5831\30bc\30df\30ca\30fc\30eb', 'required', FALSE, 2, 3, 'B', 'Thu', 4, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAL29A0&value(crclumcd)=10201300'),
('1CCM05A0', 'IM', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30b0\30e9\30d5\30a3\30c3\30af\30b9\2161', 'normal', FALSE, 2, 3, 'B', 'Tue', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM05A0&value(crclumcd)=10201300'),
('1CCM16A0', 'IM', U&'\69cb\9020\5316\6587\66f8\51e6\7406', 'normal', FALSE, 2, 3, 'B', 'Fri', 4, '0,1,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM16A0&value(crclumcd)=10201300'),
('1CCM25A0', 'IM', U&'\753b\50cf\60c5\5831\51e6\7406\2161', 'normal', FALSE, 2, 3, 'A', 'Thu', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM25A0&value(crclumcd)=10201300');       
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1CCM26A0', 'IM', 'CAD', 'normal', FALSE, 2, 3, 'B', 'Fri', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM26A0&value(crclumcd)=10201300'),
('1CCM27A0', 'IM', U&'\97f3\58f0\60c5\5831\51e6\7406', 'normal', FALSE, 2, 3, 'A', 'Fri', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM27A0&value(crclumcd)=10201300'),
('1CCM28A0', 'IM', U&'\30e1\30c7\30a3\30a2\30a4\30f3\30bf\30d5\30a7\30fc\30b9', 'normal', FALSE, 2, 3, 'B', 'Fri', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM28A0&value(crclumcd)=10201300'),
('1CCM29A0', 'IM', U&'Web\30c7\30b6\30a4\30f3', 'normal', FALSE, 2, 3, 'A', 'Wed', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM29A0&value(crclumcd)=10201300'),
('1CCM29B0', 'IM', U&'Web\30c7\30b6\30a4\30f3', 'normal', FALSE, 2, 3, 'A', 'Wed', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM29B0&value(crclumcd)=10201300'),
('1CCM30A0', 'IM', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\969bPBL)', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM30A0&value(crclumcd)=10201300'),
('1CCM41A0', 'IM', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)a', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM41A0&value(crclumcd)=10201300'),
('1CCM42A0', 'IM', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)b', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCM42A0&value(crclumcd)=10201300'),
('B4D001A0', 'IM', U&'\7279\5225\8b1b\7fa9a', 'ignore', FALSE, 1, 1, 'Z', 'ZZZ', 0, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4D001A0&value(crclumcd)=10209ZZZ'),
('B4D002A0', 'IM', U&'\7279\5225\8b1b\7fa9b', 'ignore', FALSE, 1, 1, 'Z', 'ZZZ', 0, '1,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=B4D002A0&value(crclumcd)=10209ZZZ'),
('1CCN01A0', 'IM', U&'\30a2\30cb\30e1\30fc\30b7\30e7\30f3\6f14\7fd2', 'normal', FALSE, 1, 1, 'A', 'Fri', 2, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CCN01A0&value(crclumcd)=10201300'),
('1CAN02A0', 'IM', U&'\60c5\5831\30e1\30c7\30a3\30a2\5165\9580', 'required', FALSE, 1, 1, 'B', 'Fri', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAN02A0&value(crclumcd)=10201300'),
('1CAN03A0', 'IM', U&'C\6f14\7fd2\2160', 'required', TRUE, 3, 1, 'B', 'Wed', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAN03A0&value(crclumcd)=10201300'),
('1CBN04A0', 'IM', U&'C\6f14\7fd2\2161', 'choice', TRUE, 3, 2, 'A', 'Thu', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBN04A0&value(crclumcd)=10201300'),
('1CBN05A0', 'IM', U&'Java\6f14\7fd2', 'choice', TRUE, 3, 2, 'B', 'Thu', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBN05A0&value(crclumcd)=10201300'),
('1CBN06A0', 'IM', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\6f14\7fd2', 'choice', TRUE, 2, 3, 'A', 'Fri', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBN06A0&value(crclumcd)=10201300'),
('1CAN07A0', 'IM', U&'\60c5\5831\30e1\30c7\30a3\30a2\6f14\7fd2\2160', 'required', TRUE, 2, 2, 'B', 'Mon', 1, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAN07A0&value(crclumcd)=10201300');      
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1CAN08A0', 'IM', U&'\60c5\5831\30e1\30c7\30a3\30a2\6f14\7fd2\2161', 'required', TRUE, 2, 3, 'A', 'Tue', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAN08A0&value(crclumcd)=10201300'),
('1CAN09A0', 'IM', U&'\60c5\5831\30e1\30c7\30a3\30a2\6f14\7fd2\2162', 'required', TRUE, 2, 3, 'B', 'Tue', 3, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CAN09A0&value(crclumcd)=10201300'),
('1CBN11A0', 'IM', U&'CS\30d7\30ed\30b8\30a7\30af\30c8\6f14\7fd2', 'choice', FALSE, 1, 4, 'Z', 'ZZZ', 0, '0,0,0,1,0', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1CBN11A0&value(crclumcd)=10201300'),
('1FBA01A0', 'IN', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Thu', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA01A0&value(crclumcd)=10201401'),
('1FBA01B0', 'IN', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Thu', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA01B0&value(crclumcd)=10201401'),
('1FBA01C0', 'IN', U&'\7dda\5f62\6570\5b66\2160', 'choice', FALSE, 2, 1, 'B', 'Mon', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA01C0&value(crclumcd)=10201401'),
('1FCA02A0', 'IN', U&'\7dda\5f62\6570\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCA02A0&value(crclumcd)=10201401'),
('1FBA03A0', 'IN', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA03A0&value(crclumcd)=10201401'),
('1FBA03B0', 'IN', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'A', 'Mon', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA03B0&value(crclumcd)=10201401'),
('1FBA03C0', 'IN', U&'\5fae\7a4d\5206\5b66\2160', 'choice', FALSE, 2, 1, 'B', 'Thu', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA03C0&value(crclumcd)=10201401'),
('1FCA04A0', 'IN', U&'\5fae\7a4d\5206\5b66\2161', 'normal', FALSE, 2, 3, 'B', 'Mon', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCA04A0&value(crclumcd)=10201401'),
('1FBA05A0', 'IN', U&'\60c5\5831\6570\5b66', 'choice', FALSE, 2, 2, 'B', 'Mon', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA05A0&value(crclumcd)=10201401'),
('1FCA07A0', 'IN', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Tue', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCA07A0&value(crclumcd)=10201401'),
('1FCA07B0', 'IN', U&'\5fae\5206\65b9\7a0b\5f0f', 'normal', FALSE, 2, 1, 'B', 'Tue', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCA07B0&value(crclumcd)=10201401'),
('1FBA08A0', 'IN', U&'\30b0\30e9\30d5\7406\8ad6', 'choice', FALSE, 2, 2, 'A', 'Thu', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA08A0&value(crclumcd)=10201401'),
('1FCA09A0', 'IN', U&'\6570\7406\8a08\753b\6cd5', 'normal', FALSE, 2, 3, 'B', 'Tue', 2, '0,1,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCA09A0&value(crclumcd)=10201401'),
('1FBA11A0', 'IN', U&'\78ba\7387\30fb\7d71\8a08', 'choice', FALSE, 2, 3, 'A', 'Tue', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBA11A0&value(crclumcd)=10201401');               
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1FAB01A0', 'IN', U&'\30b3\30f3\30d4\30e5\30fc\30bf\5165\9580', 'required', FALSE, 2, 1, 'A', 'Mon', 4, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAB01A0&value(crclumcd)=10201401'),
('1FAB02A0', 'IN', U&'\60c5\5831\901a\4fe1\30cd\30c3\30c8\30ef\30fc\30af', 'required', FALSE, 2, 2, 'A', 'Tue', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAB02A0&value(crclumcd)=10201401'),
('1FAB05A0', 'IN', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAB05A0&value(crclumcd)=10201401'),
('1FAB05B0', 'IN', U&'\30c6\30af\30cb\30ab\30eb\30e9\30a4\30c6\30a3\30f3\30b0', 'required', FALSE, 2, 1, 'B', 'Thu', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAB05B0&value(crclumcd)=10201401'),
('1FCB07A0', 'IN', U&'\30c7\30a3\30b8\30bf\30eb\56de\8def', 'normal', FALSE, 2, 1, 'B', 'Fri', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB07A0&value(crclumcd)=10201401'),
('1FCB08A0', 'IN', U&'\60c5\5831\51e6\7406\57fa\790e', 'normal', FALSE, 2, 1, 'Z', 'ZZZ', 0, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB08A0&value(crclumcd)=10201401'),
('1FAB11A0', 'IN', U&'\8a08\7b97\6a5f\30a2\30fc\30ad\30c6\30af\30c1\30e3', 'required', FALSE, 2, 2, 'A', 'Fri', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAB11A0&value(crclumcd)=10201401'),
('1FBB13A0', 'IN', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2160', 'choice', FALSE, 2, 2, 'A', 'Wed', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBB13A0&value(crclumcd)=10201401'),
('1FAB16A0', 'IN', U&'\30aa\30da\30ec\30fc\30c6\30a3\30f3\30b0\30b7\30b9\30c6\30e0', 'required', FALSE, 2, 2, 'B', 'Mon', 4, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAB16A0&value(crclumcd)=10201401'),
('1FCB19A0', 'IN', U&'Unix\5165\9580', 'normal', FALSE, 1, 1, 'C', 'Tue', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB19A0&value(crclumcd)=10201401'),
('1FBB20A0', 'IN', U&'\30c7\30fc\30bf\30d9\30fc\30b9\30b7\30b9\30c6\30e0', 'choice', FALSE, 2, 2, 'B', 'Fri', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBB20A0&value(crclumcd)=10201401'),
('1FBB21A0', 'IN', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2160', 'choice', FALSE, 2, 2, 'B', 'Mon', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBB21A0&value(crclumcd)=10201401'),
('1FAB24A0', 'IN', U&'\30cd\30c3\30c8\30ef\30fc\30af\30c7\30b6\30a4\30f3\5165\9580', 'required', FALSE, 1, 1, 'C', 'Mon', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAB24A0&value(crclumcd)=10201401'),
('1FBB25A0', 'IN', U&'\901a\4fe1\7406\8ad6', 'choice', FALSE, 2, 2, 'A', 'Mon', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBB25A0&value(crclumcd)=10201401'),
('1FCB26A0', 'IN', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB26A0&value(crclumcd)=10201401'),
('1FCB26B0', 'IN', U&'\30b3\30f3\30d4\30e5\30fc\30bf\30ea\30c6\30e9\30b7\30fc', 'normal', FALSE, 2, 1, 'A', 'Wed', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB26B0&value(crclumcd)=10201401');       
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1FCB28A0', 'IN', U&'\30c7\30a3\30b8\30bf\30eb\4fe1\53f7\51e6\7406', 'normal', FALSE, 2, 2, 'A', 'Wed', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB28A0&value(crclumcd)=10201401'),
('1FCB29A0', 'IN', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\30ea\30c6\30e9\30b7\30fc(\5165\9580)', 'normal', FALSE, 1, 1, 'D', 'Mon', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB29A0&value(crclumcd)=10201401'),
('1FCB30A0', 'IN', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\30ea\30c6\30e9\30b7\30fc(\8aad\89e3)', 'normal', FALSE, 1, 1, 'F', 'Mon', 4, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCB30A0&value(crclumcd)=10201401'),
('1FBB31A0', 'IN', U&'\60c5\5831\30bb\30ad\30e5\30ea\30c6\30a3\306e\57fa\790e', 'choice', FALSE, 2, 2, 'B', 'Fri', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBB31A0&value(crclumcd)=10201401'),
('1FCL17A0', 'IN', U&'Web\30b5\30a4\30c8\5236\4f5c', 'normal', FALSE, 2, 3, 'A', 'Mon', 4, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCL17A0&value(crclumcd)=10201401'),
('1FCL17B0', 'IN', U&'Web\30b5\30a4\30c8\5236\4f5c', 'normal', FALSE, 2, 3, 'A', 'Sat', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCL17B0&value(crclumcd)=10201401'),
('1FCL18A0', 'IN', U&'\30e2\30d0\30a4\30eb\30b3\30df\30e5\30cb\30b1\30fc\30b7\30e7\30f3', 'normal', FALSE, 2, 3, 'A', 'Mon', 2, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCL18A0&value(crclumcd)=10201401'),
('1FBL19A0', 'IN', U&'\30cd\30c3\30c8\30ef\30fc\30af\8a2d\8a08', 'choice', FALSE, 2, 2, 'B', 'Mon', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBL19A0&value(crclumcd)=10201401'),
('1FCL25A0', 'IN', U&'\30b5\30fc\30d0\69cb\7bc9\7ba1\7406', 'normal', FALSE, 2, 3, 'B', 'Thu', 3, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCL25A0&value(crclumcd)=10201401'),
('1FBL26A0', 'IN', U&'\30cd\30c3\30c8\30ef\30fc\30af\30a2\30d7\30ea\30b1\30fc\30b7\30e7\30f3', 'choice', FALSE, 2, 3, 'B', 'Tue', 3, '0,0,1,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBL26A0&value(crclumcd)=10201401'),
('1FAL27A0', 'IN', U&'\60c5\5831\6280\8853\8005\8ad6', 'required', FALSE, 2, 3, 'B', 'Wed', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAL27A0&value(crclumcd)=10201401'),
('1FAL29A0', 'IN', U&'\60c5\5831\30bc\30df\30ca\30fc\30eb', 'required', FALSE, 2, 3, 'B', 'Thu', 4, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAL29A0&value(crclumcd)=10201401'),
('1FCL34A0', 'IN', U&'\60c5\5831\30bb\30ad\30e5\30ea\30c6\30a3\306e\5fdc\7528', 'normal', FALSE, 2, 3, 'A', 'Mon', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCL34A0&value(crclumcd)=10201401'),
('1FBM11A0', 'IN', U&'\30aa\30fc\30c8\30de\30c8\30f3\3068\5f62\5f0f\8a00\8a9e', 'choice', FALSE, 2, 3, 'A', 'Tue', 5, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBM11A0&value(crclumcd)=10201401'),
('1FCM12A0', 'IN', U&'\30c7\30fc\30bf\69cb\9020\3068\30a2\30eb\30b4\30ea\30ba\30e0\2161', 'normal', FALSE, 2, 3, 'A', 'Tue', 2, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM12A0&value(crclumcd)=10201401'),
('1FCM13A0', 'IN', U&'\30b7\30b9\30c6\30e0\30d7\30ed\30b0\30e9\30e0', 'normal', FALSE, 2, 3, 'A', 'Tue', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM13A0&value(crclumcd)=10201401');         
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1FBM14A0', 'IN', U&'\30d7\30ed\30b0\30e9\30df\30f3\30b0\8a00\8a9e\8ad6', 'choice', FALSE, 2, 3, 'A', 'Thu', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBM14A0&value(crclumcd)=10201401'),
('1FBM15A0', 'IN', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\2161', 'choice', FALSE, 2, 3, 'A', 'Tue', 4, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBM15A0&value(crclumcd)=10201401'),
('1FCM16A0', 'IN', U&'\69cb\9020\5316\6587\66f8\51e6\7406', 'normal', FALSE, 2, 3, 'B', 'Tue', 4, '0,1,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM16A0&value(crclumcd)=10201401'),
('1FCM18A0', 'IN', U&'\30d2\30e5\30fc\30de\30f3\30a4\30f3\30bf\30fc\30d5\30a7\30fc\30b9', 'normal', FALSE, 2, 3, 'A', 'Fri', 3, '0,1,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM18A0&value(crclumcd)=10201401'),
('1FCM19A0', 'IN', U&'\30e1\30c7\30a3\30a2\901a\4fe1\6982\8ad6', 'normal', FALSE, 2, 3, 'B', 'Tue', 1, '0,1,1,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM19A0&value(crclumcd)=10201401'),
('1FCM20A0', 'IN', U&'\30aa\30da\30ec\30fc\30b7\30e7\30f3\30ba\30fb\30ea\30b5\30fc\30c1', 'normal', FALSE, 2, 3, 'A', 'Fri', 4, '0,1,0,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM20A0&value(crclumcd)=10201401'),
('1FCM21A0', 'IN', U&'\30e2\30c7\30ea\30f3\30b0\3068\30b7\30df\30e5\30ec\30fc\30b7\30e7\30f3', 'normal', FALSE, 2, 3, 'B', 'Mon', 3, '0,1,0,1,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM21A0&value(crclumcd)=10201401'),
('1FCM30A0', 'IN', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\969bPBL)', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM30A0&value(crclumcd)=10201401'),
('1FCM41A0', 'IN', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)a', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM41A0&value(crclumcd)=10201401'),
('1FCM42A0', 'IN', U&'\60c5\5831\79d1\5b66\5b9f\8df5\6f14\7fd2(\56fd\5185PBL)b', 'normal', FALSE, 1, 2, 'Z', 'ZZZ', 0, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCM42A0&value(crclumcd)=10201401'),
('1FAN03A0', 'IN', U&'C\6f14\7fd2\2160', 'required', TRUE, 3, 1, 'B', 'Wed', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAN03A0&value(crclumcd)=10201401'),
('1FBN04A0', 'IN', U&'C\6f14\7fd2\2161', 'choice', TRUE, 3, 2, 'A', 'Thu', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBN04A0&value(crclumcd)=10201401'),
('1FBN05A0', 'IN', U&'Java\6f14\7fd2', 'choice', TRUE, 3, 2, 'B', 'Tue', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBN05A0&value(crclumcd)=10201401'),
('1FBN06A0', 'IN', U&'\30bd\30d5\30c8\30a6\30a7\30a2\5de5\5b66\6f14\7fd2', 'choice', TRUE, 3, 1, 'A', 'Fri', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBN06A0&value(crclumcd)=10201401'),
('1FAN07A0', 'IN', U&'\30cd\30c3\30c8\30ef\30fc\30af\30c7\30b6\30a4\30f3\57fa\790e\6f14\7fd2', 'required', TRUE, 2, 2, 'B', 'Thu', 1, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAN07A0&value(crclumcd)=10201401'),
('1FAN08A0', 'IN', U&'\30cd\30c3\30c8\30ef\30fc\30af\30c7\30b6\30a4\30f3\5c02\9580\6f14\7fd2', 'required', TRUE, 2, 3, 'A', 'Thu', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FAN08A0&value(crclumcd)=10201401');   
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('1FAN09A0', 'IN', U&'\30cd\30c3\30c8\30ef\30fc\30af\30fb\30bb\30ad\30e5\30ea\30c6\30a3\6f14\7fd2', 'normal', TRUE, 2, 3, 'B', 'Fri', 3, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FCN09A0&value(crclumcd)=10201401'),
('1FBN11A0', 'IN', U&'CS\30d7\30ed\30b8\30a7\30af\30c8\6f14\7fd2', 'choice', FALSE, 1, 4, 'Z', 'ZZZ', 0, '0,0,0,0,1', 'https://www.portal.oit.ac.jp/CAMJWEB/slbssbdr.do?value(risyunen)=2024&value(semekikn)=1&value(kougicd)=1FBN11A0&value(crclumcd)=10201401');
CREATE MEMORY TABLE "PUBLIC"."USERSETTING"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 5) NOT NULL,
    "MYNUMBER" CHARACTER VARYING NOT NULL,
    "USERNAME" CHARACTER VARYING,
    "USERROLE" CHARACTER VARYING(50) NOT NULL,
    "MAIL" CHARACTER VARYING NOT NULL,
    "MYPASS" CHARACTER VARYING NOT NULL,
    "ISACTIVE" BOOLEAN
);             
ALTER TABLE "PUBLIC"."USERSETTING" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_8" PRIMARY KEY("ID");  
-- 4 +/- SELECT COUNT(*) FROM PUBLIC.USERSETTING;             
INSERT INTO "PUBLIC"."USERSETTING" VALUES
(1, 'B22999', U&'\307b\3093\30601', 'STUDENT', 'e1b22999@oit.ac.jp', '$2y$05$2okqcneYBBlPb39NXazmKuuLby7vb8Cp3wTAebrhEVCrydKwxB2R6', FALSE),
(2, 'B22000', U&'\307b\3093\30602', 'STUDENT', 'e1b22000@oit.ac.jp', '$2y$05$2okqcneYBBlPb39NXazmKuuLby7vb8Cp3wTAebrhEVCrydKwxB2R6', FALSE),
(3, 'B00999', U&'\307b\3093\30603', 'TEACHER', 'e1b00999@oit.ac.jp', '$2y$05$2okqcneYBBlPb39NXazmKuuLby7vb8Cp3wTAebrhEVCrydKwxB2R6', FALSE),
(4, 'B00000', U&'\307b\3093\30604', 'TEACHER', 'e1b00000@oit.ac.jp', '$2y$05$2okqcneYBBlPb39NXazmKuuLby7vb8Cp3wTAebrhEVCrydKwxB2R6', FALSE);             
CREATE MEMORY TABLE "PUBLIC"."EVENTS"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 6) NOT NULL,
    "MYNUMBER" CHARACTER VARYING,
    "TITLE" CHARACTER VARYING(255) NOT NULL,
    "DESCRIPTION" CHARACTER VARYING,
    "STARTDATE" DATE NOT NULL,
    "ENDDATE" DATE NOT NULL,
    "STARTTIME" TIME,
    "ENDTIME" TIME,
    "LOCATION" CHARACTER VARYING(255)
);   
ALTER TABLE "PUBLIC"."EVENTS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_7" PRIMARY KEY("ID");       
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.EVENTS;  
INSERT INTO "PUBLIC"."EVENTS" VALUES
(1, 'B22999', U&'\4f1a\8b70', U&'\65b0\3057\3044\30d7\30ed\30b8\30a7\30af\30c8\306e\30ad\30c3\30af\30aa\30d5\30df\30fc\30c6\30a3\30f3\30b0', DATE '2024-11-10', DATE '2024-11-10', TIME '10:00:00', TIME '11:00:00', U&'\4f1a\8b70\5ba4A'),
(2, 'B22999', U&'\52c9\5f37\4f1a', U&'\30c7\30fc\30bf\30d9\30fc\30b9\306e\6b63\898f\5316\306b\95a2\3059\308b\52c9\5f37\4f1a', DATE '2024-11-12', DATE '2024-11-12', TIME '14:00:00', TIME '15:30:00', NULL),
(3, 'B22999', U&'\51fa\5f35', U&'\6771\4eac\3067\306e\30af\30e9\30a4\30a2\30f3\30c8\8a2a\554f', DATE '2024-11-15', DATE '2024-11-16', TIME '10:00:00', TIME '10:30:00', U&'\6771\4eac\30aa\30d5\30a3\30b9'),
(4, 'B22000', U&'\30d7\30ec\30bc\30f3', U&'\6771\4eac\3067\306e\30af\30e9\30a4\30a2\30f3\30c8\8a2a\554f', DATE '2024-11-15', DATE '2024-11-16', TIME '10:00:00', TIME '10:30:00', U&'\6771\4eac\30aa\30d5\30a3\30b9'),
(5, 'B22999', U&'\4f1a\8b70', U&'\6771\4eac\3067\306e\30af\30e9\30a4\30a2\30f3\30c8\3068\4f1a\8b70', DATE '2024-11-15', DATE '2024-11-16', TIME '10:00:00', TIME '10:30:00', U&'\6771\4eac\30aa\30d5\30a3\30b9');      
CREATE MEMORY TABLE "PUBLIC"."TIMETABLE"(
    "MYNUMBER" CHARACTER VARYING NOT NULL,
    "MON1" CHARACTER VARYING,
    "MON2" CHARACTER VARYING,
    "MON3" CHARACTER VARYING,
    "MON4" CHARACTER VARYING,
    "MON5" CHARACTER VARYING,
    "TUE1" CHARACTER VARYING,
    "TUE2" CHARACTER VARYING,
    "TUE3" CHARACTER VARYING,
    "TUE4" CHARACTER VARYING,
    "TUE5" CHARACTER VARYING,
    "WED1" CHARACTER VARYING,
    "WED2" CHARACTER VARYING,
    "WED3" CHARACTER VARYING,
    "WED4" CHARACTER VARYING,
    "WED5" CHARACTER VARYING,
    "THU1" CHARACTER VARYING,
    "THU2" CHARACTER VARYING,
    "THU3" CHARACTER VARYING,
    "THU4" CHARACTER VARYING,
    "THU5" CHARACTER VARYING,
    "FRI1" CHARACTER VARYING,
    "FRI2" CHARACTER VARYING,
    "FRI3" CHARACTER VARYING,
    "FRI4" CHARACTER VARYING,
    "FRI5" CHARACTER VARYING,
    "SAT1" CHARACTER VARYING,
    "SAT2" CHARACTER VARYING,
    "SAT3" CHARACTER VARYING,
    "SAT4" CHARACTER VARYING,
    "SAT5" CHARACTER VARYING,
    "SHOWSATURDAY" BOOLEAN DEFAULT TRUE
);          
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A" PRIMARY KEY("MYNUMBER");              
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.TIMETABLE;               
INSERT INTO "PUBLIC"."TIMETABLE" VALUES
('B22999', NULL, NULL, NULL, NULL, NULL, '1BCA09A0', NULL, '1BBN09A0', '1BBN09A0', NULL, '1BAL27A0', NULL, NULL, NULL, NULL, NULL, NULL, '1BCM23A0', '1BAL29A0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TRUE);            
CREATE MEMORY TABLE "PUBLIC"."TODOS"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 2) NOT NULL,
    "MYNUMBER" CHARACTER VARYING,
    "TITLE" CHARACTER VARYING(255) NOT NULL,
    "DESCRIPTION" CHARACTER VARYING,
    "COMPLETED" BOOLEAN DEFAULT FALSE
);              
ALTER TABLE "PUBLIC"."TODOS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4" PRIMARY KEY("ID");        
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.TODOS;   
INSERT INTO "PUBLIC"."TODOS" VALUES
(1, 'B22999', U&'\7814\7a76\767a\8868', NULL, FALSE);    
CREATE MEMORY TABLE "PUBLIC"."PERMISSIONS"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 3) NOT NULL,
    "REQUESTERNUMBER" CHARACTER VARYING,
    "TARGETNUMBER" CHARACTER VARYING,
    "ISAPPROVED" BOOLEAN DEFAULT NULL
);             
ALTER TABLE "PUBLIC"."PERMISSIONS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_C" PRIMARY KEY("ID");  
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.PERMISSIONS;             
INSERT INTO "PUBLIC"."PERMISSIONS" VALUES
(1, 'B22000', 'B00000', TRUE),
(2, 'B00000', 'B22000', NULL);     
CREATE MEMORY TABLE "PUBLIC"."ASSIGNMENT"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 2) NOT NULL,
    "SCHEDULEID" CHARACTER VARYING NOT NULL,
    "USERID" CHARACTER VARYING NOT NULL
);
ALTER TABLE "PUBLIC"."ASSIGNMENT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_5A" PRIMARY KEY("ID");  
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.ASSIGNMENT;              
INSERT INTO "PUBLIC"."ASSIGNMENT" VALUES
(1, '1BBN09A0', 'B00000');          
CREATE MEMORY TABLE "PUBLIC"."LESSONNUMBER"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 85) NOT NULL,
    "LESSONYEAR" INTEGER NOT NULL,
    "LESSONCOUNT" INTEGER NOT NULL,
    "DAYOFWEEK" ENUM('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'ZZZ') NOT NULL,
    "TIMING" CHARACTER VARYING NOT NULL,
    "LESSONDATE" DATE NOT NULL
);
ALTER TABLE "PUBLIC"."LESSONNUMBER" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_6" PRIMARY KEY("ID"); 
-- 84 +/- SELECT COUNT(*) FROM PUBLIC.LESSONNUMBER;           
INSERT INTO "PUBLIC"."LESSONNUMBER" VALUES
(1, 2024, 1, 'Mon', 'B', DATE '2024-09-23'),
(2, 2024, 2, 'Mon', 'B', DATE '2024-09-30'),
(3, 2024, 3, 'Mon', 'B', DATE '2024-10-07'),
(4, 2024, 4, 'Mon', 'B', DATE '2024-10-14'),
(5, 2024, 5, 'Mon', 'B', DATE '2024-10-21'),
(6, 2024, 6, 'Mon', 'B', DATE '2024-10-28'),
(7, 2024, 7, 'Mon', 'B', DATE '2024-11-11'),
(8, 2024, 8, 'Mon', 'B', DATE '2024-11-18'),
(9, 2024, 9, 'Mon', 'B', DATE '2024-11-25'),
(10, 2024, 10, 'Mon', 'B', DATE '2024-12-02'),
(11, 2024, 11, 'Mon', 'B', DATE '2024-12-09'),
(12, 2024, 12, 'Mon', 'B', DATE '2024-12-16'),
(13, 2024, 13, 'Mon', 'B', DATE '2024-01-06'),
(14, 2024, 14, 'Mon', 'B', DATE '2024-01-20'),
(15, 2024, 1, 'Tue', 'B', DATE '2024-09-24'),
(16, 2024, 2, 'Tue', 'B', DATE '2024-10-01'),
(17, 2024, 3, 'Tue', 'B', DATE '2024-10-08'),
(18, 2024, 4, 'Tue', 'B', DATE '2024-10-15'),
(19, 2024, 5, 'Tue', 'B', DATE '2024-10-22'),
(20, 2024, 6, 'Tue', 'B', DATE '2024-10-29'),
(21, 2024, 7, 'Tue', 'B', DATE '2024-11-12'),
(22, 2024, 8, 'Tue', 'B', DATE '2024-11-19'),
(23, 2024, 9, 'Tue', 'B', DATE '2024-11-26'),
(24, 2024, 10, 'Tue', 'B', DATE '2024-12-03'),
(25, 2024, 11, 'Tue', 'B', DATE '2024-12-10'),
(26, 2024, 12, 'Tue', 'B', DATE '2024-12-17'),
(27, 2024, 13, 'Tue', 'B', DATE '2024-01-07'),
(28, 2024, 14, 'Tue', 'B', DATE '2024-01-14'),
(29, 2024, 1, 'Wed', 'B', DATE '2024-09-25'),
(30, 2024, 2, 'Wed', 'B', DATE '2024-10-02'),
(31, 2024, 3, 'Wed', 'B', DATE '2024-10-09'),
(32, 2024, 4, 'Wed', 'B', DATE '2024-10-16'),
(33, 2024, 5, 'Wed', 'B', DATE '2024-10-23'),
(34, 2024, 6, 'Wed', 'B', DATE '2024-11-06'),
(35, 2024, 7, 'Wed', 'B', DATE '2024-11-13'),
(36, 2024, 8, 'Wed', 'B', DATE '2024-11-20'),
(37, 2024, 9, 'Wed', 'B', DATE '2024-11-27'),
(38, 2024, 10, 'Wed', 'B', DATE '2024-12-04'),
(39, 2024, 11, 'Wed', 'B', DATE '2024-12-11'),
(40, 2024, 12, 'Wed', 'B', DATE '2024-12-18'),
(41, 2024, 13, 'Wed', 'B', DATE '2024-01-08'),
(42, 2024, 14, 'Wed', 'B', DATE '2024-01-15'),
(43, 2024, 1, 'Thu', 'B', DATE '2024-09-19'),
(44, 2024, 2, 'Thu', 'B', DATE '2024-09-26'),
(45, 2024, 3, 'Thu', 'B', DATE '2024-10-03'),
(46, 2024, 4, 'Thu', 'B', DATE '2024-10-10'),
(47, 2024, 5, 'Thu', 'B', DATE '2024-10-17'),
(48, 2024, 6, 'Thu', 'B', DATE '2024-10-24'),
(49, 2024, 7, 'Thu', 'B', DATE '2024-11-07'),
(50, 2024, 8, 'Thu', 'B', DATE '2024-11-14'),
(51, 2024, 9, 'Thu', 'B', DATE '2024-11-21'),
(52, 2024, 10, 'Thu', 'B', DATE '2024-11-28'),
(53, 2024, 11, 'Thu', 'B', DATE '2024-12-05'),
(54, 2024, 12, 'Thu', 'B', DATE '2024-12-19'),
(55, 2024, 13, 'Thu', 'B', DATE '2024-01-09'),
(56, 2024, 14, 'Thu', 'B', DATE '2024-01-16'),
(57, 2024, 1, 'Fri', 'B', DATE '2024-09-20'),
(58, 2024, 2, 'Fri', 'B', DATE '2024-09-27'),
(59, 2024, 3, 'Fri', 'B', DATE '2024-10-04'),
(60, 2024, 4, 'Fri', 'B', DATE '2024-10-11'),
(61, 2024, 5, 'Fri', 'B', DATE '2024-10-18'),
(62, 2024, 6, 'Fri', 'B', DATE '2024-10-25'),
(63, 2024, 7, 'Fri', 'B', DATE '2024-11-08'),
(64, 2024, 8, 'Fri', 'B', DATE '2024-11-15'),
(65, 2024, 9, 'Fri', 'B', DATE '2024-11-22'),
(66, 2024, 10, 'Fri', 'B', DATE '2024-11-29'),
(67, 2024, 11, 'Fri', 'B', DATE '2024-12-06'),
(68, 2024, 12, 'Fri', 'B', DATE '2024-12-20'),
(69, 2024, 13, 'Fri', 'B', DATE '2024-01-10'),
(70, 2024, 14, 'Fri', 'B', DATE '2024-01-17'),
(71, 2024, 1, 'Sat', 'B', DATE '2024-09-21'),
(72, 2024, 2, 'Sat', 'B', DATE '2024-09-28'),
(73, 2024, 3, 'Sat', 'B', DATE '2024-10-05'),
(74, 2024, 4, 'Sat', 'B', DATE '2024-10-12'),
(75, 2024, 5, 'Sat', 'B', DATE '2024-10-19'),
(76, 2024, 6, 'Sat', 'B', DATE '2024-10-26'),
(77, 2024, 7, 'Sat', 'B', DATE '2024-11-09'),
(78, 2024, 8, 'Sat', 'B', DATE '2024-11-16'),
(79, 2024, 9, 'Sat', 'B', DATE '2024-11-30'),
(80, 2024, 10, 'Sat', 'B', DATE '2024-12-07'),
(81, 2024, 11, 'Sat', 'B', DATE '2024-12-14'),
(82, 2024, 12, 'Sat', 'B', DATE '2024-12-21'),
(83, 2024, 13, 'Sat', 'B', DATE '2024-01-11'),
(84, 2024, 14, 'Sat', 'B', DATE '2024-01-18');   
CREATE MEMORY TABLE "PUBLIC"."ASSIGNMENTTASK"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 2) NOT NULL,
    "LESSONCOUNT" INTEGER NOT NULL,
    "ASSIGNMENTID" INTEGER NOT NULL,
    "DETAIL" CHARACTER VARYING,
    "CONTENT" CHARACTER VARYING,
    "DEADLINE" DATE
);
ALTER TABLE "PUBLIC"."ASSIGNMENTTASK" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_9" PRIMARY KEY("ID");               
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.ASSIGNMENTTASK;          
INSERT INTO "PUBLIC"."ASSIGNMENTTASK" VALUES
(1, 8, 1, U&'\307e\305a\57fa\672c\52d5\4f5c\306b\3064\3044\3066\5b66\3076', U&'\3058\3083\3093\3051\3093\30b2\30fc\30e0\3092\4f5c\6210\3002\8a73\7d30\306f\6388\696d\30da\30fc\30b8', DATE '2024-10-01');       
CREATE MEMORY TABLE "PUBLIC"."TEAM"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 4) NOT NULL,
    "TEAMNAME" CHARACTER VARYING NOT NULL,
    "TEAMOWNER" CHARACTER VARYING NOT NULL,
    "TEAMTYPE" CHARACTER VARYING NOT NULL,
    "TEAMDESCRIPTION" CHARACTER VARYING,
    "TEAMCODE" CHARACTER VARYING
);            
ALTER TABLE "PUBLIC"."TEAM" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" PRIMARY KEY("ID");         
-- 3 +/- SELECT COUNT(*) FROM PUBLIC.TEAM;    
INSERT INTO "PUBLIC"."TEAM" VALUES
(1, U&'\60c5\5831\30b7\30b9\30c6\30e0\5fdc\7528\6f14\7fd2', 'B22999', 'public', U&'\30c6\30b9\30c8\7528\306e\30c1\30fc\30e0\3067\3059\3002', NULL),
(2, U&'C\6f14\7fd2', 'B00999', 'public', NULL, NULL),
(3, U&'Java\6f14\7fd2', 'B22999', 'private', U&'\30c6\30b9\30c8\7528\306e\30c1\30fc\30e0\3067\3059\3002', 'edka9#1');         
CREATE MEMORY TABLE "PUBLIC"."TEAMMEMBER"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 6) NOT NULL,
    "TEAMID" INTEGER NOT NULL,
    "MEMBERID" CHARACTER VARYING NOT NULL
);            
ALTER TABLE "PUBLIC"."TEAMMEMBER" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_E" PRIMARY KEY("ID");   
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.TEAMMEMBER;              
INSERT INTO "PUBLIC"."TEAMMEMBER" VALUES
(1, 1, 'B22999'),
(2, 1, 'B22000'),
(3, 2, 'B00999'),
(4, 2, 'B22999'),
(5, 3, 'B22999');       
CREATE MEMORY TABLE "PUBLIC"."TEAMCHAT"(
    "ID" BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 2) NOT NULL,
    "TEAMID" INTEGER NOT NULL,
    "SENDERID" CHARACTER VARYING NOT NULL,
    "MESSAGE" CHARACTER VARYING,
    "MEDIAURL" CHARACTER VARYING,
    "MEDIATYPE" CHARACTER VARYING,
    "SENDTIME" TIMESTAMP NOT NULL
); 
ALTER TABLE "PUBLIC"."TEAMCHAT" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_CB" PRIMARY KEY("ID");    
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.TEAMCHAT;
INSERT INTO "PUBLIC"."TEAMCHAT" VALUES
(1, 1, 'B22999', U&'\3053\3093\306b\3061\306f', NULL, NULL, TIMESTAMP '2024-01-05 21:00:00');         
ALTER TABLE "PUBLIC"."LESSONNUMBER" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_66" CHECK("LESSONCOUNT" BETWEEN 1 AND 14) NOCHECK;    
ALTER TABLE "PUBLIC"."ASSIGNMENTTASK" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_99" CHECK("LESSONCOUNT" BETWEEN 1 AND 14) NOCHECK;  
ALTER TABLE "PUBLIC"."USERSETTING" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_81" UNIQUE("MYNUMBER");
ALTER TABLE "PUBLIC"."TEAM" ADD CONSTRAINT "PUBLIC"."FK_TEAMOWNER" FOREIGN KEY("TEAMOWNER") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;          
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B" FOREIGN KEY("MON4") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK; 
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101" FOREIGN KEY("TUE2") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;              
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_0" FOREIGN KEY("TUE3") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A9" FOREIGN KEY("MON1") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;    
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_2" FOREIGN KEY("TUE5") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_1" FOREIGN KEY("TUE4") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_4" FOREIGN KEY("WED2") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_3" FOREIGN KEY("WED1") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TODOS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4C" FOREIGN KEY("MYNUMBER") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;         
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_23" FOREIGN KEY("MYNUMBER") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") NOCHECK;              
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_22" FOREIGN KEY("SAT5") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_21" FOREIGN KEY("SAT4") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_20" FOREIGN KEY("SAT3") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."EVENTS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_7A" FOREIGN KEY("MYNUMBER") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;        
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966" FOREIGN KEY("MON3") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;  
ALTER TABLE "PUBLIC"."TEAMMEMBER" ADD CONSTRAINT "PUBLIC"."FK_MEMBER" FOREIGN KEY("MEMBERID") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;        
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_6" FOREIGN KEY("WED4") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_5" FOREIGN KEY("WED3") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_8" FOREIGN KEY("THU1") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_7" FOREIGN KEY("WED5") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_9" FOREIGN KEY("THU2") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;            
ALTER TABLE "PUBLIC"."ASSIGNMENT" ADD CONSTRAINT "PUBLIC"."FK_SCHEDULE" FOREIGN KEY("SCHEDULEID") REFERENCES "PUBLIC"."SCHEDULE"("ID") ON DELETE CASCADE NOCHECK;             
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_19" FOREIGN KEY("SAT2") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_18" FOREIGN KEY("SAT1") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_17" FOREIGN KEY("FRI5") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_16" FOREIGN KEY("FRI4") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_15" FOREIGN KEY("FRI3") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_14" FOREIGN KEY("FRI2") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_13" FOREIGN KEY("FRI1") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_12" FOREIGN KEY("THU5") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_11" FOREIGN KEY("THU4") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B101_10" FOREIGN KEY("THU3") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;           
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A96" FOREIGN KEY("MON2") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;   
ALTER TABLE "PUBLIC"."TEAMCHAT" ADD CONSTRAINT "PUBLIC"."FK_TEAMCHAT" FOREIGN KEY("TEAMID") REFERENCES "PUBLIC"."TEAM"("ID") ON DELETE CASCADE NOCHECK;       
ALTER TABLE "PUBLIC"."TEAMMEMBER" ADD CONSTRAINT "PUBLIC"."FK_TEAM" FOREIGN KEY("TEAMID") REFERENCES "PUBLIC"."TEAM"("ID") ON DELETE CASCADE NOCHECK;         
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B10" FOREIGN KEY("TUE1") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;               
ALTER TABLE "PUBLIC"."ASSIGNMENTTASK" ADD CONSTRAINT "PUBLIC"."FK_ASSIGNMENT" FOREIGN KEY("ASSIGNMENTID") REFERENCES "PUBLIC"."ASSIGNMENT"("ID") ON DELETE CASCADE NOCHECK;   
ALTER TABLE "PUBLIC"."ASSIGNMENT" ADD CONSTRAINT "PUBLIC"."FK_USER" FOREIGN KEY("USERID") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;            
ALTER TABLE "PUBLIC"."PERMISSIONS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_C3" FOREIGN KEY("REQUESTERNUMBER") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;            
ALTER TABLE "PUBLIC"."TIMETABLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_A966B1" FOREIGN KEY("MON5") REFERENCES "PUBLIC"."SCHEDULE"("ID") NOCHECK;
ALTER TABLE "PUBLIC"."TEAMCHAT" ADD CONSTRAINT "PUBLIC"."FK_SENDER" FOREIGN KEY("SENDERID") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;          
ALTER TABLE "PUBLIC"."PERMISSIONS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_C3E" FOREIGN KEY("TARGETNUMBER") REFERENCES "PUBLIC"."USERSETTING"("MYNUMBER") ON DELETE CASCADE NOCHECK;              
