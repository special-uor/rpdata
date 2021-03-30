## code to prepare `age_model` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
age_model <- dabr::select_all(conn, "age_model") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("age_model", class(.)))
usethis::use_data(age_model, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
