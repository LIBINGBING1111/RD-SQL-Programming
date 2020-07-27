DROP DATABASE IF EXISTS Poker_18210705;
CREATE DATABASE Poker_18210705;
USE Poker_18210705;
CREATE TABLE card_deck(
	Card_Name VARCHAR(3),
	Face VARCHAR(3),
    Type_ VARCHAR(3),
    Suit VARCHAR(3),
	Face_Value INT,
PRIMARY KEY(Card_Name)
);
INSERT INTO card_deck values
('1H','no','A','H',1),
('2H','no','2','H',2),
('3H','no','3','H',3),
('4H','no','4','H',4),
('5H','no','5','H',5),
('6H','no','6','H',6),
('7H','no','7','H',7),
('8H','no','8','H',8),
('9H','no','9','H',9),
('10H','no','10','H',10),
('JH','yes','J','H',11),
('QH','yes','Q','H',12),
('KH','yes','K','H',13),

('1S','no','A','S',1),
('2S','no','2','S',2),
('3S','no','3','S',3),
('4S','no','4','S',4),
('5S','no','5','S',5),
('6S','no','6','S',6),
('7S','no','7','S',7),
('8S','no','8','S',8),
('9S','no','9','S',9),
('10S','no','10','S',10),
('JS','yes','J','S',11),
('QS','yes','Q','S',12),
('KS','yes','K','S',13),

('1C','no','A','C',1),
('2C','no','2','C',2),
('3C','no','3','C',3),
('4C','no','4','C',4),
('5C','no','5','C',5),
('6C','no','6','C',6),
('7C','no','7','C',7),
('8C','no','8','C',8),
('9C','no','9','C',9),
('10C','no','10','C',10),
('JC','yes','J','C',11),
('QC','yes','Q','C',12),
('KC','yes','K','C',13),

('1D','no','A','D',1),
('2D','no','2','D',2),
('3D','no','3','D',3),
('4D','no','4','D',4),
('5D','no','5','D',5),
('6D','no','6','D',6),
('7D','no','7','D',7),
('8D','no','8','D',8),
('9D','no','9','D',9),
('10D','no','10','D',10),
('JD','yes','J','D',11),
('QD','yes','Q','D',12),
('KD','yes','K','D',13);

CREATE TABLE poker_hands(
	Player_ID VARCHAR(5),
	Game_ID VARCHAR(5),
    R1 VARCHAR(3),
    R2 VARCHAR(3),
	R3 VARCHAR(3),
    R4 VARCHAR(3),
    R5 VARCHAR(3),
PRIMARY KEY(Player_ID, Game_ID)
);
INSERT INTO poker_hands values
('10000','12MON','QH','3D','QC','3C','3H'),
('10000','20SUN','KS','6D','4S','3C','2D'),
('10001','20SUN','7C','8H','QD','KC','JH'),
('10001','18FRI','8H','5S','10C','2D','KS'),
('10002','12MON','QS','10D','8C','5C','4D'),

('10002','18FRI','9D','9C','8S','JC','QC'),
('10003','05SUN','1S','2S','3S','4S','5S'),
('10003','20SAR','6H','KD','8C','9C','KS'),
('10004','12MON','QH','10S','9H','8H','6S'),
('10004','18FRI','JS','10H','5D','4C','2H'),

('10005','12MON','6C','7D','3S','5H','KH'),
('10005','05SUN','1C','2C','3C','4C','5C'),
('10006','20SUN','JD','KD','10D','1D','QD'),
('10006','20SAR','1H','10C','JC','QH','KC'),
('10007','20SUN','1H','2H','QH','3H','4H'),

('10007','20SAR','1S','1D','1C','10H','10D'),
('10008','18FRI','KH','KD','2C','KS','2D'),
('10008','20SAR','QS','9D','QC','9H','9S'),

('10009','05SUN','1D','2D','3D','4D','5D'),
('10010','05SUN','1H','2H','3H','6H','5H');

CREATE TABLE stakes(
	Player_ID VARCHAR(5),
	Game_ID VARCHAR(5),
    Stake INT,
    Bank INT,
    Income INT,
PRIMARY KEY(Player_ID, Game_ID)
);
INSERT INTO stakes values
('10000','12MON','5','65','-12'),
('10000','20SUN','12','57','-23'),
('10001','20SUN','17','112','67'),
('10001','18FRI','18','87','-28'),
('10002','12MON','22','94','42'),
('10002','18FRI','9','72','-6'),
('10003','05SUN','10','137','82'),
('10003','20SAR','20','192','50'),
('10004','12MON','20','84','-18'),
('10004','18FRI','6','20','-39'),
('10005','12MON','8','18','-12'),
('10005','05SUN','12','98','-64'),
('10006','20SUN','7','9','-17'),
('10006','20SAR','29','147','58'),
('10007','20SUN','20','100','-27'),
('10007','20SAR','5','78','30'),
('10008','18FRI','38','197','73'),
('10008','20SAR','30','10','-138'),
('10009','05SUN','19','20','-48'),
('10010','05SUN','8','178','30');
SELECT * FROM poker_hands;
SELECT * FROM stakes;

CREATE TABLE temp1 AS
SELECT a.Game_ID, a.Player_ID AS Player_1, b.player_ID AS player_2 FROM poker_hands a
INNER JOIN poker_hands b ON a.Game_ID = b.Game_ID
WHERE a.Player_ID != b.Player_ID AND (
a.R1 IN (b.R1, b.R2, b.R3, b.R4, b.R5) OR
a.R2 IN (b.R1, b.R2, b.R3, b.R4, b.R5) OR
a.R3 IN (b.R1, b.R2, b.R3, b.R4, b.R5) OR
a.R4 IN (b.R1, b.R2, b.R3, b.R4, b.R5) OR
a.R5 IN (b.R1, b.R2, b.R3, b.R4, b.R5));

SELECT * 
FROM temp1;

SELECT a.Game_ID, Player_1 FROM temp1 AS c
INNER JOIN Stakes a ON c.Game_ID = a.Game_ID AND c.Player_1 = a.Player_ID
INNER JOIN Stakes b ON c.Game_ID = b.Game_ID AND c.Player_2 = b.Player_ID
WHERE a.Stake > b.Stake OR (a.Stake = b.Stake AND a.Income > b.Income);



