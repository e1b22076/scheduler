INSERT INTO chamber (userName,chamberName) VALUES ('ほんだ','秘密の小部屋');
INSERT INTO chamber (userName,chamberName) VALUES ('いがき','1602');
INSERT INTO chamber (userName,chamberName) VALUES ('ふくやす','マリーナシティ');
INSERT INTO userinfo (userName,age,height) VALUES ('いがき',30,176.1);
INSERT INTO userinfo (userName,age,height) VALUES ('ほんだ',18,172.3);
INSERT INTO userinfo (userName,age,height) VALUES ('ふくやす',NULL,199.9);
INSERT INTO fruit (name,price) VALUES ('巨峰',1000);
INSERT INTO fruit (name,price) VALUES ('桃',600);
INSERT INTO fruit (name,price) VALUES ('なし',200);
INSERT INTO fruit (name,price) VALUES ('りんご',150);
INSERT INTO fruit (name,price) VALUES ('かき',180);
INSERT INTO fruit (name,price) VALUES ('マスカット',550);

INSERT INTO events (title, description, start_year, start_month, start_day, start_time, end_time, location, is_all_day) VALUES
('会議', '新しいプロジェクトのキックオフミーティング', 2024, 11, 10, '10:00:00', '11:00:00', '会議室A', FALSE),
('勉強会', 'データベースの正規化に関する勉強会', 2024, 11, 12, '14:00:00', NULL, NULL, FALSE),
('出張', '東京でのクライアント訪問', 2024, 11, 15, NULL, NULL, '東京オフィス', TRUE);
