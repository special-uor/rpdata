## code to prepare `sample` dataset goes here
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
sample <- dabr::select_all(conn, "sample")
dabr::close_conn(conn)
usethis::use_data(sample, overwrite = TRUE)
