# StatsBombR

A basic mirror of the [StatsBombR](https://github.com/statsbomb/StatsBombR) package without `doParallel` dependencies.

Installs with plenty of warnings but should do the job for those who don't want to upgrade to R 5.0 yet.

### Install

```r
if (!require("devtools")) install.packages("devtools")
devtools::install_github("jogall/StatsBombR")
```

### Examples

Get all data from FIFA World Cup using helper function `getallinfo()`:

```r
library(StatsBombR)
fixtures <- FreeMatches(43)
getallinfo(fixtures[1:2,])
```
