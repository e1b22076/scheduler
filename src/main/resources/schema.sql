/* userやgroupといった名前はSQLでは予約語で使えないため，userNameとしていることに注意 */
CREATE TABLE chamber (
    id IDENTITY,
    userName VARCHAR NOT NULL,
    chamberName VARCHAR NOT NULL
);
CREATE TABLE userinfo (
    userName VARCHAR NOT NULL PRIMARY KEY,
    age INT,
    height DOUBLE NOT NULL
);
CREATE TABLE fruit (
    id IDENTITY,
    name VARCHAR NOT NULL,
    price INT NOT NULL
);

CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    start_year INT NOT NULL,
    start_month INT NOT NULL,
    start_day INT NOT NULL,
    start_time TIME,
    end_time TIME,
    location VARCHAR(255),
    is_all_day BOOLEAN DEFAULT FALSE
);
