create or replace function add_part(_part_id INTEGER, _part VARCHAR)
returns void
as $MAIN$
begin 
	insert into parts(part_id,part)
	values (_part_id,_part);
end;
$MAIN$
language plpgsql;



select add_part(301, '18" Wheel');

select add_part(302, '20" Wheel')

drop function add_part;

select * from service_history;

create or replace function add_mechanic(_mechanic_id INTEGER, _mechanic VARCHAR)
returns void
as $MAIN$
begin 
	insert into mechanics(mechanic_id,mechanic)
	values (_mechanic_id,_mechanic);
end;
$MAIN$
language plpgsql;


select add_mechanic(02, 'Aleks Chovsky');

select add_mechanic(01, 'Nicholas Mykuol')

create or replace function add_service(_service_ticket INTEGER, _service VARCHAR, _mechanic_id INTEGER, _part_id INTEGER)
returns void
as $MAIN$
begin 
	insert into service(service_ticket, service, mechanic_id, part_id)
	values (_service_ticket, _service, _mechanic_id, _part_id);
end;
$MAIN$
language plpgsql;

select add_service(01, 'Left-Rear Wheel Replacement', 01, 302);

select *from service;

insert into service_history(
	car_vin,
	service_ticket
) values (
	18202,
	01
)

select 

