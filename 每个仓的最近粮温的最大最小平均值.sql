--在i3电脑上，F_GrainTemp表152万条记录，运行3秒。
select V5.*, S.StorageName
from
(
    select V3.StorageID, min(MeasValue) as MinValue,
    max(MeasValue) as MaxValue, avg(MeasValue) as AvgValue
    from
    (
        select A.*
        from F_GrainTemp A
        inner join
        (
            select StorageID, max(MeasTime) as MaxTime
            from F_GrainTemp 
            group by StorageID 
        ) V on V.StorageID=A.StorageID and V.MaxTime=A.MeasTime
        where MeasValue>-20 and MeasValue<50
    ) V3
    group by V3.StorageID
) as V5
left join L_Storage S on S.StorageID=V5.StorageID
