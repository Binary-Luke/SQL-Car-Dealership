CREATE TABLE salesperson (
  sales_id SERIAL primary key,
  employee_name VARCHAR(60)
);

CREATE TABLE invoice (
  invoice_number SERIAL primary key,
  sale_date DATE default CURRENT_DATE,
  price NUMERIC(16,4),
  sales_id INTEGER not null,
  car_vin INTEGER not null,
  customer_id INTEGER not null,
  foreign key(sales_id) references salesperson(sales_id),
  foreign key(car_vin) references car(car_vin),
  foreign key(customer_id) references customer(customer_id)
);

CREATE TABLE customer (
  customer_id SERIAL primary key,
  first_name VARCHAR(25),
  last_name VARCHAR(25),
  car_vin INTEGER,
  foreign key(car_vin) references car(car_vin)
);

CREATE TABLE car (
  car_vin SERIAL primary key,
  make VARCHAR(20),
  model VARCHAR(20),
  car_year NUMERIC(4,2),
  color VARCHAR(20)
);

CREATE TABLE service_history (
  car_vin INTEGER not null,
  service_ticket INTEGER,
  foreign key(car_vin) references car(car_vin),
  foreign key(service_ticket) references service(service_ticket)
);

CREATE TABLE service (
  service_ticket SERIAL primary key,
  service VARCHAR(150),
  mechanic_id INTEGER,
  part_id INTEGER,
  foreign key(mechanic_id) references mechanics(mechanic_id),
  foreign key(part_id) references parts(part_id)
);

CREATE TABLE mechanics (
  mechanic_id SERIAL primary key,
  mechanic VARCHAR(50)
);

CREATE TABLE parts (
  part_id SERIAL primary key,
  part VARCHAR(50)
);