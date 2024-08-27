create table Clientes (

nombre VARCHAR(100),
identificacion INT PRIMARY KEY,
edad INT,
correo VARCHAR(100)


);

create table Productos (
codigo INT PRIMARY KEY,
nombre VARCHAR(50),
stock INT,
valor_unitario INT


);

create table Transacciones (
fecha DATE,
cantidad INT,
valor_total FLOAT,
producto_id INT references Productos(codigo),
cliente_id INT references Clientes(identificacion)


);

insert into Clientes (nombre,identificacion,edad,correo) values
('Juan Carlo',12344324, 20,'juancarlo@live.es'),
('Pablo nuñez',12344325, 25,'pablito10@live.es'),
('Maria Alejandra',12344326, 32,'maleja@live.es'),
('lizeth ',12344327, 22,'tamara@live.es'),
('robinson ',12344328, 45,'robbi@live.es');

insert into Productos (codigo,nombre,stock,valor_unitario) values
(10,'leche',100, 1200),
(11,'pan',200, 2400),
(12,'torta de queso',150, 5800),
(13,'milo',300, 3700),
(14,'arequipe',30, 5000);

insert into Productos (codigo,nombre,stock,valor_unitario) values
(10,'leche',100, 1200),
(11,'pan',200, 2400),
(12,'torta de queso',150, 5800),
(13,'milo',300, 3700),
(14,'arequipe',30, 5000);


begin;
insert into Transacciones(fecha,cantidad,valor_total,producto_id,cliente_id) values
('2024-04-15', 3, 15000, 14, 12344327),
('2024-04-15', 2, 7400, 13, 12344325),
('2024-04-15', 5, 6000, 10, 12344326);
 

update productos set stock = stock-3 where codigo = 14;
update productos set stock = stock-2 where codigo = 13;
update productos set stock = stock-5 where codigo = 10;


delete from Clientes where identificacion=12344328;
commit;



select * from productos ;
