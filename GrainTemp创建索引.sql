create index F_GrainTemp_IDX_StorageID on F_GrainTemp (
StorageID ASC
)
go

create index F_GrainTemp_IDX_MeasTime on F_GrainTemp (
MeasTime ASC
)
go

create index F_GrainTemp_IDX_SLC on F_GrainTemp (
SectionNo ASC,
LayerNo ASC,
ColNo ASC
)
go
