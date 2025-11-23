# pacificmapsR

Quickly generating a map of a country is often an easy task. However in
the wider Pacific region there are many complications. Having a simple
package that implements best practice in storing and displaying map and
spatial data for the Pacific will lower the barrier for others to make
compelling analyses and visualisations of Pacific issues.

## Installation

You can install the development version of pacificmapsR from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("JayaniLakshika/pacificmapsR")
```

## Issues mainly we addressed

``` r
library(pacificmapsR)
```

- To shift objects on the oneside of the dateline

``` r
dd <- read_ejson(here::here("data/2010_PHC_Kiribati_EnumArea_3832.geojson"))
plot_ejson_map(dd)
```

![](reference/figures/README-unnamed-chunk-3-1.png)

- Changes the coordinate reference system which solves the axis label
  problem

``` r
dd <- read_ejson(here::here("data/2007_PHC_Fiji_EnumArea_32760.geojson"))
plot_ejson_map(dd)
```

![](reference/figures/README-unnamed-chunk-4-1.png)
