USE ListingAppDB
GO

INSERT INTO dbo.Users (UserName, ZipCode, PhoneNumber, Birthdate, Password, Email) VALUES
('Homer Simpson', 92101, '858-600-1234', '04/03/1999', 'donut', 'homer@gmail.com')
GO

INSERT INTO dbo.Categories(CategoryDescription) VALUES
('Antique'),
('Appliances'),
('Bikes'),
('Boats'),
('Cars'),
('Books'),
('Phones'),
('Video Games'),
('Electronics'),
('Wanted'),
('Other')
GO


insert into dbo.Products (CategoryId, ProductDescription, Price) VALUES ((SELECT C.CategoryId FROM Categories C WHERE C.CategoryDescription = 'Books'), '2001, A Space Odyssey', 19.95)
GO
insert into dbo.Products (CategoryId, ProductDescription, Price) VALUES ((SELECT C.CategoryId FROM Categories C WHERE C.CategoryDescription = 'Cars'), '2017 Honda Civic', 23995.00)
GO
insert into dbo.Products (CategoryId, ProductDescription, Price) VALUES ((SELECT C.CategoryId FROM Categories C WHERE C.CategoryDescription = 'Phones'), 'iPhone 9', 795.00)
GO

Insert into dbo.Messages(Subject, MessageText, DateCreated, ProductId, UserId, IsRead, ToUserId) VALUES
('Message Subject 1', 'Is this phone still available?', GETDATE(), 
(SELECT P.ProductId FROM Products P INNER JOIN Categories C ON C.CategoryId =  P.CategoryId WHERE C.CategoryDescription = 'Phones'),
(SELECT U.UserId FROM Users U WHERE U.UserName = 'Homer Simpson'), 0, (SELECT U.UserId FROM Users U WHERE U.UserName = 'Jim Yahnke'))
GO

Insert into dbo.Messages(Subject, MessageText, DateCreated, ProductId, UserId, IsRead, ToUserId) VALUES
('Message Subject 2', 'Still for sale??', GETDATE(), 
(SELECT P.ProductId FROM Products P INNER JOIN Categories C ON C.CategoryId =  P.CategoryId WHERE C.CategoryDescription = 'Phones'),
(SELECT U.UserId FROM Users U WHERE U.UserName = 'Homer Simpson'), 0, (SELECT U.UserId FROM Users U WHERE U.UserName = 'Jim Yahnke'))
GO

Insert into dbo.Messages(Subject, MessageText, DateCreated, ProductId, UserId, IsRead, ToUserId) VALUES
('Message Subject 3', 'Is this phone still for sale I will give you plenty?', GETDATE(), 
(SELECT P.ProductId FROM Products P INNER JOIN Categories C ON C.CategoryId =  P.CategoryId WHERE C.CategoryDescription = 'Phones'),
(SELECT U.UserId FROM Users U WHERE U.UserName = 'Homer Simpson'), 0, (SELECT U.UserId FROM Users U WHERE U.UserName = 'Jim Yahnke'))
GO

SELECT * FROM Users
SELECT * FROM Categories
SELECT * FROM Products
GO


--DELETE FROM USERS
--DELETE FROM Categories
--DELETE FROM Products
--DELETE FROM Favorites
--DELETE FROM Messages

