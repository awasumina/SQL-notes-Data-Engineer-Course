CREATE TABLE reviews (
    id INT PRIMARY KEY,
    film_id INT,
    num_user INT,
    num_critic INT,
    imdb_score FLOAT,
    num_votes INT,
    facebook_likes INT
);demo
INSERT INTO reviews (film_id, num_user, num_critic, imdb_score, num_votes, facebook_likes) VALUES
(3934, 588, 432, 7.1, 203461, 46000),
(3405, 285, 267, 6.4, 149998, 0),
(478, 65, 29, 3.2, 8465, 491),
(74, 83, 25, 7.6, 7071, 930),
(1254, 1437, 224, 8, 241030, 13000),
(740, 111, 64, 6.4, 64742, 0),
(4841, 1058, 579, 8.1, 479047, 117000),
(2869, 59, 104, 6.8, 18442, 689),
(3252, 117, 160, 7.2, 49855, 10000),
(1181, 163, 99, 7.3, 16995, 0),
(2020, 402, 145, 6.7, 91092, 0),
(4152, 371, 359, 5.9, 108242, 39000),
(3220, 62, 64, 6.2, 15780, 2000),
(2312, 251, 161, 5.8, 63912, 912),
(1820, 113, 41, 7, 8535, 872),
(718, 85, 43, 6.4, 76850, 1000),
(831, 107, 65, 6.6, 40126, 975),
(1231, 226, 113, 6.5, 26034, 0),
(1746, 125, 71, 6.6, 17261, 455),
(3508, 43, 10, 5.3, 8598, 250),
(1621, 181, 93, 6, 44913, 3000),
(3197, 143, 128, 4.8, 33088, 0),
(4464, 5, 10, 4.8, 241, 261),
(3929, 7, 39, 7.1, 774, 590),
(2183, 18, 33, 4.5, 3119, 151),
(3298, 53, 83, 7.4, 6091, 0),
(2392, 156, 111, 5, 51252, 621),
(978, 41, 29, 6.1, 22748, 666),
(3176, 148, 222, 6.6, 55597, 4000),
(272, 60, 25, 6.1, 18140, 855),
(2414, 69, 87, 6.3, 10052, 0),
(2873, 65, 121, 5.9, 8867, 0),
(2744, 88, 117, 7.4, 46076, 11000),
(4013, 8, 13, 5.4, 133, 424),
(4707, 440, 465, 7.4, 232187, 47000),
(4592, 34, 59, 5.3, 5693, 0),
(2379, 90, 34, 6.6, 19336, 0),
(848, 57, 31, 6.7, 8531, 591),
(308, 134, 52, 6.9, 48629, 0),
(4210, 111, 217, 6.9, 31898, 0),
(1492, 377, 131, 6.6, 52244, 0),
(3879, 55, 162, 7.3, 15600, 0),
(4094, 150, 239, 6.8, 47954, 11000),
(3319, 120, 124, 5.4, 31191, 0),
(302, 152, 75, 6.2, 31260, 0),
(3854, 316, 481, 7.6, 148221, 51000),
(1522, 431, 142, 6.4, 200260, 0),
(1491, 119, 47, 3.6, 2855, 663),
(1526, 12, 15, 7.6, 341, 379),
(4501, 37, 129, 6.6, 8307, 5000),
(143, 64, 15, 7, 3454, 548),
(1048, 207, 78, 5.9, 6082, 853),
(1943, 866, 301, 8.2, 692482, 11000),
(877, 98, 43, 6.1, 13949, 453),
(4362, null, null, 4.3, 28, 17),
(2577, 306, 171, 5.8, 50170, 773),
(3760, 150, 206, 6.7, 46813, 12000),
(2331, 43, 38, 7.3, 6454, 0),
(1762, 10, 8, 5.8, 191, 7),
(3042, 109, 127, 4.9, 31640, 791);



-- Select film_ids and imdb_score with an imdb_score over 7.0
select film_id,imdb_score
from reviews
where imdb_score>7.0;


-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
select film_id,facebook_likes
from reviews
where facebook_likes<1000
limit 10;


-- Count the records with at least 100,000 votes
select count(num_votes) as films_over_100K_votes
from reviews
where num_votes>100000;
