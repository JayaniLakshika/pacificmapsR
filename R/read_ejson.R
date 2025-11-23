#' Read an EJSON file
#'
#' @param path Path to the EJSON file
#' @return A list or sf object
#' @export
read_ejson <- function(path) {
  raw <- jsonlite::read_json(path, simplifyVector = FALSE)

  # If GeoJSON-like structure:
  if (!is.null(raw$type) && raw$type %in% c("FeatureCollection", "Feature")) {
    return(sf::st_read(path, quiet = TRUE))
  }

  # Otherwise return raw list for custom parsing
  raw
}
