library(RCAS)
context("built-in data: gff, queryRegions, msigDB")

data(gff)
test_that("gff is a GRanges object containing test data of dimensions", {
  expect_is(object = gff, 'GRanges')
  expect_equal(length(gff), 238010)
  expect_equal(ncol(GenomicRanges::mcols(gff)), 16)
})

data(queryRegions)
test_that("queryRegions is a GRanges object from a HITS-CLIP dataset", {
  expect_is(object = queryRegions, 'GRanges')
  expect_equal(length(queryRegions), 10000)
  expect_equal(round(mean(GenomicRanges::score(queryRegions))), 45)
})

data(msigDB)
test_that("msigDB is a list of vectors containing gene sets", {
  expect_is(object = msigDB, 'list')
  expect_equal(length(msigDB), 1330)
  expect_match(names(msigDB)[1], 'KEGG_GLYCOLYSIS_GLUCONEOGENESIS')
})