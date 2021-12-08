use master
-- Kiểm tra cơ sơ dữ liệu WEEK2PRACTICE đã tồn tại chưa? Nểu tồn tại rồi thì xóa, rồi tạo lại
if exists (select Name from sys.databases  where Name ='WEEK2PRACTICE_TEAM7')
    drop database WEEK2PRACTICE_TEAM7   -- Xóa csdl WEEK2PRACTICE-TEAM7
go
create database WEEK2PRACTICE_TEAM7  -- Tạo csdl WEEK2PRACTICE-TEAM7
go
use WEEK2PRACTICE_TEAM7 -- Mở csdl WEEK2PRACTICE-TEAM7 để thêm các Table
go

 /*
	BÁO CÁO BÀI TẬP WEEK 2 - SQL SERVER
	Nhóm 7: Flutter App 
	Ngày: 06/12/2021
	Team Report: Team 7
	Nhiệm vụ đã làm: Giải bài tập - Tạo Database và truy vấn dữ liệu trong SQL Server
	Vấn đề: Không
	Nhiệm vụ tiếp theo: Chưa có
	Thành viên: Phân Task như sau
	 - Vũ Minh Đăng Khoa (Câu 5, 11, 17, 4, 10)
	 - Hoàng Đức Hiền (Tạo Database, câu 1, và 3, 7, 19 )
	 - Nguyễn Đức Hùng (Câu 2, 8, 14, 13, 9, 15)
	 - Võ Thanh Hải (Câu 6, 12, 18, 21, 16, 20)
 */

-- Tạo bảng items_ordered
-- Drop items_ordered, drop table items_ordered
CREATE TABLE items_ordered
(
	customerid		INT,
	order_date		VARCHAR(50),
	item			VARCHAR(50),
	quantity		INT,
	price			float(20)
)

-- Thêm dữ liệu vào cho Table items_ordered
	INSERT INTO items_ordered (customerid, order_date, item, quantity, price) VALUES
	(10330,'30-Jun-1999','Pogo stick', 1,28.00),
	(10101,'30-Jun-1999','Raft', 1,58.00),
	(10298,'01-Jul-1999','Skateboard', 1,33.00),
	(10101,'30-Jun-1999','Life Vest', 4,125.00),
	(10299,'06-Jul-1999','Parachute ', 1,1250.00),
	(10339,'27-Jul-1999','Umbrella', 1,4.50),
	(10449,'13-Aug-1999','Unicycle', 1,180.79),
	(10439,'14-Aug-1999','Ski Poles', 2,25.50),
	(10101,'18-Aug-1999','Rain Coat', 1,18.30),
	(10449,'01-Sep-1999','Snow Shoes', 1,45.00),
	(10439,'18-Sep-1999','Tent', 1,88.00),
	(10298,'19-Sep-1999','Lantern', 2,29.00),
	(10410,'28-Oct-1999','Sleeping Bag', 1,89.22),
	(10438,'01-Nov-1999','Umbrella', 1,6.75),
	(10438,'02-Nov-1999','Pillow', 1,8.50),
	(10298,' 01-Dec-1999','Helmet', 1,22.00),
	(10449,'15-Dec-1999','Bicycle', 1,380.50),
	(10449,'22-Dec-1999','Canoe', 1,280.00),
	(10101,'30-Dec-1999','Hoola Hoop', 3,14.75),
	(10330,'01-Jan-2000','Flashlight ', 4,28.00),
	(10101,'02-Jan-2000','Lantern', 1,16.00),
	(10299,'18-Jan-2000','Inflatable Mattress', 1,38.00),
	(10438,'18-Jan-2000','Tent', 1,79.99),
	(10413,'19-Jan-2000 ','Lawnchair ', 4,32.00),
	(10410,'30-Jan-2000','Unicycle', 1,192.50),
	(10315,'2-Feb-2000','Compass', 1,8.00),
	(10449,'29-Feb-2000','Flashlight ', 1,4.50),
	(10101,'08-Mar-2000','Sleeping Bag', 2,88.70),
	(10298,'18-Mar-2000 ','Pocket Knife', 1,22.38),
	(10449,'19-Mar-2000','Canoe paddle', 2,40.00),
	(10298,'01-Apr-2000','Ear Muffs', 1,12.50),
	(10330,'19-Apr-2000','Shovel', 1,16.75)

-- Truy vấn dữ liệu table items_ordered
 SELECT* FROM items_ordered

-- Tạo bảng cusomters
-- Drop cusomters, xoá bảng drop table cusomters

CREATE TABLE cusomters
(
	customerid		INT,
	firstname		VARCHAR(50),
	lastname		VARCHAR(50),
	city			VARCHAR(50),
	[state]			VARCHAR(50)
)

-- Thêm dữ liệu vào cho Table cusomters
	INSERT INTO cusomters (customerid, firstname, lastname, city, [state]) VALUES
	(10101, 'John', 'Gray', 'Lynden', 'Washington'),
	(10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),
	(10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),
	(10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),
	(10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),
	(10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),
	(10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),
	(10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),
	(10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),
	(10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona'),
	(10410, 'Mary Ann', 'Howell', 'Charleston', 'South Carolina'),
	(10413, 'Donald', 'Donald', 'Gila Bend', 'Arizona'),
	(10419, 'Linda', 'Sakahara', 'Nogales', 'Arizona'),
	(10429, 'Sarah', 'Graham', 'Greensboro', 'North Carolina'),
	(10438, 'Kevin', 'Smith', 'Durango', 'Colorado'),
	(10439, 'Conrad', 'Giles', 'Telluride', 'Colorado'),
	(10449, 'Isabela', 'Isabela', 'Yuma', 'Arizona')

-- Truy vấn dữ liệu table items_ordered
 SELECT* FROM cusomters

 ------------------------------------------------------------
 -- BẢNG PHÂN TASK CÔNG VIỆC CHO THÀNH VIÊN
 -- 1. HOÀNG ĐỨC HIỀN - THIẾT KẾ DATABASE VÀ LÀM CÂU 1,7
 /*
 Câu 1. From the items_ordered table, select a list of all items purchased for customerid 10449. 
 Display the customerid, item, and price for this customer.
 */
	-- Đầu tiên ta hiển thị truy xuất ra các trường customerid, item, price trong Bảng items_ordered,
	SELECT customerid, item, price FROM items_ordered 
	-- dùng toán tử WHERE đưa điều kiện đó là trường customerid phải bằng 10449, sau đó hiển thị ra
	WHERE customerid = 10449;
 /*
 Câu 7. What are the total number of rows in the items_ordered table?
 */
	-- Tương tự ta hiển thị truy xuất rồi dùng hàm COUNT để đếm tất cả cột items_ordered có bao nhiêu số lượng
	SELECT COUNT(*)
	-- Trong bảng items_ordered
	FROM items_ordered;

 /*
 Câu 3. Select the customerid, order_date, and item values from the items_ordered table for any items in the item column that start with the letter "S".
 */
	-- Đầu tiên ta hiển thị truy xuất ra các trường customerid, order_date, item trong Bảng items_ordered,
	SELECT customerid, order_date, item
	-- Trong Bảng items_ordered
	FROM items_ordered
	-- sau đó dùng toán tử WHERE đưa điều kiện LIKE tìm kiếm chữ cái bắt đầu bằng Chữ 'S'
	WHERE item LIKE 'S%'

  /*
 Câu 19. Select the item and price of all items that start with the letters 'S', 'P', or 'F'.
 */
 	-- Cách 1. Đầu tiên ta hiển thị truy xuất ra các trường item, price, trong Bảng items_ordered,
	SELECT item, price 
	-- Trong Bảng items_ordered
	FROM items_ordered
	-- sau đó dùng toán tử WHERE đưa điều kiện LIKE tìm kiếm chữ cái bắt đầu bằng Chữ 'S' or 'P' or 'F'
	WHERE item LIKE 'S%' or item LIKE 'P%' or item LIKE 'F%'

	-- Cách 2. 
	-- Đầu tiên ta hiển thị truy xuất ra các trường item, price, trong Bảng items_ordered,
	SELECT item, price 
	-- Trong Bảng items_ordered
	FROM  items_ordered
	-- sau đó dùng toán tử WHERE đưa điều kiện LIKE dùng nhiều lần ký tự % trong cùng 1 chuỗi  tìm kiếm chữ cái bắt đầu bằng Chữ '[SPF]%'
	WHERE item LIKE '[SPF]%'

 -----------------------------------------------------------------------

 -- HẾT TASK CỦA HOÀNG ĐỨC HIỀN


 -----------------------------------------------------------------------

  -- 2. VŨ MINH ĐĂNG KHOA - LÀM CÂU 5,11,17,4,10
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!
  --câu 4 :Select the distinct items in the items_ordered table. In other words, display a listing of each of the unique items from the items_ordered table.
  -- mệnh đề DISTINCT được dùng để loại bỏ trùng lặp trong bộ kết quả trả về
  SELECT DISTINCT item from items_ordered
   
  --câu 5:Select the maximum price of any item ordered in the items_ordered table. Hint: Select the maximum price only.
  --Hàm Max để chọn ra giá trị cao nhất
  SELECT MAX(price) from items_ordered
  --câu 10:From the items_ordered table, select the item, maximum price, and minimum price for each specific item in the table. Hint: The items will need to be broken up into separate groups.
  -- Hiển thị truy xuất item , maxprice, minpirce
 SELECT item, MAX(price) as MaxPrice, MIN(price) as MinPrice
  -- từ bảng items_ordered
 FROM items_ordered
 -- sắp xếp các hàng của truy vấn theo item
 GROUP BY item;
  --câu 11:How many orders did each customer make? Use the items_ordered table. Select the customerid, number of orders they made, and the sum of their orders. Click the Group By answers link below if you have any problems.
  -- Hiển thị truy xuất các trường, Count : đếm số item , Tổng giá của các item.
   --Group By customerid : dựa theo trường customerid để lọc ra order của từng khách hàng
  SELECT customerid, COUNT(item) as CountOrders, SUM(price) as SumPirce
  FROM items_ordered
  GROUP BY customerid;
  --câu 17:Select the item and price for all of the items in the items_ordered table that the price is greater than 10.00. Display the results in Ascending order based on the price.
  --hiển thị truy xuất item, price từ items_ordered
  SELECT item , price 
  FROM items_ordered
  --điều kiện price>10.00
  WHERE price>10.00
  --sắp xếm theo price tăng dần
  ORDER BY price ASC



 -----------------------------------------------------------------------

 -- HẾT TASK CỦA Vũ Minh Đăng Khoa


  -----------------------------------------------------------------------
  -- 3. NGUYỄN ĐỨC HÙNG - LÀM CÂU 2, 8, 9, 13, 14, 15.
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!

  /*
 Câu 2. Select all columns from the items_ordered table for whoever purchased a Tent.
 */
	SELECT * FROM items_ordered
	-- Tương tự ta hiển thị truy xuất ra Bảng items_ordered
	WHERE item = 'Tent';
	-- sau đó dùng toán tử WHERE đưa điều kiện đó là trường item phải là 'Tent'

/*
 Câu 8. Select all columns from the items_ordered table for whoever purchased a Tent.
 */
	 SELECT MIN(price)
	 --Ta set giá giá của 'Tent' từ giá thấp nhất với hàm MIN.
	FROM items_ordered
	--Từ bảng items_ordered.
	WHERE item = 'Tent'
	-- sau đó dùng toán tử WHERE đưa điều kiện đó là trường item phải là 'Tent'.
	;

/*
 Câu 9. How many people are in each unique state in the customers table? Select the state and display the number of people in each.
 */
	 SELECT [state], COUNT([state])
	 --Chúng ta truy xuất dữ liệu từ bảng state, sau đó dùng biết đếm là COUNT, mục địch để hiện số người trong bảng.
	FROM cusomters
	--từ bảng cusomters 
	GROUP BY [state];
	--Trong group by cho phép ta sắp xếp các hàng của truy vấn theo nhóm. Các nhóm được xác định bởi các cột mà bạn chỉ định.Cụ thể ở đây là state.
	
/*
 Câu 13. From the items_ordered table, select the item, maximum price, and minimum price for each specific item in the table.
 */
	 SELECT item, MAX(price), MIN(price)
	-- Đầu tiên ta cần truy xuất dữ liệu từ trường item, sau đó dùng 2 biến đếm MAX(cao nhất) và MIN(thấp nhất) để đưa ra giá cao nhất và thấp nhất trong trường item
	FROM items_ordered
	--Từ bảng items_ordered
	GROUP BY item
	--Trong group by item cho phép ta sắp xếp các hàng của truy vấn theo nhóm giá cao và thấp nhất.
;
/*
 Câu 14.How many orders did each customer make? Use the items_ordered table. Select the customerid, number of orders they made, and the sum of their orders if they purchased more than 1 item.
 */
	 SELECT customerid, COUNT(quantity), SUM(price)
	 --Tương tự như câu 13, ta cần truy xuất dữ liệu từ trường item, sau đó dùng 2 biết đếm COUNT và SUM(tính tổng)
	FROM items_ordered
	--Từ bảng items_ordered
	GROUP BY customerid
	HAVING COUNT(quantity) > 1
	--Ở đây hàm group by customerid vẫn có nhiệm vụ là đưa giá trị tổng số đơn đặt hàng nhưng yêu cầu là phải mua nhiều hơn 1 mặt hàng thì ==>Pass
;
/*
Câu 15. Select the lastname, firstname, and city for all customers in the customers table. Display the results in Ascending Order based on the lastname.
*/
	SELECT lastname, firstname, city
	--Ta cần truy xuất dữ liệu từ trường lastname, firstname, city
	FROM cusomters
	-- Từ bảng cusomters
	ORDER BY lastname ASC;
	--Order by lastname ASC cho ta có thể thứ tự sắp xếp mặc định là tăng dần (A đến Z, 0 đến 9)
	--Ngược lại chúng ta có thể dùng Order by lastname DESC để sắp xếp theo thứ tự giảm dần (Z đến A, 9 đến 0)




 -----------------------------------------------------------------------


 -- HẾT TASK CỦA Nguyễn Đức Hùng.
 

 -----------------------------------------------------------------------

  -- 4. - Võ Thanh Hải (Câu 6, 12, 18, 21, 16, 20)
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!
  --Câu 6 : Select the average price of all of the items ordered that were purchased in the month of Dec.
SELECT AVG(price) as AvgPrice
-- hiển thị giá trị trung của trường price và đặt bí danh cho price là AvgPrice
FROM items_ordered
--Từ bảng items_ordered
WHERE order_date LIKE '%Dec%'
;
  --Với yêu cầu ngày đặt là tháng 12
  --Câu 12: How many people are in each unique state in the customers table that have more than one person in the state? Select the state and display the number of how many people are in each if it's greater than 1.
SELECT state, COUNT(state) Quantity FROM cusomters

GROUP BY state
HAVING COUNT(state) > 1;
--Câu 18 :Select the customerid, order_date, and item from the items_ordered table for all items unless they are 'Snow Shoes' or if they are 'Ear Muffs'. Display the rows as long as they are not either of these two items.
SELECT customerid, order_date, item 
--Hiển thị các trường customerid, order_date, item 
FROM items_ordered
--Từ bảng items_ordered
WHERE NOT item ='Snow Shoes' or item ='Ear Muffs';
-- VỚi yêu cầu trừ các item là snow shoes hoặc ear muffs
--cách 2:
SELECT customerid, order_date, item 
--Hiển thị các trường customerid, order_date, item 
FROM items_ordered
--Từ bảng items_ordered
WHERE item NOT IN ('Snow Shoes','Ear Muffs');
--Với yêu cầu chọn tất cả item không phải là snow shoes hoặc ear muffs
--Câu 21 : Select the firstname, city, and state from the customers table for all of the rows where the state value is either: Arizona, Washington, Oklahoma, Colorado, or Hawaii.
--Cách 1:
SELECT firstname, city, state 
--Hiển thị các trường firstname, city, state 
FROM cusomters
--Từ bảng cusomters
WHERE state ='Arizona' or state ='Washington' or state ='Oklahoma' or state ='Colorado' or state ='Hawaii';
--Với yêu cầu state là Arizona, Washington, Oklahoma, Colorado hoặc Hawaii.
--cách 2:
SELECT firstname, city, state 
 --Hiển thị các trường firstname, city, state 
FROM cusomters
--Từ bảng cusomters
WHERE state IN ('Arizona', 'Washington', 'Oklahoma', 'Colorado', 'Hawaii')
-- Với yêu cầu chọn tất cả state là  Arizona, Washington, Oklahoma, Colorado hoặc Hawaii.
--Câu 16: 
SELECT customerid, item, price FROM items_ordered 
-- dùng toán tử WHERE đưa điều kiện đó là trường customerid phải bằng 10449, sau đó hiển thị ra
WHERE customerid = 10449 
ORDER BY customerid  DESC ;



 -----------------------------------------------------------------------


  
 
