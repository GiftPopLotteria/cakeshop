SET NOCOUNT ON
USE master
GO

IF EXISTS (SELECT * FROM sysdatabases WHERE name='Cake')
BEGIN
  RAISERROR('Dropping existing Cake database ....',0,1)
  DROP DATABASE Cake
END
GO

CHECKPOINT
GO

RAISERROR('Creating Cake database....',0,1)
GO
CREATE DATABASE Cake
GO

CHECKPOINT
GO

USE Cake
GO

-- Create Products table
RAISERROR('Creating Table Products....',0,1)
CREATE TABLE Products (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    image VARCHAR(255) NOT NULL,
    Tags VARCHAR(255),
    Image1 VARCHAR(255),
    Image2 VARCHAR(255),
    Image3 VARCHAR(255),
    Image4 VARCHAR(255),
    Image5 VARCHAR(255)
);
GO

-- Create Users table
RAISERROR('Creating Table Users....',0,1)
CREATE TABLE Users (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	roleid VARCHAR(20) NOT NULL
);
GO

-- Create Orders table
RAISERROR('Creating Table Orders....',0,1)
CREATE TABLE [Order] (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id VARCHAR(50) NOT NULL,
    order_date DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);
GO

-- Create OrderItem table
RAISERROR('Creating Table OrderItem....',0,1)
CREATE TABLE OrderItem (
    id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES [Order](id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
);
GO

-- Create Subscription table
RAISERROR('Creating Table Subscription....',0,1)
CREATE TABLE Subscription (
    email VARCHAR(255) PRIMARY KEY,
    date_subscribed DATETIME NOT NULL
);
GO

-- Create Class table
RAISERROR('Creating Table Class....',0,1)
CREATE TABLE Class (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(255) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  class VARCHAR(50) NOT NULL,
  requirement TEXT NULL
);
GO

-- Create Coupon table
RAISERROR('Creating Table Coupon....',0,1)
CREATE TABLE Coupon (
  id INT PRIMARY KEY,
  code VARCHAR(50),
  discount DECIMAL(5,2),
  expiration_date DATE
);
go

-- Populate the Coupon table
raiserror('Insert Table Coupon....',0,1)
GO
INSERT INTO Coupon(id, code, discount, expiration_date)
VALUES (2, 'SALE10', 0.10, '2023-04-30');


-- Populate the Products table
raiserror('Insert Table Products....',0,1)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (1, N'Dozen Cupcakes', N'Dozen cupcakes typically refer to a set of 12 small cakes that are usually baked in a muffin tin and decorated with frosting or other toppings.', CAST(32.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-1.jpg', N'cupcake, dozen cupcakes, muffin', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (2, N'Cookies and Cream', N'Cookies and cream typically refers to a flavor combination that features crumbled chocolate cookies (such as Oreo cookies) mixed into a vanilla-flavored base, such as ice cream or frosting.', CAST(30.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-2.jpg', N'cookies and cream, cupcake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (3, N'Gluten Free Mini Dozen', N'Gluten-free mini dozen refers to a set of twelve small baked goods that are made without gluten, a protein found in wheat, barley, and rye.', CAST(31.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-3.jpg', N'gluten-free, mini dozen, cupcake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (4, N'Cookie Dough', N'Cookie dough refers to a mixture of ingredients that are used to make cookies but have not yet been baked.', CAST(25.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-4.jpg', N'cookie dough, cupcake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (5, N'Vanilla Salted Caramel', N'Vanilla salted caramel refers to a flavor combination that features the sweet and creamy taste of vanilla paired with the rich, buttery flavor of salted caramel.', CAST(5.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-5.jpg', N'vanilla, salted caramel, cupcake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (6, N'German Chocolate', N'German chocolate refers to a type of chocolate cake that is made with a unique combination of ingredients.', CAST(14.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-6.jpg', N'german chocolate, chocolate, cake, cupcake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (7, N'Dulce De Leche', N'Dulce de leche is a thick, creamy caramel sauce that is popular in Latin American cuisine. It is made by slowly heating sweetened condensed milk until it thickens and turns a golden brown color.', CAST(32.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-7.jpg', N'dulce de leche, caramel, sauce, cupcake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (8, N'Mississippi Mud', N'Mississippi mud is a rich and decadent dessert that typically consists of a chocolate cake base topped with marshmallows, chocolate frosting, and sometimes nuts or other toppings.', CAST(8.00 AS Decimal(10, 2)), N'Cupcake', N'https://themewagon.github.io/cake/img/shop/product-8.jpg', N'mississippi mud, chocolate, cake, marshmallows, frosting, nuts, cupcake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (9, N'Sri Lankan', N'Sri Lankan Butter Cake, also known as "Milk Toffee Cake," is a rich and buttery cake that is popular in Sri Lanka. It is typically made with ingredients such as butter, sugar, eggs, flour, baking powder, and milk.', CAST(4.00 AS Decimal(10, 2)), N'Butter', N'https://www.theflavorbender.com/wp-content/uploads/2020/08/Sri-Lankan-Butter-Cake-SM-9023.jpg', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (10, N'Basic Vanilla', N'A Basic Vanilla Butter Cake is a classic cake made with simple ingredients such as flour, sugar, butter, eggs, vanilla extract, and baking powder. It has a soft and tender crumb, a slightly sweet flavor, and a subtle vanilla aroma.', CAST(20.00 AS Decimal(10, 2)), N'Butter', N'https://vintagekitchennotes.com/wp-content/uploads/2020/09/Vanilla-Butter-Cake.1.jpg', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (11, N'Gooey', N'Gooey Butter Cake is a classic dessert that originated in St. Louis, Missouri, in the United States. It is a type of cake that is known for its rich and dense texture, with a gooey and buttery filling and a slightly crisp top crust.', CAST(17.50 AS Decimal(10, 2)), N'Butter', N'https://www.thecookierookie.com/wp-content/uploads/2022/08/Gooey-Butter-Cake-5-1024x1536.jpg', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (12, N'Classic Buttercake', N'A timeless recipe made with simple ingredients for a classic taste.', CAST(12.99 AS Decimal(10, 2)), N'Butter', N'classic_buttercake.jpg', N'cake, dessert, classic, buttercake', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (13, N'Chocolate Buttercake', N'A rich and decadent buttercake with a chocolatey twist.', CAST(14.99 AS Decimal(10, 2)), N'Butter', N'chocolate_buttercake.jpg', N'cake, dessert, chocolate, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (14, N'Lemon Buttercake', N'A tangy and refreshing buttercake made with fresh lemon juice and zest.', CAST(16.99 AS Decimal(10, 2)), N'Butter', N'lemon_buttercake.jpg', N'cake, dessert, lemon, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (15, N'Blueberry Buttercake', N'A sweet and fruity buttercake loaded with juicy blueberries.', CAST(18.99 AS Decimal(10, 2)), N'Butter', N'blueberry_buttercake.jpg', N'cake, dessert, blueberry, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (16, N'Peanut Butter Buttercake', N'A nutty and creamy buttercake with a peanut butter twist.', CAST(21.99 AS Decimal(10, 2)), N'Butter', N'peanut_butter_buttercake.jpg', N'cake, dessert, peanut butter, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (17, N'Banana Buttercake', N'A moist and flavorful buttercake made with ripe bananas.', CAST(17.99 AS Decimal(10, 2)), N'Butter', N'banana_buttercake.jpg', N'cake, dessert, banana, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (18, N'Vanilla Bean Buttercake', N'A fragrant and luxurious buttercake made with real vanilla beans.', CAST(23.99 AS Decimal(10, 2)), N'Butter', N'vanilla_bean_buttercake.jpg', N'cake, dessert, vanilla, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (19, N'Raspberry Buttercake', N'A tart and fruity buttercake filled with fresh raspberries.', CAST(19.99 AS Decimal(10, 2)), N'Butter', N'raspberry_buttercake.jpg', N'cake, dessert, raspberry, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (20, N'Caramel Buttercake', N'A sweet and indulgent buttercake drizzled with caramel sauce.', CAST(25.99 AS Decimal(10, 2)), N'Butter', N'caramel_buttercake.jpg', N'cake, dessert, caramel, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (21, N'Strawberry Buttercake', N'A summery buttercake bursting with fresh strawberry flavor.', CAST(20.99 AS Decimal(10, 2)), N'Butter', N'strawberry_buttercake.jpg', N'cake, dessert, strawberry, buttery', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (22, N'Classic Red Velvet', N'A traditional red velvet cake with cream cheese frosting.', CAST(16.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://prettysimplesweet.com/wp-content/uploads/2018/03/Classic-Red-Velvet-Cake.jpg', N'cake, dessert, classic, red velvet', N'http://www.simplyscratch.com/wp-content/uploads/2012/10/D590D8B3-FD16-4993-AE77-2ED86E5E1A0F_1_201_a-700x1047.jpeg', N'https://i0.wp.com/gurgaonbakers.com/wp-content/uploads/2020/10/classic-red-velvet-heart-cake.jpg', N'https://www.vannesscupcake.com/wp-content/uploads/2018/11/IMG_5300.jpg', N'https://www.southernliving.com/thmb/5r1Tfh3s830gJz9En4VHUeQTO5E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Southern-Living_red-velvet-cake-molly-bolton-beauty2-360a9c0efa4e492f8948d890652c910f.jpg', N'https://m.media-amazon.com/images/I/71gPIJloe0S._SL1315_.jpg')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (23, N'Red Velvet Cheesecake', N'A decadent red velvet cake with a creamy cheesecake layer.', CAST(24.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://www.lifeloveandsugar.com/wp-content/uploads/2019/01/Red-Velvet-Cheesecake-Cake7.jpg', N'cake, dessert, cheesecake, red velvet', N'https://assets-eu-01.kc-usercontent.com/559bb7d3-88a4-01c1-79a3-dd4d5b2d2bb0/59c6cec5-02ef-47f3-93c3-5146e0d20416/1-Eric-Lanlard-Red-Velvet-Cheesecake-WEB.jpg', N'https://www.foodandwine.com/thmb/qPBKD71iwPXedh-M8fd1-EiCJbM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/red-velvet-cheesecake-xl-recipe2016-948bfe87cd2e4ae79dedb94e7f183eff.jpg', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (24, N'Red Velvet Cupcakes', N'Individual red velvet cakes with a fluffy cream cheese frosting.', CAST(11.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://thenovicechefblog.com/wp-content/uploads/2010/09/Red-Velvet-Cupcakes-1-735x1158.jpg', N'cupcakes, dessert, red velvet', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (25, N'Red Velvet Brownies', N'Fudgy red velvet brownies with a chocolate cream cheese swirl.', CAST(19.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://kitchenmason.com/wp-content/uploads/2021/05/Red-Velvet-Brownies-Recipe-SQUARE1-720x720.jpg', N'brownies, dessert, red velvet, chocolate', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (26, N'Red Velvet Bundt Cake', N'A stunning red velvet cake baked in a bundt pan.', CAST(21.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://www.nordicware.com/wp-content/uploads/2021/05/85777_brilliance_bundt_glazed_fruit_780x780_03.jpg', N'cake, dessert, red velvet, bundt', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (27, N'Red Velvet Whoopie Pies', N'Two red velvet cookies sandwiching a cream cheese filling.', CAST(14.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://southernbite.com/wp-content/uploads/2011/12/IMG_4174.jpg', N'cookies, dessert, red velvet, cream cheese', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (28, N'Red Velvet Ice Cream', N'A rich and creamy ice cream flavored with red velvet cake.', CAST(8.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://www.cakenknife.com/wp-content/uploads/2014/12/Red-Velvet-Ice-Cream-1.jpg', N'ice cream, dessert, red velvet', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (29, N'Red Velvet Cake Balls', N'Bite-sized red velvet cakes coated in chocolate.', CAST(12.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://myincrediblerecipes.com/wp-content/uploads/2022/12/CDSC_7509-scaled.jpg', N'cake balls, dessert, red velvet, chocolate', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (30, N'Red Velvet Pancakes', N'Fluffy pancakes with a hint of cocoa and red food coloring.', CAST(9.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://gimmedelicious.com/wp-content/uploads/2021/02/Red-Velvet-Pancakes-SQ.jpg', N'pancakes, breakfast, red velvet', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (31, N'Red Velvet Waffles', N'Crispy waffles with a deep red color and subtle cocoa flavor.', CAST(12.99 AS Decimal(10, 2)), N'Red_Velvet', N'https://homecookingmemories.com/wp-content/uploads/2019/02/Red-Velvet-Waffles-Recipe-7-1.jpg', N'waffles, breakfast, red velvet', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (32, N'Chocolate Chip Cookies', N'Classic cookies loaded with chocolate chips.', CAST(5.99 AS Decimal(10, 2)), N'Biscuit', N'chocolate_chip_cookies.jpg', N'cookies, snack, chocolate chip', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (33, N'Shortbread Cookies', N'Buttery cookies with a delicate crumb.', CAST(7.99 AS Decimal(10, 2)), N'Biscuit', N'shortbread_cookies.jpg', N'cookies, snack, shortbread', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (34, N'Oatmeal Raisin Cookies', N'Chewy cookies with oats and raisins.', CAST(6.99 AS Decimal(10, 2)), N'Biscuit', N'oatmeal_raisin_cookies.jpg', N'cookies, snack, oatmeal raisin', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (35, N'Peanut Butter Cookies', N'Soft and chewy cookies made with peanut butter.', CAST(6.99 AS Decimal(10, 2)), N'Biscuit', N'peanut_butter_cookies.jpg', N'cookies, snack, peanut butter', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (36, N'Almond Biscotti', N'Crisp cookies with sliced almonds.', CAST(8.99 AS Decimal(10, 2)), N'Biscuit', N'almond_biscotti.jpg', N'biscotti, snack, almonds', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (37, N'Butter Cookies', N'Melt-in-your-mouth cookies made with butter.', CAST(7.99 AS Decimal(10, 2)), N'Biscuit', N'butter_cookies.jpg', N'cookies, snack, butter', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (38, N'Gingerbread Cookies', N'Spiced cookies with a hint of molasses.', CAST(6.99 AS Decimal(10, 2)), N'Biscuit', N'gingerbread_cookies.jpg', N'cookies, snack, gingerbread', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (39, N'Coconut Macaroons', N'Chewy cookies with shredded coconut.', CAST(8.99 AS Decimal(10, 2)), N'Biscuit', N'coconut_macaroons.jpg', N'macaroons, snack, coconut', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (40, N'Snickerdoodle Cookies', N'Soft cookies rolled in cinnamon sugar.', CAST(6.99 AS Decimal(10, 2)), N'Biscuit', N'snickerdoodle_cookies.jpg', N'cookies, snack, snickerdoodle', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (41, N'Cheddar Cheese Biscuits', N'Savory biscuits with cheddar cheese.', CAST(9.99 AS Decimal(10, 2)), N'Biscuit', N'cheddar_cheese_biscuits.jpg', N'biscuits, snack, cheddar cheese', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (42, N'Glazed Donut', N'Classic yeast-raised donut with a sweet glaze.', CAST(1.99 AS Decimal(10, 2)), N'Donut', N'https://www.errenskitchen.com/wp-content/uploads/2022/02/Donuts-47b.jpg', N'donut, dessert, glazed', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (43, N'Chocolate Donut', N'Chocolate cake donut with a chocolate glaze.', CAST(2.49 AS Decimal(10, 2)), N'Donut', N'https://www.happinessishomemade.net/wp-content/uploads/2022/05/Frosted-Chocolate-Donuts-with-Sprinkles.jpg', N'donut, dessert, chocolate', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (44, N'Maple Donut', N'Yeast-raised donut with a sweet maple glaze.', CAST(2.99 AS Decimal(10, 2)), N'Donut', N'https://www.biggerbolderbaking.com/wp-content/uploads/2022/09/Maple-Bar-Donuts1-scaled.jpg', N'donut, dessert, maple', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (45, N'Strawberry Donut', N'Cake donut with a strawberry glaze and sprinkles.', CAST(2.99 AS Decimal(10, 2)), N'Donut', N'https://shesnotcookin.com/wp-content/uploads/2022/02/featured-image-easy-baked-strawberry-frosted-donuts.jpg', N'donut, dessert, strawberry', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (46, N'Blueberry Donut', N'Cake donut with a blueberry glaze and powdered sugar.', CAST(2.99 AS Decimal(10, 2)), N'Donut', N'https://www.spatuladesserts.com/wp-content/uploads/2022/04/Blueberry-baked-donuts-00182.jpg', N'donut, dessert, blueberry', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (47, N'Jelly Donut', N'Yeast-raised donut filled with jelly and dusted with sugar.', CAST(2.49 AS Decimal(10, 2)), N'Donut', N'https://cdn.apartmenttherapy.info/image/upload/f_jpg,q_auto:eco,c_fill,g_auto,w_1500,ar_1:1/k%2Farchive%2F465ebfc9d1e4028e44d75cf1fa11b4f3f0e06360', N'donut, dessert, jelly', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (48, N'Boston Cream Donut', N'Yeast-raised donut filled with custard and topped with chocolate glaze.', CAST(2.99 AS Decimal(10, 2)), N'Donut', N'https://www.marystestkitchen.com/wp-content/uploads/2017/08/ft-vegan-boston-cream-dooughnuts-bitten-720x720.jpg', N'donut, dessert, boston cream', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (49, N'Apple Fritter', N'Fried dough with apple chunks and a sweet glaze.', CAST(3.49 AS Decimal(10, 2)), N'Donut', N'https://azurestandard.imgix.net/cms/easy-apple-fritter-recipe.jpg?auto=format,compress&w=1200&ar=1:1&fit=crop', N'donut, dessert, apple', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (50, N'Cinnamon Roll Donut', N'Yeast-raised donut with cinnamon sugar and cream cheese frosting.', CAST(3.49 AS Decimal(10, 2)), N'Donut', N'https://homecookingmemories.com/wp-content/uploads/2018/04/Glazed-Cinnamon-Bun-Baked-Donuts-Recipe-4.jpg', N'donut, dessert, cinnamon roll', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
INSERT [dbo].[Products] ([id], [name], [description], [price], [category], [image], [Tags], [Image1], [Image2], [Image3], [Image4], [Image5]) VALUES (51, N'Powdered Sugar Donut', N'Yeast-raised donut dusted with powdered sugar.', CAST(1.99 AS Decimal(10, 2)), N'Donut', N'https://www.thedietchefs.com/wp-content/uploads/2021/02/Easy-Keto-Donuts-Recipe-THE-BEST-Low-Carb-Powdered-Sugar-Donuts-For-Keto.jpg', N'donut, dessert, powdered sugar', N'NULL', N'NULL', N'NULL', N'NULL', N'NULL')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO