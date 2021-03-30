## code to prepare `chronology` dataset goes here
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
chronology <- dabr::select_all(conn, "chronology")
dabr::close_conn(conn)
usethis::use_data(chronology, overwrite = TRUE)
