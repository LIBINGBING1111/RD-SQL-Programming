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
('10000','12MON','QH','3D','QS','3C','3H'),
('10000','13TUE','KS','6D','4S','3C','2H'),
('11234','19SAR','7C','8H','QD','KC','JH'),
('12456','10WED','8H','5S','10C','2D','KS'),
('23167','12SUN','QS','10D','8C','5C','3D'),

('34212','14MON','9D','9C','8S','JC','QC'),
('76312','15MON','KD','QS','JC','10H','8D'),
('25123','17THU','6H','KD','8C','9C','KS'),
('46532','18FRI','QH','10S','9H','8H','6S'),
('76521','20SUN','JS','10H','5D','4C','2H'),

-- pokers to check royal flushes
('12290','20MON','7H','1H','2H','5H','KH'),
('23223','09MON','KS','10S','QS','JS','1S'),
('17873','08TUE','JD','KD','10D','1D','QD'),
('21334','07WED','1C','10C','JC','QC','KC'),
('22111','05MON','1H','1H','QH','3H','4H'),
-- pokers to check full houses
('42612','03WED','1S','1D','1C','10H','10D'),
('12009','02FRI','KH','KD','2C','KS','2D'),
('83744','01SUN','QS','9D','QC','9H','9S'),
-- pokers to check all straights
('32119','11WED','6D','7S','5C','8S','4H'),
('22219','14MON','1S','2D','5S','4C','3H'),
('55555','23TUE','KH','10H','1S','JD','QC'),
-- pokers to check all straight flushes
('10999','05SUN','1H','10H','JH','KH','QH'),
('09112','08SAR','JS','9S','8S','7S','10S'),
('08221','10FRI','1D','5D','2D','4D','3D');

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
SELECT * from stakes;

-- the total pot (the sum of all stakes) per game
SELECT Game_ID,SUM(Stake) 
FROM stakes
GROUP BY Game_ID;

-- the current outlay (the total of their stakes across all games) per player
SELECT Player_ID,SUM(Stake)
FROM stakes
GROUP BY Player_ID;

-- the winnings/losses per player across all of their games/ 
-- the total profit/loss so far for each player
SELECT Player_ID,SUM(Income)
FROM stakes
GROUP BY Player_ID;

-- All profits and losses per game should sum to zero
SELECT Game_ID,SUM(Income)
FROM stakes
GROUP BY Game_ID;

-- Which player is up the most overall? 
SELECT Player_ID,MAX(a.player_sum) as player_max FROM(
SELECT Player_ID,SUM(Income) AS player_sum
FROM stakes
GROUP BY Player_ID)a;

-- Which player is down the most overall? 
SELECT Player_ID,MIN(a.player_sum) as player_min FROM(
SELECT Player_ID,SUM(Income) AS player_sum
FROM stakes
GROUP BY Player_ID)a;


