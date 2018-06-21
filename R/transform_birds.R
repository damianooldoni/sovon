#' Transform bird information to SOVON format
#'
#' SOVON requests bird data in a specific format. This function tranforms the
#' information extracted from INBO kleurring database to such format.
#'
#' @param birds tibble data frame.
#'
#' @export
#'
#' @return A tibble data frame.
#'
#' @importFrom dplyr %>% rename mutate select one_of
transform_birds <- function(birds) {
  birds <- birds %>%
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
    select(one_of(sovon_birds_fields))
  users
}

#' birds fields requested by SOVON
sovon_birds_fields <- c("bird_id",
                  "bird_reference",
                  "bird_euring",
                  "bird_bto",
                  "bird_shorthand",
                  "bird_scheme",
                  "bird_ring_number",
                  "bird_name",
                  "bird_birth_year",
                  "bird_date_begin",
                  "bird_date_end",
                  "bird_age_ringing")
