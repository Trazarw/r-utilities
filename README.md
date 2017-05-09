# r-utilities
Basic shards of code for R

## usage of rodbcQuery
```r
source("{PATH}/rodbcQuery.r")

driver <- "driver=SQL Server;server=1.10.23.11;UID=usrRead;PWD=usrRead"
setupExpression <- "USE [DataHub]"
queryExpression <- "SELECT TOP (10) * FROM  Stats"

result <- rodbcQuery(driver, setupExpression, queryExpression)
```
