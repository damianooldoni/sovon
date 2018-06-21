#' Provide connection to the INBO kleurring database.
#'
#' @description Connect to the INBO kleurringdatabank (the so called
#'   meeuwen database). Be sure to have the needed rights by INBO databeheer
#'   team. The driver `SQL Server Native Client 11.0` is used.
#'
#' @return conn ODBC connection to kleurring database.
#'
#' @export
#'
#' @importFrom DBI dbConnect
#' @importFrom odbc odbc
connect_to_kleurring <-function() {
  conn <- DBI::dbConnect(odbc::odbc(),
                         driver = driver,
                         server = server,
                         database = database,
                         port = port,
                         trusted_connection = "YES")
  return(conn)
}

#' kleurring database connection info
driver <- "SQL Server Native Client 11.0"
server <- "172.31.11.67"
database <- "D0016_00_Meeuwen"
port <- 1433
