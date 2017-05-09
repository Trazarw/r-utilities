rodbcQuery <- function(driver, setupExpression, queryExpression)  {
	install.packages("RODBC")
	library(RODBC)
 	tryCatch(channel <- odbcDriverConnect(driver), error = function(e) stop(e), finally=print("Channel Open"))
 	tryCatch(sqlQuery(channel, setupExpression), error = function(e) stop(e), finally=print("Setup Expression Executed"))
 	tryCatch(recordSet <- sqlQuery(channel, queryExpression), error = function(e) stop(e), finally=print("Query Expression Executed"))
 	odbcClose(channel)
 	return(recordSet);
}











