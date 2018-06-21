#' Get birds data
#'
#' Get birds (ring) data.
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
#' # all birds
#' birds <- sovon::get_birds(conn)
#' }
get_birds <- function(conn) {
  users <-  dbGetQuery(conn, "SELECT * FROM dbo.tblKleurring") %>%
    as_tibble()
}
