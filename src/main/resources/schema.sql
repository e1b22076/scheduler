CREATE TABLE schedule (
    id  VARCHAR PRIMARY KEY,
    --↑主キー。こちらでIDを設定。
    department VARCHAR NOT NULL,
    -- ↑学科。ID～IN OR English OR Science OR Humanities OR Career OR Sports
    className VARCHAR NOT NULL,
    -- ↑授業名。フルネームで。
    attribute VARCHAR NOT NULL,
    -- ↑科目属性(必修:required 選択必修:choice 通常:normal CS選択必修:CSchoice 卒業単位数に含まない:ignore)
    continuous BOOLEAN NOT NULL,
    --↑連続科目か否か。連続科目ならtrue。連続科目でないならfalseをいれる。
    credit INT NOT NULL,
    --↑単位数
    grade INT NOT NULL,
    --↑履修可能最低年次
    timing VARCHAR NOT NULL,
    --↑いつ履修するか？
    --前期A,後期B,
    --前期前半C,前期後半D,後期前半E,後期後半F
    --期間外Z
    DayofWeek VARCHAR NOT NULL,
    --Mon,Tue,Wed,Thu,Fri,Sat,ZZZ(期間外)
    DayTime Int NOT NULL,
    --何時間目か。連続科目は始まる時間を(期間外は0)
    otherClass VARCHAR NOT NULL,
    --'ID,IC,IS,IM,IN'で記述していく。1or0で。
    --自分自身は1で。
    --1なら履修可。0なら履修不可。
    --他学科履修可能をどうやって表現する？
    syllabusURL VARCHAR NOT NULL
);

CREATE TABLE userSetting(
  id IDENTITY,
  --一意識別可能なID
  myNumber VARCHAR NOT NULL UNIQUE,
  --学籍番号
  userName VARCHAR,
  --ユーザーネーム
  userRole varchar(50) NOT NULL,
  --ユーザーロール
  mail VARCHAR NOT NULL,
  --メールアドレス
  myPass VARCHAR NOT NULL,
  --パスワード
  isActive BOOLEAN
  --オンライン状況
);


CREATE TABLE events (
    id IDENTITY,
    myNumber VARCHAR ,
    -- userSetting の myNumber を主キーかつ外部キーとして使用,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    startDate DATE NOT NULL, -- 開始日 (年月日を1つにまとめる)
    endDate DATE NOT NULL, -- 終了日 (年月日を1つにまとめる)
    startTime Time,
    endTime Time,
    location VARCHAR(255),
    FOREIGN KEY (myNumber) REFERENCES userSetting(myNumber) ON DELETE CASCADE
);

CREATE TABLE timeTable(
  myNumber VARCHAR PRIMARY KEY, --学籍番号
  mon1 VARCHAR,
  mon2 VARCHAR,
  mon3 VARCHAR,
  mon4 VARCHAR,
  mon5 VARCHAR,
  tue1 VARCHAR,
  tue2 VARCHAR,
  tue3 VARCHAR,
  tue4 VARCHAR,
  tue5 VARCHAR,
  wed1 VARCHAR,
  wed2 VARCHAR,
  wed3 VARCHAR,
  wed4 VARCHAR,
  wed5 VARCHAR,
  thu1 VARCHAR,
  thu2 VARCHAR,
  thu3 VARCHAR,
  thu4 VARCHAR,
  thu5 VARCHAR,
  fri1 VARCHAR,
  fri2 VARCHAR,
  fri3 VARCHAR,
  fri4 VARCHAR,
  fri5 VARCHAR,
  sat1 VARCHAR,
  sat2 VARCHAR,
  sat3 VARCHAR,
  sat4 VARCHAR,
  sat5 VARCHAR,
  showSaturday BOOLEAN DEFAULT TRUE, -- 土曜日表示の設定
  FOREIGN KEY(mon1) REFERENCES schedule(id),
  FOREIGN KEY(mon2) REFERENCES schedule(id),
  FOREIGN KEY(mon3) REFERENCES schedule(id),
  FOREIGN KEY(mon4) REFERENCES schedule(id),
  FOREIGN KEY(mon5) REFERENCES schedule(id),
  FOREIGN KEY(tue1) REFERENCES schedule(id),
  FOREIGN KEY(tue2) REFERENCES schedule(id),
  FOREIGN KEY(tue3) REFERENCES schedule(id),
  FOREIGN KEY(tue4) REFERENCES schedule(id),
  FOREIGN KEY(tue5) REFERENCES schedule(id),
  FOREIGN KEY(wed1) REFERENCES schedule(id),
  FOREIGN KEY(wed2) REFERENCES schedule(id),
  FOREIGN KEY(wed3) REFERENCES schedule(id),
  FOREIGN KEY(wed4) REFERENCES schedule(id),
  FOREIGN KEY(wed5) REFERENCES schedule(id),
  FOREIGN KEY(thu1) REFERENCES schedule(id),
  FOREIGN KEY(thu2) REFERENCES schedule(id),
  FOREIGN KEY(thu3) REFERENCES schedule(id),
  FOREIGN KEY(thu4) REFERENCES schedule(id),
  FOREIGN KEY(thu5) REFERENCES schedule(id),
  FOREIGN KEY(fri1) REFERENCES schedule(id),
  FOREIGN KEY(fri2) REFERENCES schedule(id),
  FOREIGN KEY(fri3) REFERENCES schedule(id),
  FOREIGN KEY(fri4) REFERENCES schedule(id),
  FOREIGN KEY(fri5) REFERENCES schedule(id),
  FOREIGN KEY(sat1) REFERENCES schedule(id),
  FOREIGN KEY(sat2) REFERENCES schedule(id),
  FOREIGN KEY(sat3) REFERENCES schedule(id),
  FOREIGN KEY(sat4) REFERENCES schedule(id),
  FOREIGN KEY(sat5) REFERENCES schedule(id),
  FOREIGN KEY(myNumber) REFERENCES userSetting(myNumber)
  );

CREATE TABLE todos (
    id IDENTITY,
    myNumber VARCHAR ,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    completed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (myNumber) REFERENCES userSetting(myNumber) ON DELETE CASCADE
);

CREATE TABLE permissions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    requesterNumber VARCHAR, -- 許可をリクエストした人
    targetNumber VARCHAR,    -- 許可対象の相手
    isApproved BOOLEAN DEFAULT NULL, -- 許可状態
    FOREIGN KEY (requesterNumber) REFERENCES userSetting(myNumber) ON DELETE CASCADE,FOREIGN KEY (targetNumber) REFERENCES userSetting(myNumber) ON DELETE CASCADE
);

-- 担当テーブルの作成
CREATE TABLE assignment (
    id IDENTITY, -- 一意識別可能なID
    scheduleId VARCHAR NOT NULL, -- scheduleテーブルの主キーを外部キーとして保持
    userId VARCHAR NOT NULL,
    -- userSettingテーブルの主キーを外部キーとして保持
    -- 外部キー制約
    CONSTRAINT fk_schedule FOREIGN KEY (scheduleId) REFERENCES schedule(id) ON DELETE CASCADE,
    CONSTRAINT fk_user FOREIGN KEY (userId) REFERENCES userSetting(myNumber) ON DELETE CASCADE
);

CREATE TABLE lessonNumber(
  id IDENTITY,
  lessonYear INT NOT NULL,
  -- 年度（例：2024
  lessonCount INT NOT NULL CHECK (lessonCount BETWEEN 1 AND 14), -- 第何回授業か（1～14）
  DayofWeek ENUM('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'ZZZ') NOT NULL,
  --Mon,Tue,Wed,Thu,Fri,Sat,ZZZ(期間外)
  timing VARCHAR NOT NULL,
  --↑いつ履修するか？
  --前期A,後期B,
  --前期前半C,前期後半D,後期前半E,後期後半F
  --期間外Z
  lessonDate DATE NOT NULL
  -- 授業日
);

-- 課題テーブルの作成
CREATE TABLE assignmentTask (
    id IDENTITY,
    -- 一意識別可能なID
    lessonCount INT NOT NULL CHECK (lessonCount BETWEEN 1 AND 14), -- 第何回授業か（1～14）
    assignmentId INT NOT NULL,
    -- 担当テーブルのID (外部キー)
    detail TEXT,
    --授業内容
    content TEXT,
    -- 課題の内容
    deadline DATE,
    -- 締め切り日

    -- 外部キー制約
    CONSTRAINT fk_assignment FOREIGN KEY (assignmentId) REFERENCES assignment(id) ON DELETE CASCADE
);

CREATE TABLE team (
  id IDENTITY,
  teamName VARCHAR NOT NULL,
  teamOwner VARCHAR NOT NULL,
  teamType VARCHAR NOT NULL,
  teamDescription TEXT,
  teamCode VARCHAR,
  CONSTRAINT fk_teamOwner FOREIGN KEY (teamOwner) REFERENCES userSetting(myNumber) ON DELETE CASCADE
);

CREATE TABLE teamMember (
  id IDENTITY,
  teamId INT NOT NULL,
  memberId VARCHAR NOT NULL,
  CONSTRAINT fk_team FOREIGN KEY (teamId) REFERENCES team(id) ON DELETE CASCADE,
  CONSTRAINT fk_member FOREIGN KEY (memberId) REFERENCES userSetting(myNumber) ON DELETE CASCADE
);

CREATE TABLE teamChat (
  id IDENTITY,
  teamId INT NOT NULL,
  senderId VARCHAR NOT NULL,
  message TEXT,
  mediaUrl TEXT,
  mediaType VARCHAR, -- メディアの種類 (例: "image", "video", "file")
  sendTime TIMESTAMP NOT NULL,
  CONSTRAINT fk_teamChat FOREIGN KEY (teamId) REFERENCES team(id) ON DELETE CASCADE,
  CONSTRAINT fk_sender FOREIGN KEY (senderId) REFERENCES userSetting(myNumber) ON DELETE CASCADE
);
