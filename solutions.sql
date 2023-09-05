-- QUESTION 1
create table genre_total_game(genre_id INT, total_game INT);
insert into genre_total_game(genre_id, total_game)
select genre_id,count(game_name) as total_game
from games
group by genre_id;

 select genre_name, total_game from genre_total_game
 join genre
 on genre_id = id;

-- QUESTION 3
select publisher_id, count(game_id) as Total_game_released
from game_publisher
group by(publisher_id)
order by Total_game_released desc
limit 5;

-- QUESTION 7
select game_platform_id, sum(num_sales) as Total_sales
from region_sales
group by game_platform_id
order by Total_sales desc
limit 3;

-- QUESTION 8
 select game_id, count(id) as Published_count
from game_publisher
group by(game_id)
 having count(id)=0;
 
 -- QUESTION 2
 create table game_total_sales(game_platform_id int, Total_sales int);
insert into game_total_sales (game_platform_id, Total_sales)
 select game_platform_id, sum(num_sales)  as Total_Sales from region_sales
 group by game_platform_id
 order by Total_sales desc;
 
 select * from game_total_sales