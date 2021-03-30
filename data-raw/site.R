## code to prepare `site` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
site <- dabr::select_all(conn, "site") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("site", class(.)))
usethis::use_data(site, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)
