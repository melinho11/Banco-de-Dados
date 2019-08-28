create database Senac;

use Senac;

/*/////////////////////////////////////////////////////////////////////////////
*/
             /* TABELA VENDEDOR\CLIENTE */
create table  vendedor(cod_vendedor smallint not null,
 nome_vendedor varchar(40) not null,
 sal_fixo numeric(9,2) null,
cidade varchar(40) null,
 faixa_comiss numeric(40) null,
 uf char(02) null,
 primary key (cod_vendedor));
  
insert into vendedor (cod_vendedor, nome_vendedor, sal_fixo, cidade, faixa_comiss, uf) values (2,'Augusto',1500,
' Sorocaba', 600, 'Sp');

insert into cliente (cod_cliente, nome_cli, endereco, cidade, cep, uf) values (2,'Marcos','Rua Falcao',
' Santos', '0446702631', 'ST');


alter table cliente modify column cep varchar (50) null;

update cliente set salario = 1000*1.27+100.00;

select * from vendedor;

select * from cliente;
alter table cliente drop column salario;
alter table cliente add salario decimal(10,2) null;

/*/////////////////////////////////////////////////////////////////////////////
*/
         /* TABELA PRODUTO */

create table produto (cod_produto smallint not null,
 unid_produto char(03) not null,
 desc_produto  varchar(20) not null,
 val_unit numeric(9,2) not null,
primary key (cod_produto));

insert into produto (cod_produto, unid_produto, desc_produto, val_unit) values (2, '5', 'qualidade', 30);

select*from produto;

/*/////////////////////////////////////////////////////////////////////////////
*/
         /* TABELA PEDIDO */
         
create table pedido (
num_ped smallint not null,
prazo_entr smallint not null,
cd_cli smallint not null REFERENCES cliente (cod_cli),
cd_vend smallint not null REFERENCES vendedor (cod_vend),
primary key (num_ped));

   insert into pedido ( num_ped, prazo_entr, cd_cli, cd_vend) values (1,10,1,2);

select*from pedido;      
         
/*/////////////////////////////////////////////////////////////////////////////
*/
         /* TABELA ITEM PEDIDO */         
         
create table item_pedido (
no_ped smallint not null REFERENCES PEDIDO (num_ped),
cd_prod smallint not null REFERENCES PRODUTO (cod_prod),
qtd_ped float not null); 

insert into item_pedido ( no_ped, cd_prod, qtd_ped) values (1,2,1);

select*from item_pedido;
         
         
         
         
         
         
         
         
         
         
         
         