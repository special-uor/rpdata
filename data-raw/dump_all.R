## code to prepare `site` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())

age_model <- dabr::select_all(conn, "age_model") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("age_model", class(.)))
usethis::use_data(age_model, overwrite = TRUE)

chronology <- dabr::select_all(conn, "chronology") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("chronology", class(.)))
usethis::use_data(chronology, overwrite = TRUE)

date_info <- dabr::select_all(conn, "date_info") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("date_info", class(.)))
usethis::use_data(date_info, overwrite = TRUE)

entity <- dabr::select_all(conn, "entity") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("entity", class(.)))
usethis::use_data(entity, overwrite = TRUE)

entity_link_publication <- conn %>%
  dabr::select_all("entity_link_publication") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("entity_link_publication", class(.)))
usethis::use_data(entity_link_publication, overwrite = TRUE)

model_name <- conn %>%
  dabr::select_all("model_name") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("model_name", class(.)))
usethis::use_data(model_name, overwrite = TRUE)

publication <- conn %>%
  dabr::select_all("publication") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("publication", class(.)))
usethis::use_data(publication, overwrite = TRUE)

sample <- conn %>%
  dabr::select_all("sample") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("sample", class(.)))
usethis::use_data(sample, overwrite = TRUE)

site <- conn %>%
  dabr::select_all("site") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("site", class(.)))
usethis::use_data(site, overwrite = TRUE)

unit <- conn %>%
  dabr::select_all("unit") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("unit", class(.)))
usethis::use_data(unit, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)

