#' Plot a map from EJSON
#'
#' @param ejson Path to file or object returned by read_ejson()
#' @return A ggplot object
#' @export
plot_ejson_map <- function(ejson) {

  if (is.character(ejson)) {
    ejson <- read_ejson(ejson)
  }

  # If it's already an sf object
  if (inherits(ejson, "sf")) {
    return(
      ggplot2::ggplot(ejson) +
        ggplot2::geom_sf(fill = "lightblue", color = "black") +
        ggplot2::theme_minimal()
    )
  }

  stop("Unsupported EJSON structure.")
}
