## code to prepare `publication` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
publication <- dabr::select_all(conn, "publication") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("publication", class(.)))
usethis::use_data(publication, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
