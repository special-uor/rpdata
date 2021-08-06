#' \code{site} table
#'
#' Contains metadata for each site record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::site)` rows and `r ncol(rpdata::site)` variables:
#' \describe{
#'   \item{ID_SITE}{int ...}
#'   \item{site_name}{int ...}
#'   \item{latitude}{int ...}
#'   \item{longitude}{int ...}
#'   \item{elevation}{int ...}
#'   \item{site_type}{int ...}
#'   \item{water_depth}{int ...}
#'   \item{basin_size_class}{int ...}
#'   \item{catch_size_class}{int ...}
#'   \item{flow_type}{int ...}
#'   \item{basin_size_km2}{int ...}
#'   \item{catch_size_km2}{int ...}
#' }
"site"

#' \code{entity} table
#'
#' Contains metadata for each entity record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::entity)` rows and `r ncol(rpdata::entity)` variables:
#' \describe{
#'   \item{ID_SITE}{int ...}
#'   \item{ID_ENTITY}{int ...}
#'   \item{entity_name}{int ...}
#'   \item{latitude}{int ...}
#'   \item{longitude}{int ...}
#'   \item{elevation}{int ...}
#'   \item{depositional_context}{int ...}
#'   \item{measurement_method}{int ...}
#'   \item{TYPE}{int ...}
#'   \item{source}{int ...}
#'   \item{core_location}{int ...}
#'   \item{last_updated}{int ...}
#'   \item{ID_UNIT}{int ...}
#' }
"entity"

#' \code{entity_link_publication} table
#'
#' Contains links between entities and publications.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::entity_link_publication)` rows and `r ncol(rpdata::entity_link_publication)` variables:
#' \describe{
#'   \item{ID_ENTITY}{int ...}
#'   \item{ID_PUB}{int ...}
#' }
"entity_link_publication"

#' \code{publication} table
#'
#' Contains metadata for each publication used to retrieve data.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::publication)` rows and `r ncol(rpdata::publication)` variables:
#' \describe{
#'   \item{ID_PUB}{int ...}
#'   \item{citation}{int ...}
#'   \item{pub_DOI_URL}{int ...}
#'   \item{bibentry}{int ...}
#' }
"publication"

#' \code{unit} table
#'
#' Contains metadata for each unit record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::unit)` rows and `r ncol(rpdata::unit)` variables:
#' \describe{
#'   \item{ID_UNIT}{int ...}
#'   \item{UNIT}{int ...}
#' }
"unit"

#' \code{sample} table
#'
#' Contains metadata for each sample record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::sample)` rows and `r ncol(rpdata::sample)` variables:
#' \describe{
#'   \item{ID_ENTITY}{int ...}
#'   \item{ID_SAMPLE}{int ...}
#'   \item{avg_depth}{int ...}
#'   \item{sample_thickness}{int ...}
#'   \item{charcoal_measurement}{int ...}
#'   \item{analytical_sample_volume}{int ...}
#' }
"sample"

#' \code{chronology} table
#'
#' Contains metadata for each chronology record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::chronology)` rows and `r ncol(rpdata::chronology)` variables:
#' \describe{
#'   \item{ID_MODEL}{int ...}
#'   \item{ID_SAMPLE}{int ...}
#'   \item{original_est_age}{int ...}
#' }
"chronology"

#' \code{age_model} table
#'
#' Contains metadata for each age model record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::age_model)` rows and `r ncol(rpdata::age_model)` variables:
#' \describe{
#'   \item{ID_MODEL}{int ...}
#'   \item{ID_SAMPLE}{int ...}
#'   \item{mean}{int ...}
#'   \item{median}{int ...}
#'   \item{UNCERT_5}{int ...}
#'   \item{UNCERT_25}{int ...}
#'   \item{UNCERT_75}{int ...}
#'   \item{UNCERT_95}{int ...}
#' }
"age_model"

#' \code{model_name} table
#'
#' Contains metadata for each model name record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::model_name)` rows and `r ncol(rpdata::model_name)` variables:
#' \describe{
#'   \item{ID_MODEL}{int ...}
#'   \item{model_name}{int ...}
#' }
"model_name"

#' \code{date_info} table
#'
#' Contains metadata for each date info record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::date_info)` rows and `r ncol(rpdata::date_info)` variables:
#' \describe{
#'   \item{ID_ENTITY}{int ...}
#'   \item{ID_DATE_INFO}{int ...}
#'   \item{material_dated}{int ...}
#'   \item{date_type}{int ...}
#'   \item{avg_depth}{int ...}
#'   \item{thickness}{int ...}
#'   \item{lab_number}{int ...}
#'   \item{age_C14}{int ...}
#'   \item{age_calib}{int ...}
#'   \item{error}{int ...}
#'   \item{correlation_info}{int ...}
#'   \item{age_used}{int ...}
#'   \item{reason_age_not_used}{int ...}
#'   \item{notes}{int ...}
#' }
"date_info"
