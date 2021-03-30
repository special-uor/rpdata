## code to prepare `date_info` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
date_info <- dabr::select_all(conn, "date_info") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("date_info", class(.)))
usethis::use_data(date_info, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
