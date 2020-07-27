
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

SELECT * from card_deck;