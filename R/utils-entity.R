#' Get entities linked to a hydrological basin site
#'
#' @param .site_tbl \code{tibble} object.
#' @param ... Optional parameters.
#'
#' @rdname get_entities
#' @export
get_entities <- function(.site_tbl, ...) {
  UseMethod("get_entities", .site_tbl)
}

#' @rdname get_entities
#' @export
#'
#' @examples
#' \dontrun{
#' conn <- open_conn_mysql("sys", "root")
#' get_entities(conn)
#' }
get_entities.site <- function(.site_tbl, ...) {
  # Local bindings
  ID_SITE <- site_name <- NULL
  aux <- tibble::tibble()
  if ("ID_SITE" %in% colnames(.site_tbl))
    aux <- rpdata::entity %>%
      dplyr::filter(ID_SITE %in% .site_tbl$ID_SITE)
  if (ncol(aux) == 0)
    aux <- rpdata::entity %>%
      dplyr::filter(site_name %in% .site_tbl$site_name)
  aux
}

#' @rdname get_entities
#' @export
get_entities.default <- function(.site_tbl, ...) {
  warning("That doesn't look like a hydrological basin site.")
}

#' @rdname get_entities
#' @export
get_entities.tbl_df <- function(.site_tbl, ...) {
  warning("That doesn't look like a hydrological basin site.", call. = FALSE)
}
