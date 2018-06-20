#' Get users data
#'
#' Get users data.
#'
#' @param conn A valid connection to INBO kleurring database.
#'
#' @return A data.frame.
#'
#' @export
#'
#' @importFrom DBI dbGetQuery
#' @importFrom dplyr %>% as_tibble
get_users <- function(conn) {
  users <-  dbGetQuery(conn, "SELECT * FROM dbo.tblWaarnemer") %>%
    as_tibble()
}
