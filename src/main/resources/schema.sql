CREATE TABLE schedule (
    id  VARCHAR PRIMARY KEY,
    --↑主キー。こちらでIDを設定。
    class VARCHAR NOT NULL,
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
    timing VARCHAR NOT NULL
    --↑いつ履修するか？まだ書いてない。
    --前期A,後期B,
    --前期前半C,前期後半D,後期前半E,後期後半F
    DayofWeek VARCHAR NOT NULL
    --Mon,Tue,Wed,Thu,Fri,Sat
    DayTime Int NOT NULL
    --何時間目か
    otherClass VARCHAR NOT NULL
    --'ID,IC,IS,IM,IN'で記述していく。1or0で。
    --自分自身は1で。
    --1なら履修可。0なら履修不可。
    --他学科履修可能をどうやって表現する？
);
