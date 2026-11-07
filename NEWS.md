# infoxtr 0.4

### new

* Add `surd_discrete()` for SURD using pre-discretized state data (#107).

# infoxtr 0.3

### new

* Provide R-level API and vignette for infomation imbalance and imbalance gain (#91).

### enhancements

* `discretize()` now safely falls back to factor encoding (`NA` as `0`) for edge cases (#98).

### breaking changes

* Euclidean/Manhattan distances now automatically compensate for dimensions skipped due to `NA`/`NaN`, aligned with base R `dist()` (#96).

* Remove leading lag-induced NA values in `surd` time-series implementation (#83).

# infoxtr 0.2

### enhancements

* Support variable-specific discretization settings via vectorized `bin` and `method` arguments in `surd` generic (#68).

### breaking changes

* Rename combination order limit parameter in `surd` generic to `max.order` (#65).

# infoxtr 0.1

* First stable release (#60).
