
CREATE DATABASE GargEnterprises;
use  GargEnterprises;
CREATE TABLE Branch
(
  Branch_name varchar(255) NOT NULL,
  address varchar(255) NOT NULL,
  PRIMARY KEY (Branch_name)
);

CREATE TABLE Product
(
  Product_id INT NOT NULL,
  Product_name varchar(50) NOT NULL,
  Cost INT NOT NULL,
  Company varchar(50) NOT NULL,
  availability varchar(20) NOT NULL,
  Quantity INT NOT NULL,
  Branch_name varchar(255) NOT NULL,
  PRIMARY KEY (Product_id),
  FOREIGN KEY (Branch_name) REFERENCES Branch(Branch_name)
);

CREATE TABLE Supplier
(
  Supplier_id INT NOT NULL,
  name varchar(50) NOT NULL,
  number varchar(15) NOT NULL,
  PRIMARY KEY (Supplier_id)
);

CREATE TABLE Customer
(
  State varchar(20) NOT NULL,
  Street varchar(100) NOT NULL,
  City varchar(20) NOT NULL,
  phone varchar(15) NOT NULL,
  name varchar(20) NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE Supplies
(
  quanti INT NOT NULL,
  transaction_id INT NOT NULL,
  amount INT NOT NULL,
  Product_id INT NOT NULL,
  Supplier_id INT NOT NULL,
  PRIMARY KEY (transaction_id),
  FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
  FOREIGN KEY (Supplier_id) REFERENCES Supplier(Supplier_id),
  UNIQUE (Product_id, Supplier_id)
);

CREATE TABLE Buys
(
  transaction_id INT NOT NULL,
  Amount INT NOT NULL,
  Quantity_ INT NOT NULL,
  customer_id INT NOT NULL,
  Product_id INT NOT NULL,
  PRIMARY KEY (transaction_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
  UNIQUE (customer_id, Product_id)
);

CREATE TABLE Employee
(
  age INT NOT NULL,
  emp_id INT NOT NULL,
  birth_date date NOT NULL,
  address varchar(100) NOT NULL,
  email_id varchar(30) NOT NULL,
  first_Name varchar(20) NOT NULL,
  Last_Name varchar(20) NOT NULL,
  hoursworked INT NOT NULL,
  Salary INT NOT NULL,
  Branch_name varchar(255) NOT NULL,
  PRIMARY KEY (emp_id),
  FOREIGN KEY (Branch_name) REFERENCES Branch(Branch_name)
);

CREATE TABLE Sold_By
(
  transaction_id INT NOT NULL,
  amount INT NOT NULL,
  Product_id INT NOT NULL,
  emp_id INT NOT NULL,
  PRIMARY KEY (transaction_id),
  FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
  FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
  UNIQUE (Product_id, emp_id)
);

CREATE TABLE Employee_phone_num
(
  phone_num varchar(15) NOT NULL,
  emp_id INT NOT NULL,
  PRIMARY KEY (phone_num, emp_id),
  FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

insert into branch(
branch_name ,address
)
values(
'Garg Lifestyle','19/4710 cuttack road'
),
(
'Garg Trading Company','Durga Mandap'
);

insert into employee(age,
  emp_id ,
  birth_date,
  address ,
  email_id ,
  first_Name ,
  Last_Name ,
  hoursworked ,
  Salary ,
  Branch_name)
values(25,1,'1995-05-25','kalpana Square','vishnu@gmail.com','vishnu','gupta',330,25000,'Garg Lifestyle'
 ),
 (27,2,'1994-03-27','Louis Road','madhav@gmail.com','madhav','sharma',320,20000,'Garg Lifestyle' ),
 (24,3,'1997-02-11','Shaheed Road','sarkar21@gmail.com','sarkar','das',310,7000,'Garg Trading Company');
 
 insert into employee_phone_num(
 phone_num,
 emp_id)
 values('9437010223',1),
 ('9437010224',1),
 ('9437010214',2),
 ('9437010274',3);
 
 insert into product(Product_id ,
  Product_name ,
  Cost ,
  Company,
  availability ,
  Quantity ,
  Branch_name 
 )
 values(1,'silver faucet',27000,'Roca','Yes',50,'Garg Lifestyle'),
 (2,'woodbridge bathtub',35000,'kohler','Yes',30,'Garg Lifestyle'
),
(3,'shower part',4000,'Axor','Yes',100,'Garg Trading Company');

insert into customer(State ,
  Street ,
  City,
  phone ,
  name ,
  customer_id
)
values('Odisha','kalpana square','bhubaneswar','8093345321','Somil Gupta',1),
('odisha','louis road','rourkela','8093345721','Shaleen poddar',2);

insert into supplier(Supplier_id ,
  name,
  number
  )
  values(1,'roca India','7577465321'),
  (2,'kohler India','7577465521'),
  (3,'Axor India','7582465321');
  
  insert into supplies(quanti ,
  transaction_id ,
  amount ,
  Product_id ,
  Supplier_id)
  values(51,123456789,1377000,1,1),
  (31,324571890,1085000,2,2),
  (102,208748390,408000,3,3);
  
  insert into buys(  transaction_id ,
  Amount ,
  Quantity_,
  customer_id ,
  Product_id )
  values
  (786390287,27000,1,1,1),
  (830183762,35000,1,1,2),
  (278028738,8000,2,2,3
  );
  
  insert into sold_by( transaction_id ,
  amount ,
  Product_id ,
  emp_id
  )
values
  (786390287,27000,1,1),
  (830183762,35000,2,2),
  (278028738,8000,3,3
  );
  

