# Information Imbalance

Information Imbalance

## Usage

``` r
infoimbalance(
  mx,
  my,
  alpha = seq(0, 1, 0.1),
  lib = NULL,
  pred = NULL,
  h = 1,
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

- alpha:

  (optional) Scaling parameter weighting the putative driver
  measurements.

- lib:

  (optional) Library indices.

- pred:

  (optional) Prediction indices.

- h:

  (optional) Prediction horizon.

- k:

  (optional) Number of nearest neighbors when estimating ranks.

- threads:

  (optional) Number of parallel threads.

- method:

  (optional) Distance measure to be used: `"euclidean"`, `"manhattan"`,
  or `maximum"`.

## Value

A numeric vector.

## References

Del Tatto, V., Fortunato, G., Bueti, D., Laio, A., 2024. Robust
inference of causality in high-dimensional dynamical processes from the
Information Imbalance of distance ranks. Proceedings of the National
Academy of Sciences 121.

## Examples

``` r
set.seed(42)
mx = embed(rnorm(100), 3)
my = embed(rnorm(100), 3)
infoxtr::infoimbalance(mx, my)
#>  [1] 0.4302264 0.4282425 0.4576469 0.4392249 0.4645198 0.4660077 0.4584972
#>  [8] 0.4920112 0.5017891 0.5073865 0.5269423
```
