#' Transform bird data to SOVON format
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
    rename(bird_euring = EuringCode,
           bird_shorthand = RingKleurCode,
           bird_ring_number = MetaalringNummer,
           bird_sex = GeslachtCode) %>%
    mutate(bird_id = NA,
           bird_reference = NA,
           bird_bto = NA,
           bird_name = NA,
           bird_birth_year,
           bird_date_end,
           bird_sex = case_when(
             "M" ~ "M",
             "V" ~ "F",
             "O" ~ "U",
             NA ~ "U")) %>%
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
