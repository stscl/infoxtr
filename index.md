# infoxtr

[![infoxtr website:
https://stscl.github.io/infoxtr/](reference/figures/infoxtr.png)](https://stscl.github.io/infoxtr/)

***Information**-Theoretic Measures for Revealing Variable
**Interactions***

*infoxtr* is an R package for analyzing variable interactions using
information-theoretic measures. Originally tailored for time series, its
methods extend seamlessly to spatial cross-sectional data. Powered by a
pure C++ engine with a lightweight R interface, the package also exposes
its headers for direct integration into other R packages.

> *Refer to the package documentation <https://stscl.github.io/infoxtr/>
> for more detailed information.*

## Installation

- Install from [CRAN](https://CRAN.R-project.org/package=infoxtr) with:

``` r

install.packages("infoxtr", dep = TRUE)
```

- Install binary version from
  [R-universe](https://stscl.r-universe.dev/infoxtr) with:

``` r

install.packages("infoxtr",
                 repos = c("https://stscl.r-universe.dev",
                           "https://cloud.r-project.org"),
                 dep = TRUE)
```

- Install from source code on [GitHub](https://github.com/stscl/infoxtr)
  with:

``` r

if (!requireNamespace("devtools")) {
    install.packages("devtools")
}
devtools::install_github("stscl/infoxtr",
                         build_vignettes = TRUE,
                         dep = TRUE)
```

## References

Schreiber, T., 2000. Measuring Information Transfer. Physical Review
Letters 85, 461–464. <https://doi.org/10.1103/physrevlett.85.461>.

Kraskov, A., Stogbauer, H., Grassberger, P., 2004. Estimating mutual
information. Physical Review E 69.
<https://doi.org/10.1103/physreve.69.066138>.

Martinez-Sanchez, A., Arranz, G., Lozano-Duran, A., 2024. Decomposing
causality into its synergistic, unique, and redundant components. Nature
Communications 15. <https://doi.org/10.1038/s41467-024-53373-4>.

Zhang, X., Chen, L., 2025. Quantifying interventional causality by
knockoff operation. Science Advances 11.
<https://doi.org/10.1126/sciadv.adu6464>.

Varley, T.F., 2025. Information theory for complex systems scientists:
What, why, and how. Physics Reports 1148, 1–55.
<https://doi.org/10.1016/j.physrep.2025.09.007>.
