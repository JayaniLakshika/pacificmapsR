test_that("read_ejson works on missing file", {
  expect_error(read_ejson("data/2010_PHC_Kiribati_EnumArea_3832.geojson"))
})
