## code to prepare `pub` dataset goes here
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
pub <- dabr::select_all(conn, "pub")
dabr::close_conn(conn)
usethis::use_data(pub, overwrite = TRUE)
