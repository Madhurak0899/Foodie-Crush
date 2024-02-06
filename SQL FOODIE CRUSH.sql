create database Recipe_Portal;
use Recipe_Portal;
CREATE TABLE Users (
    User_ID INT PRIMARY KEY,
    User_Name VARCHAR(20),
    Email VARCHAR(40),
    Join_date DATE,
    City varchar (20)
);
insert into Users values (201, 'Ruhani', 'rhuhu12@gmail.com', '2016-10-12','Mumbai'),
						 (202, 'Arshita', 'aru04@gmail.com', '2018-05-09', 'Lakhnow'),
                         (203, 'Babita', 'babita22@gmail.com', '2016-04-01','Agra'),
                         (204, 'Chinmaee', 'chinu28@gmail.com', '2020-06-24','Mumbai'),
                         (205, 'Disha', 'disha78@gmail.com', '2021-01-15','Pune'),
                         (206, 'Ishani', 'ishu00@gamil.com', '2019-12-06','Nashik'),
                         (207, 'Asha', 'aa1225@gmail.caom', '2018-08-30','Mumbai');
                         
SELECT 
    *
FROM
    users;
    
    
drop table Users;
CREATE TABLE Recipe (
    Recipe_ID INT PRIMARY KEY,
    Recipe_Name VARCHAR(40),
    Prep_time TIME,
    cook_time TIME,
    instructions TEXT,
    serving INT,
    user_ID INT,foreign key(User_Id) references Users(User_Id),
    Category_ID int
);
drop table Recipe;
truncate table Recipe;
insert into Recipe value 
						 (1,'Pasta arrabbiata with aubergine', '00:08:00', '00:35:20', '1. Heat the oil in a large non-stick pan, add the onions, cover and cook for 5 mins.
                                                                                     Remove the lid and cook for 5 mins more, stirring frequently until softened.
                                                                                     Add the garlic, chilli flakes and paprika, stir briefly, then tip in the tomatoes
                                                                                     and a can of water. Stir in the bouillon and aubergine, then bring to a simmer,
                                                                                     cover and cook for 20 mins.
																				  2. Cook the penne in a pan of boiling water for 12 mins until al dente. Drain, 
																					 reserving 60ml of the cooking water. Add the cooked penne to the sauce,
                                                                                     and toss well with the basil and a little of the reserved water,
                                                                                     if needed. Spoon into two shallow bowls, and serve topped with the cheese
                                                                                     and some extra basil, if you like.',
																				  2, 204,303),
						(2, 'Kidney bean curry','00:05:00', '00:30:00', '1. Heat the oil in a large frying pan over a low-medium heat.
                                                                      Add the onion and a pinch of salt and cook slowly, stirring occasionally
                                                                      until softened and just starting to colour.
                                                                      Add the garlic, ginger and coriander stalks and cook for a further 2 mins,
                                                                      until fragrant.
																   2. Add the spices to the pan and cook for another 1 min, by which point everything should smell aromatic.
																	  Tip in the chopped tomatoes and kidney beans in their water, then bring to the boil.
																   3. Turn down the heat and simmer for 15 mins until the curry is nice and thick. 
                                                                      Season to taste, then serve with the basmati rice and the coriander leaves.',
																   2, 201,301),
                       (3, 'Pasta primavera', '00:10:00', '00:20:00', '1. Bring a pan of salted water to the boil and put a steamer (or colander) over the water.
                                                                    Steam the beans, asparagus and peas until just tender, then set aside.
                                                                    Boil the pasta following pack instructions.
																 2. Meanwhile, fry the leeks gently in the oil and butter for 5 mins or until soft.
                                                                    Add the fromage frais to the leeks and very gently warm through,
                                                                    stirring constantly to ensure it doesn’t split.
                                                                    Add the herbs and steamed vegetables with a splash of pasta water to loosen.
																 3. Drain the pasta and stir into the sauce. Adjust the seasoning,
                                                                    then serve scattered with the cheese and drizzled with a little extra olive oil.',
																 4, 203,303),
						(4, 'Vegetarian chilli', '00:25:00', '00:55:00', '1. Heat the oil in a large saucepan over a low-medium heat and fry the carrots,
                                                                       celery, onions and mixed herbs for 10-12 mins, stirring occasionally until the
                                                                       veg is soft but not golden. You may need to add a splash of water if the veg
                                                                       starts to catch.
																	2. Stir in the garlic and both peppers, and cook for a further 5 mins until the
                                                                       peppers begin to soften. Sprinkle in the chilli powder and paprika,
                                                                       turn up the heat to medium, then stir and cook for 1 min.
                                                                       Mix in the tomato purée and cook for a further 1 min, then pour in all of
                                                                       the beans, the tomatoes and stock.
																	3. Stir well, bring to the boil, then reduce the heat to a simmer.
                                                                       Cook for 25-35 mins until the beans are tender and the sauce has thickened.
                                                                       Serve with rice, grated cheddar and soured cream, if you like.',
																	 8, 205,301),
						 (5, 'Penne with cabbage & walnuts', '00:10:00', '00:15:00', '1. Cook the penne in a pan of boiling water for 12 mins until tender.
                                                                                   Meanwhile, heat the oil in a large pan over a medium heat and fry
                                                                                   the cabbage for 8-10 mins until softened.
                                                                                   Add the chilli and garlic and cook for 3-4 mins more until the
                                                                                   garlic is starting to colour. Add the nuts and cook for 1 min more.
                                                                                   Remove from the heat and stir in the lemon zest.
																				2. Drain the penne, reserving the cooking water. Add the drained pasta
																				   to the cabbage mixture along with the lemon juice and two
                                                                                   ladlefuls of the reserved water (if needed, to loosen),
                                                                                   and toss everything well to combine.
                                                                                   Serve half between two people.', 
																				4, 201,303);
  drop table Recipe;
  
  
SELECT 
    *
FROM
    Recipe;
    
    
    

create table Ingredient(
Ingredient_ID int primary key auto_increment,
Ingredient_Name varchar (50) not null,
Descriptions text, 
Recipe_ID int);

insert into Ingredient values (501, 'cold-pressed rapeseed oil', '1 tbsp',1);
insert into Ingredient (Ingredient_Name, Descriptions, Recipe_ID) values ('10 large onion','finely chopped (160g)',2), 
                                                         ('25 large garlic cloves','finely grated',3),
                                                         ('chilli flakes','8 tsp',1),
                                                         ('smoked paprika','2 tsp',5),
                                                         ('chopped tomatoes','400g',1),
                                                         ('vegetable bouillon powder','1 tsp',2),
                                                         ('1 aubergine','chopped',1),
                                                         ('wholemeal penne','150g',1),
                                                         ('large handful of basil','',2),
                                                         ('25g parmesan','finely grated',4),
                                                         ('vegetable oil','',4),
                                                         ('ginger','peeled and finely chopped',3),
                                                         ('coriander','stalks finely chopped, leaves roughly shredded',2),
                                                         ('ground cumin','500gm',3),
                                                         ('ground paprika','200gm',5),
                                                         ('garam masala','100gm',5),
                                                         ('kidney beans','1kg',4),
                                                         ('cooked basmati rice','to serve',2),
                                                         ('young broad beans','use frozen if you cant get fresh',2),
                                                         ('asparagus tips','400gm',3),
                                                         ('peas','use frozen',3),
                                                         ('spaghetti','1 bunch',5),
                                                         ('pack baby leeks','trimmed and sliced',4),
                                                         ('olive oil','extra to serve',1),
                                                         ('butter','1/2 Kg',5),
                                                         ('creme fraiche','',2),
                                                         ('handful fresh chopped herbs','we used mint, parsley and chives',4),
                                                         ('carrots','finely chopped',2),
                                                         ('celery sticks','finely chopped',5),
                                                         ('red pepper','sliced',1),
                                                         ('green pepper','sliced',1),
                                                         ('chilli powder','depending on how hot you like it',2),
                                                         ('black beans','50gm',3),
                                                         ('vegetable stock','4 kg',4),
                                                         ('walnuts','chopped',4),
                                                         (' 10 lemon','zested and juiced',3);
                                                         
                                                         
                                                         
select * from Ingredient;



truncate table Ingredient;

create table Category (
Category_ID int primary key,
Category_Name varchar(30) not null);

insert into Category values (301,'Breakefast'),
							(302,'Dinner'),
							(303,'Lunch'),
                            (304, 'Dessert');
                            
                            
                            
select * from Category;


drop table Category;
create table Comments (
Comment_ID int primary key auto_increment,
Comments text,
Recipe_ID int);
                
insert into Comments (Comments, Recipe_ID) values ('My family loved it. I used garlic and other mixed herbs and a squeeze of lemon .. easy to make will do again',3),
												  ('Great recipe, but it really needs lemon squeezed over at the end to balance out the creaminess and complement the fresh spring veg and herb flavours',3),
                                                  ('I loved this I added a small green chilli for an extra kick',1),
                                                  ('Incredible recipe. Went down a treat at my dinner party',4),
                                                  ('Have made this recipe several times, it has a lot of flavor. Sometimes I add bacon bits or cubed ham. Works really well.',2);
truncate table comments;




select * from Comments;







-- Retrive the number of comments for each recipe
 
SELECT R.Recipe_Name, COUNT(C.Comment_ID) AS CommentCount
FROM Recipe R
LEFT JOIN Comments C ON R.Recipe_ID = C.Recipe_ID
GROUP BY R.Recipe_Name;



-- Find the recipe with a "PASTA" in their title

SELECT Recipe_Name
FROM Recipe
WHERE Recipe_Name LIKE '%Pasta%';




-- Retrive all the recipe titles and their authour's usernames

SELECT R.Recipe_Name, U.User_name
FROM Recipe R
JOIN Users U ON R.User_ID = U.User_ID;



-- Retrive recipes with a "onion" ingredient in it

SELECT R.Recipe_Name, I.Ingredient_Name AS Ingredient
FROM Recipe R
JOIN Ingredient I ON R.Recipe_ID = I.Recipe_ID
WHERE Ingredient_Name = 'chilli flakes';




-- List the most recent user join to the portal

SELECT *
FROM Users
ORDER BY Join_date DESC;

-- Display Ingredient_ID and Ingredient_Name whose Recipe_ID is 1 and 2

SELECT Ingredient_ID, Ingredient_Name, Recipe_ID
FROM Ingredient
WHERE Recipe_ID in (1,2);


-- Retrive the third highest cooking time taken by recipe 

SELECT max(Cook_Time) 
FROM Recipe
WHERE Cook_Time < (select max(Cook_Time) from Recipe where Cook_Time < (select max(Cook_Time) from Recipe));



-- Retrive the Recipe_ID and Recipe_Name whose recipe has not been commented


SELECT Recipe_ID,Recipe_Name
From Recipe
WHERE Recipe_ID NOT IN (SELECT Recipe_ID FROM Comments);



-- Find recipe in a category "Lunch"

SELECT *
FROM Recipe 
WHERE Category_ID IN (SELECT Category_ID FROM Category WHERE Category_Name = 'Lunch');


-- Retrive the ingredients used in recipe_ID "3"

SELECT *
FROM Ingredient
WHERE Recipe_ID= 3;


-- Retrive all users vintage till date

SELECT *, datediff(curdate(),Join_date) as Vintage
FROM Users;



-- Retrive the quickest recipe


SELECT *, Cook_Time
FROM Recipe
WHERE Cook_Time IS NOT NULL
ORDER BY Cook_Time ASC
LIMIT 1;

-- Retrive users which didn't posted recipe yet


SELECT U.User_Name, U.User_ID
FROM Users U
LEFT JOIN Recipe R ON U.User_ID = R.User_ID
WHERE R.Recipe_ID IS NULL;


-- Retrive users whose last letter is A 

SELECT * FROM Users
WHERE User_Name like '%A';


-- Retrive users whose either from "Mumbai" or "Lakhnow"


SELECT *
FROM Users
WHERE city in('Mumbai', 'Lakhnow');


-- Retrive User_ID, User_Name and Recipe_ID, Recipe_Name

(select U.User_ID, U.User_Name,
R.Recipe_ID,R.Recipe_Name
from Users U
right outer join
Recipe R       
on U.User_ID =R. User_ID);



-- Retrive all Recipe_name in Capital letter


SELECT upper(Recipe_Name) 
FROM Recipe;



-- Fetch total number of users from various cities


SELECT City, COUNT(*) AS TotalUsers
FROM Users
GROUP BY City;




-- Retrive users from distinct city's

SELECT distinct City
FROM Users;


-- Retrive Recipe according to preparation time in descending order



SELECT *
FROM Recipe
ORDER BY Prep_Time DESC;


-- Reitrive the Joining day of Users as Joining_Day

SELECT *, dayname(Join_Date) as Joining_Day
FROM Users;


-- Retrive all User_Name in small letter
SELECT lower(Recipe_Name) 
FROM Recipe;




-- Retrive all character length of Recipe_Name



SELECT char_length(Recipe_Name) from Recipe;






-- Add column "Ratings" in comment table

ALTER TABLE Comments
add column Rating int;
select * from comments;