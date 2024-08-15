
create table sql_game(
Id int, Name varchar(25),platform varchar(15),genre varchar(25),editor_rating int,size int, released date, updated date);
insert into sql_game values("1","Go Bunny","ios","action","5","101","2015-05-01","2015-07-13");
insert into sql_game values("2","Fire Rescue","ios","action","9","36","2015-07-30","2016-09-27");
insert into sql_game values("3","Eternal Stone"," iOS"," adventure"," 10 ","125" ,"2015-03-20", "2015-10-25");
insert into sql_game values("4"," Froggy Adventure"," iOS"," adventure"," 7"," 127"," 2015-05-01"," 2015-07-02");
insert into sql_game values("5","Speed Race"," iOS"," racing ","7 ","127"," 2015-03-20", "2015-07-25");
insert into sql_game values("6","Monsters in dungeon","Android","adventure","9","10","2015-12-01","2015-12-15");
insert into sql_game values("7","shoot in time","Android","shooting","9","123","2015-12-01","2016-03-20");
select * from sql_game;
