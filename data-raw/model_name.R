## code to prepare `model_name` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
model_name <- dabr::select_all(conn, "model_name") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("model_name", class(.)))
usethis::use_data(model_name, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
