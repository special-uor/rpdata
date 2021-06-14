## code to prepare `unit` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
unit <- dabr::select_all(conn, "unit") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("unit", class(.)))
usethis::use_data(unit, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
