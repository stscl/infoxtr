# Information Imbalance

Information Imbalance

## Usage

``` r
info_imbalance(
  mx,
  my,
  lib = NULL,
  pred = NULL,
  k = 3,
  threads = 1,
  method = "euclidean"
)
```

## Arguments

- mx:

  Numeric matrix of hypothesised driving variable measurements.

- my:

  Numeric matrix of hypothesised response variable measurements.

- lib:

  (optional) Library indices.

- pred:

  (optional) Prediction indices.

- k:

  (optional) Number of nearest neighbors when estimating ranks.

- threads:

  (optional) Number of parallel threads.

- method:

  (optional) Distance measure to be used: `"euclidean"`, `"manhattan"`,
  or `maximum"`.

## Value

A numeric value.

## References

Glielmo, A., Zeni, C., Cheng, B., Csanyi, G., Laio, A., 2022. Ranking
the information content of distance measures. PNAS Nexus 1.

## Examples

``` r
set.seed(42)
mx = embed(rnorm(100), 3)
my = embed(rnorm(100), 3)
infoxtr::info_imbalance(mx, my)
#> [1] 1.033667
```
