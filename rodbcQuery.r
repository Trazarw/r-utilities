rodbcQuery <- function (driver, setupExpression, queryExpression)  {
	options(warn=-1)

	tryCatch(library(RODBC), error = function(e) {
		install.packages("RODBC")
	})

	tryCatch({
		channel <- odbcDriverConnect(driver)
		sqlQuery(channel, setupExpression)
		recordSet <- sqlQuery(channel, queryExpression)
		return(recordSet);
	},
	error 	= function(e) stop(e),
	finally = {
		if(exists('channel')) {
			odbcClose(channel)
		}
	})
	
	options(warn=0)
}