## code to prepare `pub` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
pub <- dabr::select_all(conn, "pub") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("pub", class(.)))
usethis::use_data(pub, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
