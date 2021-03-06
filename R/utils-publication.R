#' Get publications linked to a hydrological basin site
#'
#' @param .site_tbl \code{tibble} object.
#' @param ... Optional parameters.
#'
#' @rdname get_publications
#' @export
get_publications <- function(.site_tbl, ...) {
  UseMethod("get_publications", .site_tbl)
}

#' @rdname get_publications
#' @export
#'
#' @examples
#' \dontrun{
#' conn <- open_conn_mysql("sys", "root")
#' get_publications(conn)
#' }
get_publications.site <- function(.site_tbl, ...) {
  # Local bindings
  ID_SITE <- site_name <- NULL
  aux <- tibble::tibble()
  if ("ID_SITE" %in% colnames(.site_tbl))
    aux <- rpdata::entity %>%
      dplyr::filter(ID_SITE %in% .site_tbl$ID_SITE) %>%
      dplyr::left_join(rpdata::entity_link_publication, by = "ID_ENTITY") %>%
      dplyr::left_join(rpdata::publication, by = "ID_PUB")
  if (ncol(aux) == 0)
    aux <- rpdata::entity %>%
      dplyr::filter(site_name %in% .site_tbl$site_name) %>%
      dplyr::left_join(rpdata::entity_link_publication, by = "ID_ENTITY") %>%
      dplyr::left_join(rpdata::publication, by = "ID_PUB")
  aux
}

#' @rdname get_publications
#' @export
get_publications.default <- function(.site_tbl, ...) {
  warning("That doesn't look like a hydrological basin site.")
}
