#' Get observations data
#'
#' Get observations data.
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
#' # all observations
#' observations <- sovon::get_observations(conn)
#' }
get_observations <- function(conn) {
  observations <-  dbGetQuery(conn, "SELECT * FROM dbo.tblWaarneming") %>%
    as_tibble()
}
