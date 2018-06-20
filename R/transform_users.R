#' Transform users information as asked by SOVON
#'
#' SOVON requests users data in a specific format. This function tranforms the
#' information in INBO kleurring database to such format.
#'
#' @param users tibble data frame.
#'
#' @return A tibble data frame.
transform_users <- function(users) {
  users <- users %>%
    rename(user_email = Email,
           user_first_name = Voornaam,
           user_last_name = Familienaam,
           user_address = Adres,
           user_place = Gemeente,
           user_postal_code = Postcode,
           user_country = LandCode) %>%
    mutate(user_id = NA,
           user_reference = NA,
           user_language = NA,
           user_role = "O") %>%
    select(one_of(sovon_fields))
  users
}

#' user fields requested by SOVON
sovon_fields <- c("user_id",
                  "user_reference",
                  "user_email",
                  "user_first_name",
                  "user_last_name",
                  "user_address",
                  "user_postal_code",
                  "user_place",
                  "user_country",
                  "user_language",
                  "user_role")
