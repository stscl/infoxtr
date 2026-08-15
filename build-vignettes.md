# NA

``` r

.prebuild_vignettes = \(name){
  out = paste0("vignettes/",name,".Rmd")
  inp = paste0(out,".orig")
  knitr::knit(inp,out)
}

vignettes = c("main1_iig", "main2_surd")
for (v in vignettes) {
  .prebuild_vignettes(v)
}
```
