select top 1 name from sys.tables where object_id=(
    select top 1 object_id from (
        select top 2 object_id from sys.tables order by object_id
    )
    sq order by object_id DESC
)
