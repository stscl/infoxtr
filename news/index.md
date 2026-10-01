# Changelog

## infoxtr 0.4

## infoxtr 0.3

CRAN release: 2026-09-30

#### new

- Provide R-level API and vignette for infomation imbalance and
  imbalance gain ([\#91](https://github.com/stscl/infoxtr/issues/91)).

#### enhancements

- [`discretize()`](https://stscl.github.io/infoxtr/reference/discretize.md)
  now safely falls back to factor encoding (`NA` as `0`) for edge cases
  ([\#98](https://github.com/stscl/infoxtr/issues/98)).

#### breaking changes

- Euclidean/Manhattan distances now automatically compensate for
  dimensions skipped due to `NA`/`NaN`, aligned with base R
  [`dist()`](https://rdrr.io/r/stats/dist.html)
  ([\#96](https://github.com/stscl/infoxtr/issues/96)).

- Remove leading lag-induced NA values in `surd` time-series
  implementation ([\#83](https://github.com/stscl/infoxtr/issues/83)).

## infoxtr 0.2

CRAN release: 2026-03-30

#### enhancements

- Support variable-specific discretization settings via vectorized `bin`
  and `method` arguments in `surd` generic
  ([\#68](https://github.com/stscl/infoxtr/issues/68)).

#### breaking changes

- Rename combination order limit parameter in `surd` generic to
  `max.order` ([\#65](https://github.com/stscl/infoxtr/issues/65)).

## infoxtr 0.1

CRAN release: 2026-03-19

- First stable release
  ([\#60](https://github.com/stscl/infoxtr/issues/60)).
