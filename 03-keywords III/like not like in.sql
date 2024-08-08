CREATE TABLE people (
    name VARCHAR(255),
    birthdate DATE,
    deathdate DATE
);

INSERT INTO people (name, birthdate, deathdate) VALUES
('50 Cent', '1975-07-06', null),
('A. Michael Baldwin', '1963-04-04', null),
('A. Raven Cruz', null, null),
('A.J. Buckley', '1978-02-09', null),
('A.J. DeLucia', null, null),
('A.J. Langer', '1974-05-22', null),
('Aaliyah', '1979-01-16', '2001-08-25'),
('Aaron Ashmore', '1979-10-07', null),
('Aaron Hann', null, null),
('Aaron Hill', '1983-04-23', null),
('Aaron Hughes', null, null),
('Aaron Kwok', '1965-10-26', null),
('Aaron Schneider', null, null),
('Aaron Seltzer', '1974-01-12', null),
('Aaron Stanford', '1976-12-27', null),
('Aaron Staton', null, null),
('Aaron Yoo', '1979-05-12', null),
('Aasheekaa Bathija', null, null),
('Aasif Mandvi', '1966-03-05', null),
('Abbie Cornish', '1982-08-07', null),
('Abby Elliott', '1987-06-16', null),
('Abby Mukiibi Nkaaga', null, null),
('Abel Ferrara', '1951-07-19', null),
('Abhishek Bachchan', '1976-02-05', null),
('Abigail Evans', null, null),
('Abigail Spencer', '1981-08-04', null),
('Abraham Benrubi', '1969-10-04', null),
('Ace Marrero', '1982-07-28', null),
('Adam Alexi-Malle', '1964-09-24', null),
('Adam Arkin', '1956-08-19', null),
('Adam Baldwin', '1962-02-27', null),
('Adam Boyer', null, null),
('Adam Brooks', '1956-09-03', null),
('Adam Brown', null, null),
('Adam Butcher', '1988-10-20', null),
('Adam Carolla', '1964-05-27', null),
('Adam Copeland', '1973-10-30', null),
('Adam DiMarco', '1990-04-14', null),
('Adam Garcia', '1973-06-01', null),
('Adam Goldberg', '1970-10-25', null),
('Adam Green', '1975-03-31', null),
('Adam Hicks', '1992-11-28', null),
('Adam Jay Epstein', null, null),
('Adam Lamberg', '1984-09-14', null),
('Adam LeFevre', '1950-08-11', null),
('Adam Marcus', null, null),
('Adam McKay', '1968-04-17', null),
('Adam Rapp', '1968-06-15', null),
('Adam Ratcliffe', null, null),
('Adam Rayner', null, null),
('Adam Rifkin', '1966-12-31', null),
('Adam Sandler', '1966-09-09', null),
('Adam Scott', '1973-04-03', null),
('Adam Shankman', '1964-11-27', null),
('Adam Trese', '1969-01-04', null),
('Adel Karam', null, null),
('Adelaide Kane', '1990-08-09', null),
('Aden Young', null, null),
('Adhir Kalyan', '1983-08-04', null),
('Aditya Roy Kapoor', '1985-11-16', null),
('Adolphe Menjou', '1890-02-18', '1963-10-29'),
('Adrian Alonso', '1994-04-06', null),
('Adrian Gonzalez', '1938-05-08', '1998-10-23'),
('Adrian Holmes', '1974-03-31', null),
('Adrian Lester', '1968-08-14', null),
('Adrian Lyne', '1941-03-04', null),
('Adrian Martinez', null, null),
('Adrian Pasdar', '1965-04-30', null),
('Adrian Paul', '1959-05-29', null),
('Adriana Barraza', '1956-03-05', null),
('Adriana Caselotti', '1916-05-16', '1997-01-19'),
('Adriane Lenox', '1956-09-11', null),
('Adriano Giannini', '1971-05-10', null),
('Adrien Dorval', '1963-03-22', null),
('Adrienne Barbeau', '1945-06-11', null),
('Adrienne Frantz', '1978-06-07', null),
('Adrienne King', '1955-07-21', null),
('Adrienne Pickering', '1981-02-22', null),
('Adrienne Shelly', '1966-06-24', '2006-11-01'),
('Agame Malembo-Emene', null, null),
('Agata Kulesza', '1971-09-27', null),
('Agata Trzebuchowska', null, null),
('Agnes Bruckner', '1985-08-16', null),
('Agnes Moorehead', '1900-12-06', '1974-04-30'),
('Agnia Ditkovskite', '1988-05-11', null),
('Agnieszka Holland', '1948-11-28', null),
('Agnieszka Wojtowicz-Vosloo', null, null),
('Agustín Díaz Yanes', null, null),
('Ah-sung Ko', '1992-08-10', null),
('Ahmad Massad', null, null);

-- Select the names that start with B
select name
from people
where name like 'A%'


SELECT name
FROM people
-- Select the names that have r as the second letter
where name like '_r%'


SELECT name
FROM people
-- Select names that don't start with A
where name not like 'A%'