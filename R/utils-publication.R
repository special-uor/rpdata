#' Get publications linked to a hydrological basin site
#'
#' @param .data \code{tibble} object.
#' @param ... Optional parameters.
#'
#' @rdname get_publications
#' @export
get_publications <- function(.data, ...) {
  UseMethod("get_publications", .data)
}

#' @rdname get_publications
#' @export
#'
#' @examples
#' \dontrun{
#' conn <- open_conn_mysql("sys", "root")
#' get_publications(conn)
#' }
get_publications.site <- function(.data, ...) {
  aux <- tibble::tibble()
  if ("ID_SITE" %in% colnames(.data))
    aux <- rpdata::entity %>%
      dplyr::filter(ID_SITE %in% .data$ID_SITE)
  if (ncol(aux) == 0)
    aux <- rpdata::entity %>%
      dplyr::filter(site_name %in% .data$site_name)
  aux
}

#' @rdname get_publications
#' @export
get_publications.default <- function(.data, ...) {
  warning("That doesn't look like a hydrological basin site.")
}
