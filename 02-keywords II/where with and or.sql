CREATE TABLE film (
    title VARCHAR(255),
    release_year INT,
    country VARCHAR(100),
    duration INT,
    language VARCHAR(50),
    certification VARCHAR(50),
    gross BIGINT,
    budget BIGINT
);
INSERT INTO film (title, release_year, country, duration, language, certification, gross, budget) VALUES
('Intolerance: Loves Struggle Throughout the Ages', 1916, 'USA', 123, null, 'Not Rated', null, 385907),
('Over the Hill  the Poorhouse', 1920, 'USA', 110, null, null, 3000000, 100000),
('The Big Parade', 1925, 'USA', 151, null, 'Not Rated', null, 245000),
('Metropolis', 1927, 'Germany', 145, 'German', 'Not Rated', 26435, 6000000),
('Pandoras Box', 1929, 'Germany', 110, 'German', 'Not Rated', 9950, null),
('The Broadway Melody', 1929, 'USA', 100, 'English', 'Passed', 2808000, 379000),
('Hells Angels', 1930, 'USA', 96, 'English', 'Passed', null, 3950000),
('A Farewell  Arms', 1932, 'USA', 79, 'English', 'Unrated', null, 800000),
('42nd Street', 1933, 'USA', 89, 'English', 'Unrated', 2300000, 439000),
('She Done Him Wrong', 1933, 'USA', 66, 'English', 'Approved', null, 200000),
('It Happened One Night', 1934, 'USA', 65, 'English', 'Unrated', null, 325000),
('Top Hat', 1935, 'USA', 81, 'English', 'Approved', 3000000, 609000),
('Modern Times', 1936, 'USA', 87, 'English', 'G', 163245, 1500000),
('The Charge of the Light Brigade', 1936, 'USA', 100, 'English', 'Approved', null, 1200000),
('Snow White and the Seven Dwarfs', 1937, 'USA', 83, 'English', 'Approved', 184925485, 2000000),
('The Prisoner of Zenda', 1937, 'USA', 101, 'English', 'Approved', null, null),
('Alexanders Ragtime Band', 1938, 'USA', 106, 'English', 'Approved', null, 2000000),
('You Cant Take It with You', 1938, 'USA', 126, 'English', 'Approved', null, 1644736),
('Gone with the Wind', 1939, 'USA', 226, 'English', 'G', 198655278, 3977000),
('Mr. Smith Goes to Washington', 1939, 'USA', 120, 'English', 'Not Rated', null, 1500000),
('The Wizard of Oz', 1939, 'USA', 102, 'English', 'Passed', 22202612, 2800000),
('Boom Town', 1940, 'USA', 119, 'English', 'Passed', null, 1614000),
('Fantasia', 1940, 'USA', 120, 'English', 'G', 76400000, 2280000),
('Pinocchio', 1940, 'USA', 88, 'English', 'Approved', 84300000, 2600000),
('Rebecca', 1940, 'USA', 130, 'English', 'Not Rated', null, 1288000),
('The Blue Bird', 1940, 'USA', 83, 'English', 'Approved', null, null),
('How Green Was My Valley', 1941, 'USA', 118, 'English', 'Approved', null, 1250000),
('Bambi', 1942, 'USA', 70, 'English', 'Approved', 102797150, null),
('Casablanca', 1942, 'USA', 82, 'English', 'PG', null, 950000),
('A Guy Named Joe', 1943, 'USA', 122, 'English', 'Passed', null, 2627000),
('Bathing Beauty', 1944, 'USA', 101, 'English', 'Passed', null, 2361000),
('Spellbound', 1945, 'USA', 95, 'English', 'Unrated', null, 1696377),
('State Fair', 1945, 'USA', 100, 'English', 'Approved', null, null),
('The Lost Weekend', 1945, 'USA', 101, 'English', 'Not Rated', null, 1250000),
('The Valley of Decision', 1945, 'USA', 119, 'English', 'Passed', null, 2160000),
('Duel in the Sun', 1946, 'USA', 144, 'English', 'Unrated', 20400000, 8000000),
('Its a Wonderful Life', 1946, 'USA', 118, 'English', 'PG', null, 3180000),
('The Best Years of Our Lives', 1946, 'USA', 172, 'English', 'Not Rated', 23650000, 2100000),
('Gentlemans Agreement', 1947, 'USA', 118, 'English', 'Approved', null, 2000000),
('The Lady from Shanghai', 1947, 'USA', 92, 'English', 'Not Rated', 7927, 2300000),
('Tycoon', 1947, 'USA', 95, 'English', 'Approved', null, 3209000),
('Open Secret', 1948, 'USA', 68, 'English', 'Approved', null, null),
('Red River', 1948, 'USA', 126, 'English', 'Approved', null, 3000000),
('The Pirate', 1948, 'USA', 102, 'English', 'Approved', 2956000, 3700000),
('Sands of Iwo Jima', 1949, 'USA', 109, 'English', 'Approved', null, 1000000),
('She Wore a Yellow Ribbon', 1949, 'USA', 103, 'English', 'Unrated', null, 1600000),
('Annie Get Your Gun', 1950, 'USA', 107, 'English', 'Passed', 8000000, 3768785),
('A Streetcar Named Desire', 1951, 'USA', 125, 'English', 'PG', null, 1800000),
('Quo Vadis', 1951, 'USA', 171, 'English', 'Passed', null, 7623000),
('Show Boat', 1951, 'USA', 108, 'English', 'Approved', null, 2295429),
('Deadline - U.S.A.', 1952, 'USA', 87, 'English', null, null, null),
('High Noon', 1952, 'USA', 85, 'English', 'PG', null, 750000),
('Singin in the Rain', 1952, 'USA', 103, 'English', 'Approved', null, 2540800),
('The Greatest Show on Earth', 1952, 'USA', 152, 'English', 'Not Rated', 36000000, 4000000),
('From Here to Eternity', 1953, 'USA', 118, 'English', 'Not Rated', null, 1650000),
('Niagara', 1953, 'USA', 92, 'English', 'Approved', null, 1250000),
('The Beast from 20,000 Fathoms', 1953, 'USA', 80, 'English', 'Approved', 5000000, 210000),
('The Robe', 1953, 'USA', 135, 'English', 'Unrated', 36000000, 5000000),
('20,000 Leagues Under the Sea', 1954, 'USA', 127, 'English', 'Approved', null, 5000000),
('20,000 Leagues Under the Sea', 1954, 'USA', 127, 'English', 'Approved', null, 5000000),
('On the Waterfront', 1954, 'USA', 108, 'English', 'Not Rated', 9600000, 910000),
('Seven Samurai', 1954, 'Japan', 202, 'Japanese', 'Unrated', 269061, 2000000),
('The Egyptian', 1954, 'USA', 139, 'English', 'Approved', null, 5000000),
('Ordet', 1955, 'Denmark', 126, 'Danish', 'Not Rated', null, null);


-- Select the title and release_year for all German-language films released before 2000
select title,release_year
from film
where release_year<2000 and language='German';


-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM film
WHERE release_year > 2000
	AND language = 'German';
    
    
    -- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM film
WHERE release_year > 2000 and release_year<2010
	AND language = 'German';
    
    
    -- Find the title and year of films from the 1990 or 1999
select title,release_year
from films
where release_year=1990 or release_year=1999


SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
	and(language='English' or language='Spanish');
    
    
    SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
	and gross>2000000 ;
    
    
    
    
    -- Select the title and release_year for films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year between 1990 and 2000;


SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
-- Narrow down your query to films with budgets > $100 million
	and budget>100000000 ;
    
    
    
    SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Restrict the query to only Spanish-language films
	and language='Spanish';
     
    
    
    SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
-- Amend the query to include Spanish or French-language films
	AND (language='French'or language='Spanish');