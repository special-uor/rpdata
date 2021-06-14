## code to prepare `entity_link_publication` dataset goes here
`%>%` <- magrittr::`%>%`
conn <- dabr::open_conn_mysql("RPD-latest", password = rstudioapi::askForPassword())
entity_link_publication <- conn %>%
  dabr::select_all("entity_link_publication") %>%
  tibble::as_tibble() %>%
  magrittr::set_class(c("entity_link_publication", class(.)))
usethis::use_data(entity_link_publication, overwrite = TRUE)

# Close database connection
dabr::close_conn(conn)

usethis::use_data(entity_link_publication, overwrite = TRUE)
