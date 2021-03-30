## code to prepare `entity` dataset goes here
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
entity <- dabr::select_all(conn, "entity")
dabr::close_conn(conn)
usethis::use_data(entity, overwrite = TRUE)
