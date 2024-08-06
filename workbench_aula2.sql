create database projeto;
use projeto;

create table cidade(id int(2) primary key auto_increment, nome varchar(60));
create table estado(id int(2) primary key auto_increment, nome varchar(2));
create table categoria(id int(2) primary key auto_increment, nome varchar(40));
create table marca(id int(2) primary key auto_increment, nome varchar(30));

create table cliente(id int(2) primary key auto_increment, nome varchar(60), email varchar(60), 
cpf varchar(15), data_nasc date, idestado int(2), idcidade int(2),
constraint clienteestado foreign key(idestado) references estado(id),
constraint clientecidade foreign key(idcidade) references cidade(id));

create table vendedor(id int(2) primary key auto_increment, nome varchar(60), email varchar(60), 
cpf varchar(15), data_nasc date, idestado int(2), idcidade int(2),
constraint vendedorestado foreign key(idestado) references estado(id),
constraint vendedorcidade foreign key(idcidade) references cidade(id));

create table pedido(id int(2) primary key auto_increment, data_pedido date, idvendedor int(2), idcliente int(2),
constraint pedidosvendedor foreign key(idvendedor) references vendedor(id),
constraint pedidocliente foreign key(idcliente) references cliente(id));

create table produto(id int(2) primary key auto_increment, nome varchar(80), preco float(10,2),
idcategoria int(2), idmarca int(2),
constraint produtocategoria foreign key(idcategoria) references categoria(id),
constraint produtomarca foreign key(idmarca) references marca(id));

create table itens_pedido(id int(2) primary key auto_increment, quantidade integer, valor_uni float(10,2),
valor_total float(10,2), idpedido int(2), idproduto int(2),
constraint itens_pedidopedido foreign key(idpedido) references pedido(id),
constraint itens_pedidoproduto foreign key(idproduto) references produto(id));


INSERT INTO cidade VALUES (null,'São Paulo');
INSERT INTO cidade VALUES (null,'Campinas');
INSERT INTO cidade VALUES (null,'Poços de Caldas');
INSERT INTO cidade VALUES (null,'Andradas');
INSERT INTO cidade VALUES (null,'Rio de Janeiro');

INSERT INTO estado VALUES (null,'SP');
INSERT INTO estado VALUES (null,'MG');
INSERT INTO estado VALUES (null,'RJ');
INSERT INTO estado VALUES (null,'ES');
INSERT INTO estado VALUES (null,'MS');

INSERT INTO categoria VALUES (null,'Alimentos');
INSERT INTO categoria VALUES (null,'Eletrodomésticos');
INSERT INTO categoria VALUES (null,'Eletrônicos');
INSERT INTO categoria VALUES (null,'Limpeza');

INSERT INTO marca VALUES (null,'Samsung');
INSERT INTO marca VALUES (null,'LG');
INSERT INTO marca VALUES (null,'Sony');
INSERT INTO marca VALUES (null,'Brastemp');
INSERT INTO marca VALUES (null,'Tio João');
INSERT INTO marca VALUES (null,'Come Tudo');
INSERT INTO marca VALUES (null,'Omo');
INSERT INTO marca VALUES (null,'Electrolux');
INSERT INTO marca VALUES (null,'BomBril');
INSERT INTO marca VALUES (null,'Camil');
INSERT INTO marca VALUES (null,'Fugini');

INSERT INTO cliente VALUES (null,'Camila Fernandes','camilaf@gmail.com','222.258.658.99','1985-12-16',1,1);
INSERT INTO cliente VALUES (null,'João Rodrigues','rodrigues@hotmail.com','221.546.652.89','1990-01-25',1,2);
INSERT INTO cliente VALUES (null,'José Carlos','josec@hotmail.com','758.564.254.89','1991-03-15',2,3);
INSERT INTO cliente VALUES (null,'Fernando Henrique','fhenr@hotmail.com','555.666.888.99','1985-09-30',2,4);
INSERT INTO cliente VALUES (null,'Marina Ferreira','marinaf@outlook.com','451.578.965.21','1989-06-20',3,5);
INSERT INTO cliente VALUES (null,'Luis Paulo','luispaulo@outlook.com','216.052.358.69','1980-07-10',1,1);
INSERT INTO cliente VALUES (null,'Rui Biaco','ruibiaco@outlook.com','458.789.654.12','1983-03-30',1,2);
INSERT INTO cliente VALUES (null,'Claudemir Silva','claudemir@gmail.com','124.564.458.99','1985-11-25',3,2);
INSERT INTO cliente VALUES (null,'José da Silva','josesilva@outlook.com','025.658.458-89','1978-05-11',2,4);
INSERT INTO cliente VALUES (null,'Jonas Firmino','jonasf@outlook.com','335.658.963.55','1979-02-15',3,5);
INSERT INTO cliente VALUES (null,'Carolina Ferraz','carolferraz@outlook.com','124.254.458-12','1987-06-12',1,2);
INSERT INTO cliente VALUES (null,'Marcio Gomes','marciogomez@gmail.com','137.258.784-25','1991-01-30',3,5);

INSERT INTO produto VALUES (null,'Arroz',11.50,2,2);
INSERT INTO produto VALUES (null,'Feijão',18.50,2,2);
INSERT INTO produto VALUES (null,'Molho de Tomate',1.50,2,2);
INSERT INTO produto VALUES (null,'Maionese',3.50,2,2);
INSERT INTO produto VALUES (null,'Ervilha',2.30,2,2);
INSERT INTO produto VALUES (null,'Arroz',9.90,2,2);
INSERT INTO produto VALUES (null,'Geladeira',3700.00,2,2);
INSERT INTO produto VALUES (null,'Microondas',450.00,2,2);
INSERT INTO produto VALUES (null,'Smart TV 48 4k',2700.00,2,2);
INSERT INTO produto VALUES (null,'Ar Condicionado 12.000 BTU',1350.00,2,2);
INSERT INTO produto VALUES (null,'Geladeira BRM58',2100.00,2,2);
INSERT INTO produto VALUES (null,'Máquina de Lavar 12KG',1430.00,2,2);
INSERT INTO produto VALUES (null,'Forno de Embutir 55 Litros',1260.00,2,2);
INSERT INTO produto VALUES (null,'Aspirador de Pó',350.00,2,2);
INSERT INTO produto VALUES (null,'Liquidificador',250.00,2,2);
INSERT INTO produto VALUES (null,'Batedeira',650.00,2,2);
INSERT INTO produto VALUES (null,'Samsung Galaxy S7',3550.00,2,2);
INSERT INTO produto VALUES (null,'Tablet LG 10.1',1550.00,2,2);
INSERT INTO produto VALUES (null,'Notebook Sony',3550.00,2,2);
INSERT INTO produto VALUES (null,'Pinho Brll',3.00,2,2);
INSERT INTO produto VALUES (null,'Lysoform 1 Lt',11.00,2,2);
INSERT INTO produto VALUES (null,'Limpol',8.00,2,2);
INSERT INTO produto VALUES (null,'Sabão em Pó',8.50,2,2);
INSERT INTO produto VALUES (null,'Sabão em Pó Líquido',9.50,2,2);

INSERT INTO vendedor VALUES (null,'Fábio','fabio@gmail.com','358.256.259-95','1995-05-09',2,2);
INSERT INTO vendedor VALUES (null,'João','joao@gmail.com','127.128.589.79','1962-11-08',2,2);
INSERT INTO vendedor VALUES (null,'Henrique','henrique@gmail.com','852.123.145-13','1973-07-14',2,2);
INSERT INTO vendedor VALUES (null,'Roberto','roberto@gmail.com','659.521.456.87','1990-09-15',2,2);
INSERT INTO vendedor VALUES (null,'Marcos','marcos@outlook.com','589.654.851.25','1992-10-02',2,2);
INSERT INTO vendedor VALUES (null,'Rafael','rafael@outlook.com','184.547.963.37','1999-12-04',2,2);
INSERT INTO vendedor VALUES (null,'Marcelo','marcelo@outlook.com','332.653.421-15','2002-08-13',2,2);

INSERT INTO pedido VALUES (null,'2016-08-08',2,2);
INSERT INTO pedido VALUES (null,'2016-08-07',2,2);
INSERT INTO pedido VALUES (null,'2016-07-31',2,2);
INSERT INTO pedido VALUES (null,'2016-08-08',2,2);
INSERT INTO pedido VALUES (null,'2016-07-09',2,2);
INSERT INTO pedido VALUES (null,'2016-08-04',2,2);
INSERT INTO pedido VALUES (null,'2016-08-03',2,2);
INSERT INTO pedido VALUES (null,'2016-08-02',2,2);
INSERT INTO pedido VALUES (null,'2016-08-05',2,2);
INSERT INTO pedido VALUES (null,'2016-07-28',2,2);
INSERT INTO pedido VALUES (null,'2016-07-29',2,2);

INSERT INTO itens_pedido VALUES (null,5,11.50,57.50,2,2);
INSERT INTO itens_pedido VALUES (null,7,18.50,55.50,2,2);
INSERT INTO itens_pedido VALUES (null,21,3.00,30.00,2,2);
INSERT INTO itens_pedido VALUES (null,9,9.50,38.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,2100.00,2100.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,650.00,650.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,1430.00,1430.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,1260.00,1260.00,2,2);
INSERT INTO itens_pedido VALUES (null,10,11.50,115.00,2,2);
INSERT INTO itens_pedido VALUES (null,10,9.90,99.00,2,2);
INSERT INTO itens_pedido VALUES (null,10,8.50,85.00,2,2);
INSERT INTO itens_pedido VALUES (null,2,11.00,22.00,2,2);
INSERT INTO itens_pedido VALUES (null,10,1.50,15.00,2,2);
INSERT INTO itens_pedido VALUES (null,4,3.50,14.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,3700.00,3700.00,2,2);
INSERT INTO itens_pedido VALUES (null,5,1.50,7.50,2,2);
INSERT INTO itens_pedido VALUES (null,2,450.00,900.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,2700.00,2700.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,2.30,2.30,2,2);
INSERT INTO itens_pedido VALUES (null,1,1350.00,1350.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,1550.00,1550.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,350.00,350.00,2,2);
INSERT INTO itens_pedido VALUES (null,1,3550.00,3550.00,2,2);
INSERT INTO itens_pedido VALUES (null,10,11.50,115.00,2,2);
INSERT INTO itens_pedido VALUES (null,3,18.50,55.50,2,2);
INSERT INTO itens_pedido VALUES (null,5,3.00,15.00,2,2);
INSERT INTO itens_pedido VALUES (null,4,9.50,38.00,2,2);

