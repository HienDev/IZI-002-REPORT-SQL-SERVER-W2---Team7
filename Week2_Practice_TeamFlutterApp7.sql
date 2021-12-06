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
	 - Vũ Minh Đăng Khoa (Câu 5, 11, 17)
	 - Hoàng Đức Hiền (Tạo Database, câu 1, và 7)
	 - Nguyễn Đức Hùng (Câu 2, 8, 14, 13)
	 - Võ Thanh Hải (Câu 6, 12, 18, 21)
	 - Nguyễn Hồ Quang Thế (Câu 3, 9, 15, 19)
	 - Huỳnh Gia Huy (Câu 4, 10, 16, 20)
 */

-- Tạo bảng items_ordered
-- Drop items_ordered, drop table items_ordered
CREATE TABLE items_ordered
(
	customerid		INT,
	order_date		DATE,
	item			VARCHAR(50),
	quantity		INT,
	price			NVARCHAR(20)
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
 Câu 2. Select all columns from the items_ordered table for whoever purchased a Tent.
 */
	-- Tương tự ta hiển thị truy xuất ra Bảng items_ordered
	SELECT * FROM items_ordered
	-- sau đó dùng toán tử WHERE đưa điều kiện đó là trường item phải là 'Tent'
	WHERE item = 'Tent';

 /*
 Câu 3. Select the customerid, order_date, and item values from the items_ordered table for any items in the item column that start with the letter "S".
 */
	-- Đầu tiên ta hiển thị truy xuất ra các trường customerid, order_date, item trong Bảng items_ordered,
	SELECT customerid, order_date, item
	-- Trong Bảng items_ordered
	FROM items_ordered
	-- sau đó dùng toán tử WHERE đưa điều kiện LIKE tìm kiếm chữ cái bắt đầu bằng Chữ 'S'
	WHERE item LIKE 'S%'


 -----------------------------------------------------------------------

 -- HẾT TASK CỦA HOÀNG ĐỨC HIỀN


 -----------------------------------------------------------------------

  -- 2. VŨ MINH ĐĂNG KHOA - LÀM CÂU 5,11,17
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!




 -----------------------------------------------------------------------




  -----------------------------------------------------------------------

  -- 3. NGUYỄN ĐỨC HÙNG - LÀM CÂU 2,8,14,13
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!




 -----------------------------------------------------------------------


 
 

 -----------------------------------------------------------------------

  -- 4. VÕ THANH HẢI - LÀM CÂU 6,12,18,21
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!




 -----------------------------------------------------------------------


  
 

 -----------------------------------------------------------------------

  -- 5. HUỲNH GIA HUY - LÀM CÂU 4, 10, 16, 20
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!




 -----------------------------------------------------------------------



  -----------------------------------------------------------------------

  -- 6. NGUYỄN HỒ QUANG THẾ - LÀM CÂU 4, 10, 16, 20
 
  -- Thành viên ghi CODE VÀ GIẢI THÍCH theo Format của mình trên như vậy!




 -----------------------------------------------------------------------