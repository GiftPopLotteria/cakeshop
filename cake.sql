set nocount on
USE master
GO

USE Cake
GO
set nocount on
USE master
GO

if exists (select * from sysdatabases where name='Cake')
begin
  raiserror('Dropping existing Cake database ....',0,1)
  DROP database Cake
end
GO

CHECKPOINT
go

raiserror('Creating Cake database....',0,1)
go
   CREATE DATABASE Cake
GO

CHECKPOINT
GO

USE Cake
GO
-- Create Products table
raiserror('Creating Table Products....',0,1)
CREATE TABLE Products (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    image VARCHAR(255) NOT NULL
);
GO
-- Create Products table
raiserror('Creating Table Customers....',0,1)
CREATE TABLE Customers (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL
);
GO
-- Create Products table
raiserror('Creating Table Orders....',0,1)
CREATE TABLE Orders (
    id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    order_date DATETIME NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);
GO
-- Create Products table
raiserror('Creating Table OrderItem....',0,1)
CREATE TABLE OrderItem (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);
GO
USE Cake;
GO

ALTER TABLE Products
ADD Tags VARCHAR(255),
    Image1 VARCHAR(255),
    Image2 VARCHAR(255),
    Image3 VARCHAR(255),
    Image4 VARCHAR(255),
    Image5 VARCHAR(255);
GO
-- Create the Subscription table
raiserror('Creating Table Subscription....',0,1)
CREATE TABLE Subscription (
    email VARCHAR(255) PRIMARY KEY,
    date_subscribed DATETIME NOT NULL
);

GO

-- Create Class table
raiserror('Creating Table Class....',0,1)
GO

CREATE TABLE Class (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  class VARCHAR(50) NOT NULL,
  requirement TEXT NULL
);
GO


-- Populate the Products table
raiserror('Insert Table Products....',0,1)
SET IDENTITY_INSERT Products ON
INSERT INTO Products (id, name, description, price, category, image, Tags, Image1, Image2, Image3, Image4, Image5)
VALUES 
(1,'Dozen Cupcakes','Dozen cupcakes typically refer to a set of 12 small cakes that are usually baked in a muffin tin and decorated with frosting or other toppings.',32,'Cupcake','https://themewagon.github.io/cake/img/shop/product-1.jpg','cupcake, dozen cupcakes, muffin','NULL','NULL','NULL','NULL','NULL'),
 (2,'Cookies and Cream','Cookies and cream typically refers to a flavor combination that features crumbled chocolate cookies (such as Oreo cookies) mixed into a vanilla-flavored base, such as ice cream or frosting.',30,'Cupcake','https://themewagon.github.io/cake/img/shop/product-2.jpg','cookies and cream, cupcake','NULL','NULL','NULL','NULL','NULL'),
 (3,'Gluten Free Mini Dozen','Gluten-free mini dozen refers to a set of twelve small baked goods that are made without gluten, a protein found in wheat, barley, and rye.',31,'Cupcake','https://themewagon.github.io/cake/img/shop/product-3.jpg','gluten-free, mini dozen, cupcake','NULL','NULL','NULL','NULL','NULL'),
 (4,'Cookie Dough','Cookie dough refers to a mixture of ingredients that are used to make cookies but have not yet been baked.',25,'Cupcake','https://themewagon.github.io/cake/img/shop/product-4.jpg','cookie dough, cupcake','NULL','NULL','NULL','NULL','NULL'),
 (5,'Vanilla Salted Caramel','Vanilla salted caramel refers to a flavor combination that features the sweet and creamy taste of vanilla paired with the rich, buttery flavor of salted caramel.',5,'Cupcake','https://themewagon.github.io/cake/img/shop/product-5.jpg','vanilla, salted caramel, cupcake','NULL','NULL','NULL','NULL','NULL'),
 (6,'German Chocolate','German chocolate refers to a type of chocolate cake that is made with a unique combination of ingredients.',14,'Cupcake','https://themewagon.github.io/cake/img/shop/product-6.jpg','german chocolate, chocolate, cake, cupcake','NULL','NULL','NULL','NULL','NULL'),
 (7,'Dulce De Leche','Dulce de leche is a thick, creamy caramel sauce that is popular in Latin American cuisine. It is made by slowly heating sweetened condensed milk until it thickens and turns a golden brown color.',32,'Cupcake','https://themewagon.github.io/cake/img/shop/product-7.jpg','dulce de leche, caramel, sauce, cupcake','NULL','NULL','NULL','NULL','NULL'),
 (8,'Mississippi Mud','Mississippi mud is a rich and decadent dessert that typically consists of a chocolate cake base topped with marshmallows, chocolate frosting, and sometimes nuts or other toppings.',8,'Cupcake','https://themewagon.github.io/cake/img/shop/product-8.jpg','mississippi mud, chocolate, cake, marshmallows, frosting, nuts, cupcake','NULL','NULL','NULL','NULL','NULL'),
 (9,'Sri Lankan','Sri Lankan Butter Cake, also known as "Milk Toffee Cake," is a rich and buttery cake that is popular in Sri Lanka. It is typically made with ingredients such as butter, sugar, eggs, flour, baking powder, and milk.',4,'Butter','https://www.theflavorbender.com/wp-content/uploads/2020/08/Sri-Lankan-Butter-Cake-SM-9023.jpg','NULL','NULL','NULL','NULL','NULL','NULL'),
 (10,'Basic Vanilla','A Basic Vanilla Butter Cake is a classic cake made with simple ingredients such as flour, sugar, butter, eggs, vanilla extract, and baking powder. It has a soft and tender crumb, a slightly sweet flavor, and a subtle vanilla aroma.',20,'Butter','https://vintagekitchennotes.com/wp-content/uploads/2020/09/Vanilla-Butter-Cake.1.jpg','NULL','NULL','NULL','NULL','NULL','NULL'),
 (11,'Gooey','Gooey Butter Cake is a classic dessert that originated in St. Louis, Missouri, in the United States. It is a type of cake that is known for its rich and dense texture, with a gooey and buttery filling and a slightly crisp top crust.',17.5,'Butter','https://www.thecookierookie.com/wp-content/uploads/2022/08/Gooey-Butter-Cake-5-1024x1536.jpg','NULL','NULL','NULL','NULL','NULL','NULL'),
 (12,'Classic Buttercake','A timeless recipe made with simple ingredients for a classic taste.',12.99,'Butter','classic_buttercake.jpg','cake, dessert, classic, buttercake','NULL','NULL','NULL','NULL','NULL'),
 (13,'Chocolate Buttercake','A rich and decadent buttercake with a chocolatey twist.',14.99,'Butter','chocolate_buttercake.jpg','cake, dessert, chocolate, buttery','NULL','NULL','NULL','NULL','NULL'),
 (14,'Lemon Buttercake','A tangy and refreshing buttercake made with fresh lemon juice and zest.',16.99,'Butter','lemon_buttercake.jpg','cake, dessert, lemon, buttery','NULL','NULL','NULL','NULL','NULL'),
 (15,'Blueberry Buttercake','A sweet and fruity buttercake loaded with juicy blueberries.',18.99,'Butter','blueberry_buttercake.jpg','cake, dessert, blueberry, buttery','NULL','NULL','NULL','NULL','NULL'),
 (16,'Peanut Butter Buttercake','A nutty and creamy buttercake with a peanut butter twist.',21.99,'Butter','peanut_butter_buttercake.jpg','cake, dessert, peanut butter, buttery','NULL','NULL','NULL','NULL','NULL'),
 (17,'Banana Buttercake','A moist and flavorful buttercake made with ripe bananas.',17.99,'Butter','banana_buttercake.jpg','cake, dessert, banana, buttery','NULL','NULL','NULL','NULL','NULL'),
 (18,'Vanilla Bean Buttercake','A fragrant and luxurious buttercake made with real vanilla beans.',23.99,'Butter','vanilla_bean_buttercake.jpg','cake, dessert, vanilla, buttery','NULL','NULL','NULL','NULL','NULL'),
 (19,'Raspberry Buttercake','A tart and fruity buttercake filled with fresh raspberries.',19.99,'Butter','raspberry_buttercake.jpg','cake, dessert, raspberry, buttery','NULL','NULL','NULL','NULL','NULL'),
 (20,'Caramel Buttercake','A sweet and indulgent buttercake drizzled with caramel sauce.',25.99,'Butter','caramel_buttercake.jpg','cake, dessert, caramel, buttery','NULL','NULL','NULL','NULL','NULL'),
 (21,'Strawberry Buttercake','A summery buttercake bursting with fresh strawberry flavor.',20.99,'Butter','strawberry_buttercake.jpg','cake, dessert, strawberry, buttery','NULL','NULL','NULL','NULL','NULL'),
 (22,'Classic Red Velvet','A traditional red velvet cake with cream cheese frosting.',16.99,'Red_Velvet','classic_red_velvet.jpg','cake, dessert, classic, red velvet','NULL','NULL','NULL','NULL','NULL'),
 (23,'Red Velvet Cheesecake','A decadent red velvet cake with a creamy cheesecake layer.',24.99,'Red_Velvet','red_velvet_cheesecake.jpg','cake, dessert, cheesecake, red velvet','NULL','NULL','NULL','NULL','NULL'),
 (24,'Red Velvet Cupcakes','Individual red velvet cakes with a fluffy cream cheese frosting.',11.99,'Red_Velvet','red_velvet_cupcakes.jpg','cupcakes, dessert, red velvet','NULL','NULL','NULL','NULL','NULL'),
 (25,'Red Velvet Brownies','Fudgy red velvet brownies with a chocolate cream cheese swirl.',19.99,'Red_Velvet','red_velvet_brownies.jpg','brownies, dessert, red velvet, chocolate','NULL','NULL','NULL','NULL','NULL'),
 (26,'Red Velvet Bundt Cake','A stunning red velvet cake baked in a bundt pan.',21.99,'Red_Velvet','red_velvet_bundt_cake.jpg','cake, dessert, red velvet, bundt','NULL','NULL','NULL','NULL','NULL'),
 (27,'Red Velvet Whoopie Pies','Two red velvet cookies sandwiching a cream cheese filling.',14.99,'Red_Velvet','red_velvet_whoopie_pies.jpg','cookies, dessert, red velvet, cream cheese','NULL','NULL','NULL','NULL','NULL'),
 (28,'Red Velvet Ice Cream','A rich and creamy ice cream flavored with red velvet cake.',8.99,'Red_Velvet','red_velvet_ice_cream.jpg','ice cream, dessert, red velvet','NULL','NULL','NULL','NULL','NULL'),
 (29,'Red Velvet Cake Balls','Bite-sized red velvet cakes coated in chocolate.',12.99,'Red_Velvet','red_velvet_cake_balls.jpg','cake balls, dessert, red velvet, chocolate','NULL','NULL','NULL','NULL','NULL'),
 (30,'Red Velvet Pancakes','Fluffy pancakes with a hint of cocoa and red food coloring.',9.99,'Red_Velvet','red_velvet_pancakes.jpg','pancakes, breakfast, red velvet','NULL','NULL','NULL','NULL','NULL'),
 (31,'Red Velvet Waffles','Crispy waffles with a deep red color and subtle cocoa flavor.',12.99,'Red_Velvet','red_velvet_waffles.jpg','waffles, breakfast, red velvet','NULL','NULL','NULL','NULL','NULL'),
 (32,'Chocolate Chip Cookies','Classic cookies loaded with chocolate chips.',5.99,'Biscuit','chocolate_chip_cookies.jpg','cookies, snack, chocolate chip','NULL','NULL','NULL','NULL','NULL'),
 (33,'Shortbread Cookies','Buttery cookies with a delicate crumb.',7.99,'Biscuit','shortbread_cookies.jpg','cookies, snack, shortbread','NULL','NULL','NULL','NULL','NULL'),
 (34,'Oatmeal Raisin Cookies','Chewy cookies with oats and raisins.',6.99,'Biscuit','oatmeal_raisin_cookies.jpg','cookies, snack, oatmeal raisin','NULL','NULL','NULL','NULL','NULL'),
 (35,'Peanut Butter Cookies','Soft and chewy cookies made with peanut butter.',6.99,'Biscuit','peanut_butter_cookies.jpg','cookies, snack, peanut butter','NULL','NULL','NULL','NULL','NULL'),
 (36,'Almond Biscotti','Crisp cookies with sliced almonds.',8.99,'Biscuit','almond_biscotti.jpg','biscotti, snack, almonds','NULL','NULL','NULL','NULL','NULL'),
 (37,'Butter Cookies','Melt-in-your-mouth cookies made with butter.',7.99,'Biscuit','butter_cookies.jpg','cookies, snack, butter','NULL','NULL','NULL','NULL','NULL'),
 (38,'Gingerbread Cookies','Spiced cookies with a hint of molasses.',6.99,'Biscuit','gingerbread_cookies.jpg','cookies, snack, gingerbread','NULL','NULL','NULL','NULL','NULL'),
 (39,'Coconut Macaroons','Chewy cookies with shredded coconut.',8.99,'Biscuit','coconut_macaroons.jpg','macaroons, snack, coconut','NULL','NULL','NULL','NULL','NULL'),
 (40,'Snickerdoodle Cookies','Soft cookies rolled in cinnamon sugar.',6.99,'Biscuit','snickerdoodle_cookies.jpg','cookies, snack, snickerdoodle','NULL','NULL','NULL','NULL','NULL'),
 (41,'Cheddar Cheese Biscuits','Savory biscuits with cheddar cheese.',9.99,'Biscuit','cheddar_cheese_biscuits.jpg','biscuits, snack, cheddar cheese','NULL','NULL','NULL','NULL','NULL'),
 (42,'Glazed Donut','Classic yeast-raised donut with a sweet glaze.',1.99,'Donut','glazed_donut.jpg','donut, dessert, glazed','NULL','NULL','NULL','NULL','NULL'),
 (43,'Chocolate Donut','Chocolate cake donut with a chocolate glaze.',2.49,'Donut','chocolate_donut.jpg','donut, dessert, chocolate','NULL','NULL','NULL','NULL','NULL'),
 (44,'Maple Donut','Yeast-raised donut with a sweet maple glaze.',2.99,'Donut','maple_donut.jpg','donut, dessert, maple','NULL','NULL','NULL','NULL','NULL'),
 (45,'Strawberry Donut','Cake donut with a strawberry glaze and sprinkles.',2.99,'Donut','strawberry_donut.jpg','donut, dessert, strawberry','NULL','NULL','NULL','NULL','NULL'),
 (46,'Blueberry Donut','Cake donut with a blueberry glaze and powdered sugar.',2.99,'Donut','blueberry_donut.jpg','donut, dessert, blueberry','NULL','NULL','NULL','NULL','NULL'),
 (47,'Jelly Donut','Yeast-raised donut filled with jelly and dusted with sugar.',2.49,'Donut','jelly_donut.jpg','donut, dessert, jelly','NULL','NULL','NULL','NULL','NULL'),
 (48,'Boston Cream Donut','Yeast-raised donut filled with custard and topped with chocolate glaze.',2.99,'Donut','boston_cream_donut.jpg','donut, dessert, boston cream','NULL','NULL','NULL','NULL','NULL'),
 (49,'Apple Fritter','Fried dough with apple chunks and a sweet glaze.',3.49,'Donut','apple_fritter.jpg','donut, dessert, apple','NULL','NULL','NULL','NULL','NULL'),
 (50,'Cinnamon Roll Donut','Yeast-raised donut with cinnamon sugar and cream cheese frosting.',3.49,'Donut','cinnamon_roll_donut.jpg','donut, dessert, cinnamon roll','NULL','NULL','NULL','NULL','NULL'),
 (51,'Powdered Sugar Donut','Yeast-raised donut dusted with powdered sugar.',1.99,'Donut','powdered_sugar_donut.jpg','donut, dessert, powdered sugar','NULL','NULL','NULL','NULL','NULL');
