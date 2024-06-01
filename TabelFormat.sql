create table consumen (
UserID SERIAL primary key,
Name VARCHAR(50) not null,
Email VARCHAR(50) not null unique,
Phone VARCHAR(15),
Address VARCHAR(50) not null
);

create table seller (
UserID SERIAL primary key,
Name VARCHAR(50) not null,
Email VARCHAR(50) not null unique,
phone VARCHAR(15), 
Address VARCHAR(50) not null
);

create table product (
UserID SERIAL primary key,
Name VARCHAR(50) not null,
Price DECIMAL(10, 2) not null,
Weight DECIMAL(10) not null
);

create table OrderItem (
ID SERIAL primary key,
Quantity DECIMAL (10) not null,
Price DECIMAL (10) not null,
ProductID INTEGER NOT NULL,
foreign key (ProductID) references product (UserID)
);

create table Orders (
ID SERIAL primary key,
Quantity DECIMAL (10) not null,
TotalPrice DECIMAL (10) not null,
ConsumenID INTEGER NOT NULL,
SellerID INTEGER NOT NULL,
OrderItemID INTEGER NOT NULL,
foreign key (ConsumenID) references consumen (UserID),
foreign key (SellerID) references seller (UserID),
foreign key (OrderItemID) references OrderItem (ID)
);