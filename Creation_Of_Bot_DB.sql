CREATE DATABASE IF NOT EXISTS PostBotDB;

USE PostBotDB;

CREATE TABLE IF NOT EXISTS happy(
    id SMALLINT AUTO_INCREMENT NOT NULL,
    quote VARCHAR(280) NOT NULL,
    lastUsed DATE,
    PRIMARY KEY(id)
);

INSERT INTO happy (quote)
    VALUES('Happiness is when what you think, what you say, and what you do are in harmony. - Mahatma Gandhi'),
            ('Most folks are as happy as they make up their minds to be. - Abraham Lincoln'),
            ('Happiness depends upon ourselves. - Aristotle'),
            ('Happiness isn\'t something you experience; it\'s something you remember. - Oscar Levant'),
            ('The Constitution only gives people the right to pursue happiness. You have to catch it yourself. - Benjamin Franklin'),
            ('Our happiness depends on wisdom all the way. - Sophocles'),
            ('True happiness... is not attained through self-gratification but through fidelity to a worthy purpose. - Helen Keller'),
            ('Happiness is not a goal; it is a by-product. - Eleanor Roosevelt'),
            ('Happiness is inward, and not outward; and so, it does not depend on what we have, but on what we are. - Henry Van Dyke');
CREATE TABLE IF NOT EXISTS mathematical_monday(
    id SMALLINT AUTO_INCREMENT NOT NULL,
    quote VARCHAR(280) NOT NULL,
    lastUsed DATE,
    PRIMARY KEY(id)
);


CREATE TABLE IF NOT EXISTS random(
    id SMALLINT AUTO_INCREMENT NOT NULL,
    quote VARCHAR(280) NOT NULL,
    lastUsed DATE,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS whimsical(
    id SMALLINT AUTO_INCREMENT NOT NULL,
    quote VARCHAR(280) NOT NULL,
    lastUsed DATE,
    PRIMARY KEY(id)
);


INSERT INTO whimsical(quote)
    VALUES('You must not ever stop being whimsical. And you must not, ever, give anyone else the responsibility for your life. - Mary Oliver, Wild Geese'),
          ('What\'s life without whimsy? - Dr Sheldon Cooper, The Big Bang Theory'),
          ('Have a great day, unless you\'ve made other plans. - Stephen Poplin'),
          ('More than whimsy, joy is a weapon we use to fight life\'s battles. - Margaret Feinberg'),
          ('Today it\'s economically crucial and personally rewarding to create something that is also beautiful, whimsical, or emotionally engaging. - Daniel H. Pink');


CREATE TABLE IF NOT EXISTS theatrical(
    id SMALLINT AUTO_INCREMENT NOT NULL,
    quote VARCHAR(280) NOT NULL,
    lastUsed DATE,
    PRIMARY KEY(id)
);

INSERT INTO theatrical(quote)
    VALUES('Go To Heaven for the climate, Hell for the company. - Mark Twain'),
          ('When you fish for love, bait with your heart, not your brain. - Mark Twain'),
          ('Denial ain\'t just a river in Egypt. - Mark Twain'),
          ('Love all, trust a few, do wrong to none. - William Shakespeare'),
          ('It is not in the stars to hold our destiny but in ourselves. - William Shakespeare'),
          ('Listen to many, speak to few. - William Shakespeare'),
          ('The world is indeed comic, but the joke is on mankind. - H.P. Lovecraft'),
          ('That is not dead which can eternal lie, And with strange aeons even death may die. - H.P. Lovecraft'),
          ('Never Explain Anything. - H.P. Lovecraft'),
          ('Ph\'nglui mglw\'nafh Cthulhu R\'lyeh wgah\'nagl fhtagn. - H.P. Lovecraft');

CREATE TABLE IF NOT EXISTS strange(
    id SMALLINT AUTO_INCREMENT NOT NULL,
    quote VARCHAR(280) NOT NULL,
    lastUsed DATE,
    PRIMARY KEY(id)
);