-- Chọn cơ sở dữ liệu làm việc
USE classicmodels;

-- 1. Tạo Stored Procedure lấy toàn bộ danh sách khách hàng
DELIMITER //

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //

DELIMITER ;

-- Gọi thủ tục vừa tạo
CALL findAllCustomers();


-- 2. Chỉnh sửa Stored Procedure (Xóa thủ tục cũ và tạo lại thủ tục mới lọc theo customerNumber = 175)
DELIMITER //

DROP PROCEDURE IF EXISTS `findAllCustomers`//

CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //

DELIMITER ;

-- Gọi lại thủ tục sau khi đã chỉnh sửa
CALL findAllCustomers();