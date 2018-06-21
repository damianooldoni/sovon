#' Get users data
#'
#' Get users data.
#'
#' @param conn A valid connection to INBO kleurring database.
#'
#' @return A tibble data frame.
#'
#' @export
#'
#' @importFrom DBI dbGetQuery
#' @importFrom dplyr %>% as_tibble
#' @examples
#' \dontrun{
#' conn <- connect_to_kleurring()
#'
#' # all users
#' users <- sovon::get_users(conn)
#' }
get_users <- function(conn) {
  users <-  dbGetQuery(conn, "SELECT * FROM dbo.tblWaarnemer") %>%
    as_tibble()
}
