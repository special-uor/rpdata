## code to prepare `date_info` dataset goes here
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
date_info <- dabr::select_all(conn, "date_info")
dabr::close_conn(conn)
usethis::use_data(date_info, overwrite = TRUE)
