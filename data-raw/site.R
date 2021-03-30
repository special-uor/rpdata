## code to prepare `site` dataset goes here
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
site <- dabr::select_all(conn, "site")
dabr::close_conn(conn)
usethis::use_data(site, overwrite = TRUE)
