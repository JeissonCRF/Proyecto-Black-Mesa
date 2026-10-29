create table Departments( -- Departamentos --
department_id varchar(10) primary key, -- Entiendo que en entidades públicas es común generar id de departamentos con codigos alfanumericos, como la letra del sectores --
department_name varchar(50), 
security_clearance_required int not null,
status varchar(20) default 'active'
);
create table Chart_of_Accounts( -- Cuentas contables --
account_id int primary key, 
account_name varchar(100) not null, 
account_type varchar(50) not null, 
class_pgn varchar (50) -- Permite null porque las cuentas que no tienen gasto público directo no tendrían un dato adentro --
);
create table Employees( -- Empleados --
employee_id varchar(10) primary key, -- Codigos alfanumericos --
first_name varchar(50) not null,
last_name varchar(50) not null,
role varchar(50) not null,
salary_annual decimal(12,2) not null,
hire_date date not null,
department_id varchar(10),
foreign key (department_id) references Departments(department_id),
status varchar(20) default 'active'
);
create table Supply_Chain_Logistics( -- Son los suministros --
transaction_id varchar(20) primary key,
item_name varchar(100) not null,
category varchar(50) not null,
unit_cost decimal(12,2) not null,
quantity int not null,
purchase_date date not null,
supplier varchar(100) not null,
department_id varchar(10),
foreign key (department_id) references Departments(department_id)
);
create table Accounting_Ledger( --Es el libro mayor--
ledger_id int auto_increment primary key,
entry_date date not null,
account_id int not null,
foreign key (account_id) references Chart_of_Accounts(account_id),
department_id varchar(10),
foreign key (department_id) references Departments(department_id),
debit decimal(12,2) default 0.00,
credit decimal(12,2) default 0.00,
description text not null,
reference_id varchar(20)
);