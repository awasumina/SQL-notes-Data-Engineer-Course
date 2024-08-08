CREATE TABLE film (
    title VARCHAR(255),
    release_year INT,
    country VARCHAR(50),
    duration INT,
    language VARCHAR(50),
    certification VARCHAR(50),
    gross INT,
    budget INT
);

INSERT INTO film (title, release_year, country, duration, language, certification, gross, budget) VALUES
('Intolerance: Love''s Struggle Throughout the Ages', 1916, 'USA', 123, null, 'Not Rated', null, 385907),
('Over the Hill to the Poorhouse', 1920, 'USA', 110, null, null, 3000000, 100000),
('The Big Parade', 1925, 'USA', 151, null, 'Not Rated', null, 245000),
('Metropolis', 1927, 'Germany', 145, 'German', 'Not Rated', 26435, 6000000),
('Pandora''s Box', 1929, 'Germany', 110, 'German', 'Not Rated', 9950, null),
('The Broadway Melody', 1929, 'USA', 100, 'English', 'Passed', 2808000, 379000),
('Hell''s Angels', 1930, 'USA', 96, 'English', 'Passed', null, 3950000),
('A Farewell to Arms', 1932, 'USA', 79, 'English', 'Unrated', null, 800000),
('42nd Street', 1933, 'USA', 89, 'English', 'Unrated', 2300000, 439000),
('She Done Him Wrong', 1933, 'USA', 66, 'English', 'Approved', null, 200000),
('It Happened One Night', 1934, 'USA', 65, 'English', 'Unrated', null, 325000),
('Top Hat', 1935, 'USA', 81, 'English', 'Approved', 3000000, 609000),
('Modern Times', 1936, 'USA', 87, 'English', 'G', 163245, 1500000),
('The Charge of the Light Brigade', 1936, 'USA', 100, 'English', 'Approved', null, 1200000),
('Snow White and the Seven Dwarfs', 1937, 'USA', 83, 'English', 'Approved', 184925485, 2000000),
('The Prisoner of Zenda', 1937, 'USA', 101, 'English', 'Approved', null, null),
('Alexander''s Ragtime Band', 1938, 'USA', 106, 'English', 'Approved', null, 2000000),
('You Can''t Take It with You', 1938, 'USA', 126, 'English', 'Approved', null, 1644736),
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
('The Lost Weekend', 1945, 'USA', 101, 'English', 'Not Rated', null, 1250000);


-- List all film titles with missing budgets
select title as no_budget_info
from film
where budget is null


-- Count the number of films we have language data for
select count(language) as count_language_known
from film
