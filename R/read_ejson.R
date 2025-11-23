#' Read an EJSON file
#'
#' @param path Path to the EJSON file
#' @return A list or sf object
#' @export
read_ejson <- function(path) {
  raw <- jsonlite::read_json(path, simplifyVector = FALSE)

  # If GeoJSON-like structure:
  if (!is.null(raw$type) && raw$type %in% c("FeatureCollection", "Feature")) {
    raw <- sf::st_read(path, quiet = TRUE) |>
      sf::st_shift_longitude() |> ## To shift objects on the oneside of the dateline
      sf::st_transform("EPSG:3994") ## Changes the coordinate reference system which solves the axis label problem
  }

  # Otherwise return raw list for custom parsing
  raw
}
