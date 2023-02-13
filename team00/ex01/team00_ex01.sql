with recursive all_paths as (
    select
        launched as path,
        launched,
        landed,
        edge_weight,
        edge_weight as total_cost
    from graph
    where launched = 'a'
    union all
    select
        format('%s,%s', all_paths.path, graph.launched) as path,
        graph.launched,
        graph.landed,
        graph.edge_weight,
        all_paths.total_cost + graph.edge_weight as total_cost
    from all_paths
        join graph on graph.launched = all_paths.landed
    where path not like ('%' || graph.launched || '%')
), came_back as (
    select *
    from all_paths
    where length(path) = 7 and landed = 'a'
)

select
    total_cost,
    format('{%s,a}', path) as tour
from came_back
where total_cost in (
    select 
        min(total_cost) 
    from came_back
    union
    select
        max(total_cost)
    from came_back
)
order by total_cost, tour;