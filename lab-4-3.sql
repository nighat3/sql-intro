-- Who hit the most home runs in 2019, and what team did they play for?

select teams.name as team_name, players.first_name as first_name, players.last_name as last_name, stats.home_runs as home_runs
from stats 
inner join players on players.id = stats.player_id
inner join teams on teams.id = stats.team_id
where teams.year = 2019
order by home_runs desc
limit 1
-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


