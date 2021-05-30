#' Get entities linked to a hydrological basin site
#'
#' @param .data \code{tibble} object.
#' @param ... Optional parameters.
#'
#' @rdname get_entities
#' @export
get_entities <- function(.data, ...) {
  UseMethod("get_entities", .data)
}

#' @rdname get_entities
#' @export
#'
#' @examples
#' \dontrun{
#' conn <- open_conn_mysql("sys", "root")
#' get_entities(conn)
#' }
get_entities.site <- function(.data, ...) {
  aux <- tibble::tibble()
  if ("ID_SITE" %in% colnames(.data))
    aux <- rpdata::entity %>%
      dplyr::filter(ID_SITE %in% .data$ID_SITE)
  if (ncol(aux) == 0)
    aux <- rpdata::entity %>%
      dplyr::filter(site_name %in% .data$site_name)
  aux
}

#' @rdname get_entities
#' @export
get_entities.default <- function(.data, ...) {
  warning("That doesn't look like a hydrological basin site.")
}

#' @rdname get_entities
#' @export
get_entities.tbl_df <- function(.data, ...) {
  warning("That doesn't look like a hydrological basin site.", call. = FALSE)
}
