# r-utilities
Basic shards of code for R

## usage of rodbcQuery
```r
Import the script functions
source("{PATH}/rodbcQuery.r")

Set up the arguments 
driver <- "driver=SQL Server;server=1.10.23.11;UID=usrRead;PWD=usrRead"
setupExpression <- "USE [DataHub]"
queryExpression <- "SELECT TOP (10) * FROM  Stats"

Get the recordset
result <- rodbcQuery(driver, setupExpression, queryExpression)
```
