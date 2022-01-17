#' \code{site} table
#'
#' Contains metadata for each site record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::site)` rows and `r ncol(rpdata::site)` variables:
#' \describe{
#'   \item{ID_SITE}{\code{Unsigned integer}: Unique identifier for each site}
#'   \item{site_name}{\code{Text}: Site name as given by original authors or as defined by us where there was no unique name given to the site}
#'   \item{latitude}{\code{Double}: Latitude of the sampling site, given in decimal degrees, where N is positive and S is negative}
#'   \item{longitude}{\code{Double}: Longitude of the sampling site in decimal degrees, where E is positive and W is negative}
#'   \item{elevation}{\code{Double}: Elevation of the sampling site in metres above (+) or below (-) sea level}
#'   \item{site_type}{\code{Text}: Information about type of site (e.g. lake, peatland, terrestrial)}
#'   \item{water_depth}{\code{Double}: Water depth of the sampling site in metres}
#'   \item{basin_size_class}{\code{Text}: Categorical estimate of basin size}
#'   \item{catch_size_class}{\code{Text}: Categorical estimate of the hydrological catchment size}
#'   \item{flow_type}{\code{Text}: Indication of whether there is inflow and/or outflow from the sampled site}
#'   \item{basin_size_km2}{\code{Double}: Size of sampled site (e.g., lake or bog) in km2}
#'   \item{catch_size_km2}{\code{Double}: Size of hydrological catchment in km2}
#' }
"site"

#' \code{entity} table
#'
#' Contains metadata for each entity record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::entity)` rows and `r ncol(rpdata::entity)` variables:
#' \describe{
#'   \item{ID_SITE}{\code{Unsigned integer}: Refers to unique identifier for each site (as given in \code{site} table)}
#'   \item{ID_ENTITY}{\code{Unsigned integer}: Unique identifier for each entity}
#'   \item{entity_name}{\code{Text}: Name of entity, where an entity may be a separate core from the site or a separate type of measurement on the same core}
#'   \item{latitude}{\code{Double}: Latitude of the entity, given in decimal degrees, where N is positive and S is negative}
#'   \item{longitude}{\code{Double}: Longitude of the entity, given in decimal degrees, where E is positive and W is negative}
#'   \item{elevation}{\code{Double}: Elevation of the sampling site, in metres above (+) or below (-) sea level}
#'   \item{depositional_context}{\code{Text}: Type of sediment sampled for charcoal}
#'   \item{measurement_method}{\code{Text}: Method used to measure the amount of charcoal}
#'   \item{TYPE}{\code{Text}: The unit type of the measured charcoal values (e.g., concentration, influx)}
#'   \item{source}{\code{Text}: Source of charcoal data}
#'   \item{core_location}{\code{Text}: Location of the entity within the site (e.g., central core or marginal core)}
#'   \item{last_updated}{\code{Date}: Date when the entity or its linked data was last updated}
#'   \item{ID_UNIT}{\code{Unsigned integer}: Unique identifier for measurement unit (as in \code{unit} table)}
#' }
"entity"

#' \code{entity_link_publication} table
#'
#' Contains links between entities and publications.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::entity_link_publication)` rows and `r ncol(rpdata::entity_link_publication)` variables:
#' \describe{
#'   \item{ID_ENTITY}{\code{Unsigned integer}: Unique identifier for the entity (as in \code{entity} table)}
#'   \item{ID_PUB}{\code{Unsigned integer}: Unique identifier for the publication (as in \code{publication} table)}
#' }
"entity_link_publication"

#' \code{publication} table
#'
#' Contains metadata for each publication used to retrieve data.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::publication)` rows and `r ncol(rpdata::publication)` variables:
#' \describe{
#'   \item{ID_PUB}{\code{Unsigned integer}: Unique identifier for the publication}
#'   \item{citation}{\code{Text}: The citation for the publication}
#'   \item{pub_DOI_URL}{\code{Text}: The digital object identifier (doi) for the publication}
#'   \item{bibentry}{\code{Text}: The publication citation in bibtex format}
#' }
"publication"

#' \code{unit} table
#'
#' Contains metadata for each unit record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::unit)` rows and `r ncol(rpdata::unit)` variables:
#' \describe{
#'   \item{ID_UNIT}{\code{Unsigned integer}: Unique identifier for the unit record}
#'   \item{UNIT}{\code{Text}: Charcoal measurement unit}
#' }
"unit"

#' \code{sample} table
#'
#' Contains metadata for each sample record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::sample)` rows and `r ncol(rpdata::sample)` variables:
#' \describe{
#'   \item{ID_ENTITY}{\code{Unsigned integer}: Unique identifier for the entity (as in \code{entity} table)}
#'   \item{ID_SAMPLE}{\code{Unsigned integer}: Unique identifier for each charcoal sample}
#'   \item{avg_depth}{\code{Text}: Average sampling depth, in metres}
#'   \item{sample_thickness}{\code{Text}: Sample thickness, in metres}
#'   \item{charcoal_measurement}{\code{Text}: Quantity of charcoal measured in the sample}
#'   \item{analytical_sample_size}{\code{Text}: Total amount of sediment sampled}
#'   \item{analytical_sample_size_unit}{\code{Text}: Units used for the sampling}
#' }
"sample"

#' \code{chronology} table
#'
#' Contains metadata for each chronology record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::chronology)` rows and `r ncol(rpdata::chronology)` variables:
#' \describe{
#'   \item{ID_MODEL}{\code{Unsigned integer}: Unique identifier for the technique used to generate the original age model}
#'   \item{ID_SAMPLE}{\code{Unsigned integer}: Unique identifier for the sample (as in \code{sample} table)}
#'   \item{original_est_age}{\code{Integer}: Original estimated age}
#' }
"chronology"

#' \code{age_model} table
#'
#' Contains metadata for each age model record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::age_model)` rows and `r ncol(rpdata::age_model)` variables:
#' \describe{
#'   \item{ID_MODEL}{\code{Unsigned integer}: Unique identifier for the technique used to generate the age model}
#'   \item{ID_SAMPLE}{\code{Unsigned integer}: Unique identifier for the sample (as in \code{sample} table)}
#'   \item{mean}{\code{Integer}: Mean age of the sample}
#'   \item{median}{\code{Integer}: Median age of the sample}
#'   \item{UNCERT_5}{\code{Integer}: Lower bound of the 95% confidence interval for the median age}
#'   \item{UNCERT_25}{\code{Integer}: Upper bound of the 95% confidence interval for the median age}
#'   \item{UNCERT_75}{\code{Integer}: Lower bound of the 75% confidence interval for the median age}
#'   \item{UNCERT_95}{\code{Integer}: Upper bound of the 75% confidence interval for the median age}
#' }
"age_model"

#' \code{model_name} table
#'
#' Contains metadata for each model name record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::model_name)` rows and `r ncol(rpdata::model_name)` variables:
#' \describe{
#'   \item{ID_MODEL}{\code{Unsigned integer}: Unique identifier for the technique used to generate the age model}
#'   \item{model_name}{\code{Text}: Name of the technique used to generate the age model}
#' }
"model_name"

#' \code{date_info} table
#'
#' Contains metadata for each date info record.
#' @format A data frame (\code{tibble} object) with `r nrow(rpdata::date_info)` rows and `r ncol(rpdata::date_info)` variables:
#' \describe{
#'   \item{ID_ENTITY}{\code{Unsigned integer}: Unique identifier for the entity (as in \code{entity} table)}
#'   \item{ID_DATE_INFO}{\code{Unsigned integer}: Unique identifier for the date record}
#'   \item{material_dated}{\code{Text}: Material from which the date was obtained, if applicable}
#'   \item{date_type}{\code{Text}: Technique used to obtain the date measurement}
#'   \item{avg_depth}{\code{Double}: Average depth in the sedimentary sequence where the date was measured, in metres}
#'   \item{thickness}{\code{Double}: Thickness of the sample used for dating, in metres}
#'   \item{lab_number}{\code{Text}: Unique identifying code assigned by the dating laboratory}
#'   \item{age_C14}{\code{Double}: Uncalibrated radiocarbon age}
#'   \item{age_calib}{\code{Double}: The calendar age of a date}
#'   \item{error}{\code{Double}: Analytical or measurement error on the date}
#'   \item{correlation_info}{\code{Text}: Indication of basis for correlative dating (e.g., pollen, tephra or stratigraphic correlations)}
#'   \item{age_used}{\code{Text}: Indicates whether date was used by the author(s) in the construction of the original age model}
#'   \item{reason_age_not_used}{\code{Text}: Indication of why a date was not used in the original age model. Blank if dates were used in original model}
#'   \item{notes}{\code{Text}: Additional comments regarding a date record}
#' }
"date_info"
