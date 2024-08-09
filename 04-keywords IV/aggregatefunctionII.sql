-- Create the table without the id column
CREATE TABLE films (
    title VARCHAR(255),
    release_year INT,
    country VARCHAR(255),
    duration INT,
    language VARCHAR(255),
    certification VARCHAR(255),
    gross BIGINT,
    budget BIGINT
);

-- Insert the data excluding entries with an apostrophe in the title
INSERT INTO films (title, release_year, country, duration, language, certification, gross, budget) VALUES
('Over the Hill to the Poorhouse', 1920, 'USA', 110, NULL, NULL, 3000000, 100000),
('The Big Parade', 1925, 'USA', 151, NULL, 'Not Rated', NULL, 245000),
('Metropolis', 1927, 'Germany', 145, 'German', 'Not Rated', 26435, 6000000),
('The Broadway Melody', 1929, 'USA', 100, 'English', 'Passed', 2808000, 379000),
('Hells Angels', 1930, 'USA', 96, 'English', 'Passed', NULL, 3950000),
('A Farewell to Arms', 1932, 'USA', 79, 'English', 'Unrated', NULL, 800000),
('42nd Street', 1933, 'USA', 89, 'English', 'Unrated', 2300000, 439000),
('It Happened One Night', 1934, 'USA', 65, 'English', 'Unrated', NULL, 325000),
('Top Hat', 1935, 'USA', 81, 'English', 'Approved', 3000000, 609000),
('The Charge of the Light Brigade', 1936, 'USA', 100, 'English', 'Approved', NULL, 1200000),
('Snow White and the Seven Dwarfs', 1937, 'USA', 83, 'English', 'Approved', 184925485, 2000000),
('The Prisoner of Zenda', 1937, 'USA', 101, 'English', 'Approved', NULL, NULL),
('Alexanders Ragtime Band', 1938, 'USA', 106, 'English', 'Approved', NULL, 2000000),
('You Cant Take It with You', 1938, 'USA', 126, 'English', 'Approved', NULL, 1644736),
('Gone with the Wind', 1939, 'USA', 226, 'English', 'G', 198655278, 3977000),
('Mr. Smith Goes to Washington', 1939, 'USA', 120, 'English', 'Not Rated', NULL, 1500000),
('The Wizard of Oz', 1939, 'USA', 102, 'English', 'Passed', 22202612, 2800000),
('Boom Town', 1940, 'USA', 119, 'English', 'Passed', NULL, 1614000),
('Fantasia', 1940, 'USA', 120, 'English', 'G', 76400000, 2280000),
('Pinocchio', 1940, 'USA', 88, 'English', 'Approved', 84300000, 2600000),
('Rebecca', 1940, 'USA', 130, 'English', 'Not Rated', NULL, 1288000),
('The Blue Bird', 1940, 'USA', 83, 'English', 'Approved', NULL, NULL),
('How Green Was My Valley', 1941, 'USA', 118, 'English', 'Approved', NULL, 1250000),
('Bambi', 1942, 'USA', 70, 'English', 'Approved', 102797150, NULL),
('Casablanca', 1942, 'USA', 82, 'English', 'PG', NULL, 950000),
('A Guy Named Joe', 1943, 'USA', 122, 'English', 'Passed', NULL, 2627000),
('Bathing Beauty', 1944, 'USA', 101, 'English', 'Passed', NULL, 2361000),
('State Fair', 1945, 'USA', 100, 'English', 'Approved', NULL, NULL),
('The Lost Weekend', 1945, 'USA', 101, 'English', 'Not Rated', NULL, 1250000),
('The Valley of Decision', 1945, 'USA', 119, 'English', 'Passed', NULL, 2160000),
('Its a Wonderful Life', 1946, 'USA', 118, 'English', 'PG', NULL, 3180000),
('The Best Years of Our Lives', 1946, 'USA', 172, 'English', 'Not Rated', 23650000, 2100000),
('Gentlemans Agreement', 1947, 'USA', 118, 'English', 'Approved', NULL, 2000000),
('Tycoon', 1947, 'USA', 95, 'English', 'Approved', NULL, 3209000),
('Open Secret', 1948, 'USA', 68, 'English', 'Approved', NULL, NULL),
('Red River', 1948, 'USA', 126, 'English', 'Approved', NULL, 3000000),
('The Pirate', 1948, 'USA', 102, 'English', 'Approved', 2956000, 3700000),
('Sands of Iwo Jima', 1949, 'USA', 109, 'English', 'Approved', NULL, 1000000),
('She Wore a Yellow Ribbon', 1949, 'USA', 103, 'English', 'Unrated', NULL, 1600000),
('Annie Get Your Gun', 1950, 'USA', 107, 'English', 'Passed', 8000000, 3768785),
('Quo Vadis', 1951, 'USA', 171, 'English', 'Passed', NULL, 7623000),
('Show Boat', 1951, 'USA', 108, 'English', 'Approved', NULL, 2295429),
('Deadline - U.S.A.', 1952, 'USA', 87, 'English', NULL, NULL, NULL),
('High Noon', 1952, 'USA', 85, 'English', 'PG', NULL, 750000),
('Singin in the Rain', 1952, 'USA', 103, 'English', 'Approved', NULL, 2540800),
('The Greatest Show on Earth', 1952, 'USA', 152, 'English', 'Not Rated', 36000000, 4000000),
('From Here to Eternity', 1953, 'USA', 118, 'English', 'Not Rated', NULL, 1650000),
('Niagara', 1953, 'USA', 92, 'English', 'Approved', NULL, 1250000),
('The Beast from 20,000 Fathoms', 1953, 'USA', 80, 'English', 'Approved', 5000000, 210000),
('The Robe', 1953, 'USA', 135, 'English', 'Unrated', 36000000, 5000000),
('20,000 Leagues Under the Sea', 1954, 'USA', 127, 'English', 'Approved', NULL, 5000000),
('On the Waterfront', 1954, 'USA', 108, 'English', 'Not Rated', 9600000, 910000),
('Seven Samurai', 1954, 'Japan', 202, 'Japanese', 'Unrated', 269061, 2000000),
('The Egyptian', 1954, 'USA', 139, 'English', 'Approved', NULL, 5000000),
('Ordet', 1955, 'Denmark', 126, 'Danish', 'Not Rated', NULL, NULL),
('The Trouble with Harry', 1955, 'USA', 99, 'English', 'Approved', NULL, 1200000),
('Love Me Tender', 1956, 'USA', 89, 'English', NULL, NULL, 1000000),
('Moby Dick', 1956, 'USA', 115, 'English', 'Unrated', NULL, 4500000),
('Trapeze', 1956, 'USA', 105, 'English', 'Approved', NULL, 4000000),
('12 Angry Men', 1957, 'USA', 96, 'English', 'Not Rated', NULL, 350000),
('The Bridge on the River Kwai', 1957, 'UK', 161, 'English', 'PG', 27200000, 3000000),
('Cat on a Hot Tin Roof', 1958, 'USA', 108, 'English', 'Approved', NULL, 3000000),
('Solomon and Sheba', 1959, 'USA', 141, 'English', NULL, NULL, 5000000),
('Some Like It Hot', 1959, 'USA', 120, 'English', 'Not Rated', 25000000, 2883848);



-- Calculate the sum of gross from the year 2000 or later
select sum(gross) as total_gross
from films
where release_year>=2000


-- Calculate the average gross of films that start with A
select avg(gross) as avg_gross_A
from films
where title like 'A%'


-- Calculate the lowest gross film in 1994
select min(gross) as lowest_gross
from films
where release_year=1994


-- Calculate the highest gross film released between 2000-2012
select max(gross) as highest_gross
from films
where release_year between 2000 and 2012 