## code to prepare `sample` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
sample <- dabr::select_all(conn, "sample") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("sample", class(.)))
usethis::use_data(sample, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
