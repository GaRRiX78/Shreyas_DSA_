create table stock_change(
Id int,product_id int,quantity decimal,changed date);
insert into stock_change values("1","5","-90","2016-09-11");
insert into stock_change values("2","2","-91","2016-08-16");
insert into stock_change values ("3","5","-15","2016-06-08");
insert into stock_change values("4","2","51","2016-06-10");
insert into stock_change values("5","1","-58","2016-08-09");
insert into stock_change values("6","1","-84","2016-09-28");
insert into stock_change values("7","4","56","2016-06-09");
insert into stock_change values("8","5","73","2016-09-22");
insert into stock_change values("9","1","-43","2016-06-07");
insert into stock_change values("10","2","-79","2016-07-27");
select * from stock_change;