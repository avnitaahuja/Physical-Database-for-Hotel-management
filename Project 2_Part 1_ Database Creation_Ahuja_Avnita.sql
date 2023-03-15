
/*Create database called 'hotel_management'*/

DROP DATABASE IF EXISTS hotel_management;
CREATE DATABASE hotel_management;
USE hotel_management;

-- Table structure for table `employees`

DROP TABLE IF EXISTS employees; 
CREATE TABLE employees (
	emp_num CHAR(4) NOT NULL,
	emp_id VARCHAR(4) NOT NULL,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	title VARCHAR(45) NOT NULL,
	dob DATE NOT NULL,
	hire_date DATE NOT NULL,
	hotel_code VARCHAR(10) NOT NULL,  
	role_id CHAR(4) NOT NULL,
	dept_code CHAR(4) NOT NULL,
	PRIMARY KEY (emp_num)
);

-- Insert data into `employees`

INSERT INTO employees VALUES (8867, 'AR12', 'Krish', 'Reddy', 'Senior Marketing head', '1982-12-01', '2021-03-04', '41021B', '12RD', '12RD');
INSERT INTO employees VALUES (3384, 'AQ34', 'Rashad', 'Mohammed', 'HR Head', '1982-05-05', '2021-06-12', '40076S', '43QW', '42OP');
INSERT INTO employees VALUES (1293, 'BG20', 'Likith', 'Dewan', 'Assisstant CA', '1982-03-28', '2021-09-17', '41021B', '67BB', '21RD');

-- Data structure for 'employee_dependents'

DROP TABLE IF EXISTS employee_dependents; 
CREATE TABLE employee_dependents (
	emp_num CHAR(4) NOT NULL,
	dependent_first_name VARCHAR(45) NOT NULL,
	dependent_last_name VARCHAR(45) NOT NULL,
	relationship VARCHAR(45) NOT NULL
);
 
 -- Insert data into `employee_dependents`
 
INSERT INTO employee_dependents VALUES (8867, 'Arjun', 'Reddy', 'Son');
INSERT INTO employee_dependents VALUES (3384, 'Ayan', 'Mohammed', 'Brother');
INSERT INTO employee_dependents VALUES (1293, 'Kabir', 'Dewan', 'Father');

-- Data structure for 'department'

DROP TABLE IF EXISTS department; 
CREATE TABLE department (
	dept_code CHAR(4) NOT NULL,
	dept_name VARCHAR(45) NOT NULL,
	PRIMARY KEY (dept_code)
);

 -- Insert data into `department`
 
INSERT INTO department VALUES ('12RD', 'Marketing');
INSERT INTO department VALUES ('42OP', 'Human Resources');
INSERT INTO department VALUES ('21RD', 'Accounting');
  
-- Table structure for table `hotel`

DROP TABLE IF EXISTS hotel; 
CREATE TABLE hotel (
	hotel_code VARCHAR(6) NOT NULL,
	hotel_address VARCHAR(45) NOT NULL,
	hotel_postcode VARCHAR(45) NOT NULL,
	hotel_city VARCHAR(45) NOT NULL,
	hotel_country VARCHAR(45) NOT NULL,
	num_rooms CHAR(3) NOT NULL,  
	phone_no CHAR(10) NOT NULL,
	star_rating CHAR(1) NOT NULL,
	PRIMARY KEY (hotel_code)
);

-- Insert data into `hotel`

INSERT INTO hotel VALUES ('41021B', 'Linking road bandra', 410210, 'Mumbai', 'India', 243, 7021287582, 4);
INSERT INTO hotel VALUES ('40076S', 'Nariman Point sea face', 400706, 'Mumbai', 'India', 189, 9920367654, 5);
INSERT INTO hotel VALUES ('41022B', 'Linking road bandra', 410210, 'Mumbai', 'India', 243, 7021287582, 4);

-- Table structure for table `room`

DROP TABLE IF EXISTS room; 
CREATE TABLE room (
	room_number VARCHAR(6) NOT NULL,
	room_type VARCHAR(45) NOT NULL,
	hotel_code VARCHAR(10) NOT NULL,
	occupancy CHAR(1) NOT NULL,
	PRIMARY KEY (room_number)
);
  
-- Insert data into `room`

INSERT INTO room VALUES (402, 'Twin', '41021B', 2);
INSERT INTO room VALUES (711, 'Queen', '40076S', 2);
INSERT INTO room VALUES (1312, 'King', '41021B', 3);

-- Table structure for table `room_type`

DROP TABLE IF EXISTS room_type; 
CREATE TABLE room_type (
	room_type VARCHAR(45) NOT NULL,
	room_price VARCHAR(10) NOT NULL,
	default_room_price VARCHAR(6) NOT NULL,
	room_desc VARCHAR(45) NOT NULL,
	PRIMARY KEY (room_type)
  );
  
-- Insert data into `room_type`

INSERT INTO room_type VALUES ('Twin', 649, 550, 'Two twin size bed with city view');
INSERT INTO room_type VALUES ('Queen', 769, 650, 'Luxurious Queen size bed with skyline ');
INSERT INTO room_type VALUES ('King', 1029, 930, 'Luxurious King size bed with seaview ');

-- Table structure for table `booking`

DROP TABLE IF EXISTS booking; 
CREATE TABLE booking (
	bkg_id CHAR(4) NOT NULL,
	hotel_code VARCHAR(6) NOT NULL,
	guest_id VARCHAR(10) NOT NULL,
	room_number VARCHAR(6) NOT NULL,
	bkg_date DATE NOT NULL,
	bkg_time TIME (6) NOT NULL,
	arrival_date DATE NOT NULL,
	departure_date DATE NOT NULL,
	est_arrival_time TIME (6) NOT NULL,
	est_departure_time TIME (6) NOT NULL,
	num_adults VARCHAR(6) NOT NULL,
	num_children VARCHAR(6) NOT NULL,
	special_req VARCHAR(45) NOT NULL,
	PRIMARY KEY (bkg_id)
);

-- Insert data into `booking` 

INSERT INTO booking VALUES (5674, '41021B', 'QRE23', 402, '2022-12-23', '12:00:00', '2022-12-23', '2022-12-25', '11:30:00', '11:30:00', 1, 0, 'None');
INSERT INTO booking VALUES (2384, '40076S', 'TYW23', 711, '2022-04-22', '14:20:00', '2022-04-22', '2022-04-23', '3:30:00', '3:30:00', 2, 0, 'None');
INSERT INTO booking VALUES (8504, '41021B', 'BFY53', 1312, '2022-05-02', '12:00:00', '2022-05-02', '2022-05-10', '12:15:00', '12:15:00', 2, 1, 'Baby Bed');

-- Table structure for table `guest`

DROP TABLE IF EXISTS guest; 
CREATE TABLE guest (
	guest_id VARCHAR(10) NOT NULL,
	bkg_id VARCHAR(6) NOT NULL,
	guest_first_name VARCHAR(45) NOT NULL,
	guest_last_name VARCHAR(45) NOT NULL,
	guest_title VARCHAR(45) NOT NULL,
	guest_dob VARCHAR(45) NOT NULL,
	guest_gender VARCHAR(45) NOT NULL,
	guest_phone_number VARCHAR(10) NOT NULL,
	guest_email VARCHAR(45) NOT NULL,
	guest_password VARCHAR(45) NOT NULL,
	guest_passport_number VARCHAR(45) NOT NULL,
	guest_address VARCHAR(45) NOT NULL,
	guest_postcode VARCHAR(45) NOT NULL,
	guest_city VARCHAR(45) NOT NULL,
	guest_country VARCHAR(45) NOT NULL,
	PRIMARY KEY (guest_id)
);
  
-- Insert data into `guest`

INSERT INTO guest VALUES ('QRE23', 5674, 'Singh', 'Khan', 'Mr.', '1989-04-16', 'Male', 9833010199, 'khan12@gmail.com', 'Qwerty', 'AD1272', '12 Road, Kashmir', 129843, 'Jammu', 'Kashmir');
INSERT INTO guest VALUES ('TYW23', 2384, 'Raj', 'Jackson', 'Mr.', '1999-03-26', 'Male', 7977171494, 'raj3420@hotmail.com', 'asdffgg', 'BB4200', 'Rd Dorad, nerul,goa', 684902, 'Nerul', 'Goa');
INSERT INTO guest VALUES ('41021B', '41021B', 'Bhabu', 'Bhai', 'Mr.', '1996-09-14', 'Male', 902237485, 'bhabu_Bhai@icloud.com', 'Bahsiue', 'AD1723', 'Hr Road, Doha,', 183402, 'Doha', 'Qutar');

-- Table structure for table `bill`

DROP TABLE IF EXISTS bill; 
CREATE TABLE bill (
	invoice_number VARCHAR(10) NOT NULL,
	bkg_id VARCHAR(6) NOT NULL,
	guest_id VARCHAR(10) NOT NULL,
	room_charge VARCHAR(10) NOT NULL,
	room_service VARCHAR(10) NOT NULL,
	resto_charges VARCHAR(10) NOT NULL,
	bar_charges VARCHAR(10) NOT NULL,
	misc_charges VARCHAR(45) NOT NULL,
	if_late_checkout VARCHAR(10) NOT NULL,
	payment_date DATE NOT NULL,
	payment_mode VARCHAR(45) NOT NULL,
	credit_card_number VARCHAR(45),
	expire_date DATE,
	cheque VARCHAR(45),
	PRIMARY KEY (invoice_number)
);
  
-- Insert data into `bill`

INSERT INTO bill VALUES (127492, 5674, 'QRE23', 550, 543, 0, 0, 564, 50, '2022-12-23', 'Credit Card', 394029404204830, '2030-05-12', NULL);
INSERT INTO bill VALUES (985035, 2384, 'TYW23', 650, 0, 750, 430, 0, 25, '2022-04-22', 'Bank Transfer', NULL, NULL, NULL);
INSERT INTO bill VALUES (579303, '41021B', 'BFY53', 1029, 1999, 573, 0, 402, 0, '2022-05-02', 'UPI', NULL, NULL, NULL);

