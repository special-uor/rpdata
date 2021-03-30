## code to prepare `chronology` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
chronology <- dabr::select_all(conn, "chronology") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("chronology", class(.)))
usethis::use_data(chronology, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
