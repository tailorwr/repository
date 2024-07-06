insert into user_system (id, createdat, deleted, email, image, lastname, name, selectedbusiness, status, username, usertype) values ('1edc02d8-901f-47d9-ac1b-f4ed50cac15e', current_timestamp, false, 'admin@tailorw.com', null, 'Tailorw', 'admin', null, 'ACTIVE', 'admin@tailorw.com', 'SYSTEM');

insert into module_system (id, code, createdat, description, image, name, status) values ('1a570163-5761-434c-9072-fb3f76bfe501', 'CRE', current_timestamp, 'Este es el modulo administracion', NULL, 'ADMINSTRATION', 'ACTIVE');

insert into permission values ('1a570163-5761-434c-9072-fb3f76bfe900', 'CREATE', 'ADMINISTRATION:CREAR', current_timestamp, false, 'Permiso de crear', false, false, 'CREAR', 'ACTIVE', '1a570163-5761-434c-9072-fb3f76bfe501');

insert into geographiclocation (id, deleted, name, type) values ('1a570163-5761-434c-9072-fb3f76bfe801', false, 'Miami', 'PROVINCE');

insert into business (id, address, createdat, deleted, description, status, geographiclocation_id) values ('41833c25-5ca2-41cd-b22f-8488723097da', 'Miami', current_timestamp, false, 'Oficina de Miami', 'ACTIVE', '1a570163-5761-434c-9072-fb3f76bfe801');

insert into business_module (id, createdat, deleted, business_id, module_id) values ('1a570163-5761-434c-9072-fb3f76bfe801', current_timestamp, false, '41833c25-5ca2-41cd-b22f-8488723097da', '1a570163-5761-434c-9072-fb3f76bfe501');

insert into user_permission_business (id, createdat, deleted, business_id, permission_id, user_id) values ('1a570163-5761-434c-9072-fb3f76bfe001', current_timestamp, false, '41833c25-5ca2-41cd-b22f-8488723097da', '1a570163-5761-434c-9072-fb3f76bfe900', '1edc02d8-901f-47d9-ac1b-f4ed50cac15e');

select * from user_system;
select * from module_system;
select * from permission;
select * from geographiclocation;
select * from business;
select * from business_module;
select * from user_permission_business;
