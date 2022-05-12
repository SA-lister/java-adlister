USE sa_lister_db;

INSERT INTO users (username, email, password)
VALUES ('Chris', 'chris@email.com', '$2a$12$PR.9ruxGJVsOfOGHCIYzl.JyA2CCxhMJXsosr2GTRM0exQPej3H/O'),
       ('Sam', 'sam@email.com', '$2a$12$PR.9ruxGJVsOfOGHCIYzl.JyA2CCxhMJXsosr2GTRM0exQPej3H/O'),
       ('Nathan', 'nathan@email.com', '$2a$12$PR.9ruxGJVsOfOGHCIYzl.JyA2CCxhMJXsosr2GTRM0exQPej3H/O');

INSERT INTO categories (category)
VALUES ('restaurant'),
       ('history'),
       ('outdoors'),
       ('family'),
       ('nightlife'),
       ('etc');

INSERT INTO ads (user_id, cat_id, title, description, location, reputation)
VALUES ('1', '1', 'Bunz', 'Local burger restaurant with some of the best burgers in town.', '122 E Houston St, San Antonio, TX 78205', 25),
       ('1', '2', 'Witte Museum', 'The Witte Museum was established in 1926 and is located in Brackenridge Park in San Antonio, Texas. It is dedicated to telling the stories of Texas, from prehistory to the present.', '3801 Broadway, San Antonio, TX 78209', 16),
       ('2', '3', 'McAllister Park', 'Park located on the north side of San Antonio that is comprised of 713 acres. It is great for walking, biking, and even has a dog park.', '13102 Jones Maltsberger Rd, San Antonio, TX 78247', 19),
       ('3', '4', 'Pearl Brewery', 'The Pearl San Antonio is a district in the city with a rich history. Initially home to the Pearl Brewery, which operated from 1883 to 2001, the Pearl district offers shops, a twice-weekly farmers market, restaurants, apartments, an outdoor park area, the Culinary Institute of America, and the Hotel Emma.', 'The, Pearl Pkwy, San Antonio, TX 78215', 42),
       ('3', '6', 'Codeup', 'San Antonio''s premier coding academy. Launched by Texans, for Texans, Codeup became one of the first coding bootcamps in the state in 2014. The three founders each had trouble finding qualified software developers to hire. As the tech field continues to grow, the need for qualified talent isn’t slowing down. Especially not in Texas.', '600 Navarro St #600, San Antonio, TX 78205', 69),
       ('3', '2', 'The Alamo', 'The Alamo Mission, commonly called the Alamo and originally known as the Misión San Antonio de Valero, is a historic Spanish mission and fortress compound founded in the 18th century by Roman Catholic missionaries in what is now San Antonio, Texas', '300 Alamo Plaza, San Antonio, TX 78205', 24),
       ('3', '3', 'Japanese Tea Garden', 'The Japanese Tea Garden is a beautiful, relaxing space and a free attraction in San Antonio. A former rock quarry, this area has been transformed into a peaceful garden with exotic plants, ponds with Koi, waterfalls, and the lovely stone Pavilion.', '200-414 Alpine, San Antonio, Texas', 12),
       ('3', '4', 'Six Flags Fiesta Texas', 'Six Flags Fiesta Texas, a popular attraction designed with kids in mind, is a theme and water park set in a former rock quarry. You can find traditional roller coasters, more advanced thrill rides, as well as those designed for younger kids and families.', '17000 W I-10, San Antonio, TX 78257', 36),
       ('3', '4', 'Natural Bridge Wildlife Ranch', 'An "African Safari, Texas-Style." The ranch is a Texas Land Heritage Property, recognized and certified by the State of Texas for being used for agriculture by the same family for over 100 years.', '26515 Natural Bridge Caverns Rd, San Antonio, TX 78266', 14),
       ('3', '5', 'Howl at the Moon', 'Lively bar with a party vibe featuring dueling piano shows & novelty bucket drinks.', '111 W. Crockett Street St. #201, San Antonio, TX 78205', -2),
       ('1', '1', 'Whiskey Cake', 'Whiskey Cake is your neighborhood joint for craft cocktails and farm-fresh comfort food. We source flavors, ingredients, and ideas straight from the farm, because good food tastes even better when it’s grown locally.', '15900 La Cantera Pkwy Suite 21200 San Antonio, TX 78256', 33),
       ('2', '1', 'Trilogy Pizza', 'With seating for over 100, we welcome everyone to experience excellent food at reasonable prices. Our happy hour is from 4 pm to 6 pm, so you have plenty of time to take advantage of house wine discounts and half-price appetizers (for dine-in guests only). Your satisfaction is our goal.', '19141 Stone Oak Parkway #113  San Antonio, TX 78258', 28),
       ('2', '6', 'Geekdom', 'Founded by techies and entrepreneurs, we’ve got a thing for startups and know what it takes to grow them.', '110 E Houston St 7th Floor, San Antonio, TX 78205', 16);


