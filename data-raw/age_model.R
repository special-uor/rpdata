## code to prepare `age_model` dataset goes here
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
age_model <- dabr::select_all(conn, "age_model")
dabr::close_conn(conn)
usethis::use_data(age_model, overwrite = TRUE)
