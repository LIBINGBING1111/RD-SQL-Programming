DROP DATABASE Poker_18210705;
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
('10000','13TUE','kS','6D','4S','3C','2H'),
('11234','19SAR','7C','8H','QD','KC','JH'),
('12456','10WED','8H','5S','10C','2D','KS'),
('23167','12SUN','QS','10D','8C','5C','3D'),

('34212','14MON','9D','9C','8S','JC','QC'),
('76312','15MON','KD','QS','JC','10H','8D'),
('25123','17THU','6H','KD','8C','9C','KS'),
('46532','18FRI','QH','10S','9H','8H','6S'),
('76521','20SUN','JS','10H','5D','4C','2H');

SELECT * from card_deck;
SELECT * from poker_hands;


-- hands in descending order will be retrieved from poker_hands 
SELECT Player_ID, Game_ID, R1, R2, R3, R4, R5
FROM 
poker_hands, card_deck a, card_deck b, card_deck c, card_deck d, card_deck e
WHERE poker_hands.R1 = a.card_name
AND poker_hands.R2 = b.card_name
AND poker_hands.R3=c.card_name
AND poker_hands.R4=d.card_name
AND poker_hands.R5=e.card_name
AND a.Face_Value>b.Face_Value
AND b.Face_Value>c.Face_Value
AND c.Face_Value>d.Face_Value
AND d.Face_Value>e.Face_Value;


-- unordered hands will be deleted from poker_hands 
SET SQL_SAFE_UPDATES=0;
DELETE poker_hands
FROM poker_hands
INNER JOIN card_deck a ON poker_hands.R1 = a.Card_Name
INNER JOIN card_deck b ON poker_hands.R2 = b.Card_Name
INNER JOIN card_deck c ON poker_hands.R3 = c.Card_Name
INNER JOIN card_deck d ON poker_hands.R4 = d.Card_Name
INNER JOIN card_deck e ON poker_hands.R5 = e.Card_Name 
WHERE a.Face_Value<=b.Face_Value OR
b.Face_Value<=c.Face_Value OR
c.Face_Value<=d.Face_Value OR
d.Face_Value<=e.Face_Value;

select * from poker_hands;