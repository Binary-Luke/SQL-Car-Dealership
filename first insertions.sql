insert into customer(customer_id, first_name, last_name, car_vin)
values (0001, 'Luke', 'Sousa', null);

insert into car(car_vin, make, model, car_year, color)
values (18201, 'Volkswagen', 'Tiguan', '2009', 'Arctic Black');

insert into car(car_vin, make, model, car_year, color)
values (18202, 'Porsche', '9-1-1 Turbo', '1999', 'Victory Red');

insert into salesperson(sales_id, employee_name)
values (01, 'Sally Sellsalot');

insert into invoice(invoice_number, price, sales_id, car_vin, customer_id)
values (001, '$4,800', 01, 18201, 0001);

insert into invoice(invoice_number, price, sales_id, car_vin, customer_id)
values (002, '$20,800', 01, 18202, 0001);


select * from customer;