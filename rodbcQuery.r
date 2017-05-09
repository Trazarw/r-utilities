rodbcQuery <- function (driver, setupExpression, queryExpression)  {
	install.packages("RODBC")
	library(RODBC)
	tryCatch({
		channel <- odbcDriverConnect(driver)
		sqlQuery(channel, setupExpression)
		recordSet <- sqlQuery(channel, queryExpression)
		return(recordSet);
	},
	warning = function(w) print(w),
	error 	= function(e) stop(e),
	finally = {
		if(exists('channel')) {
			odbcClose(channel)
		}
	})
}