getallinfo <- function(fixtures) {
  dat <- lapply(1:nrow(fixtures), function(i) {
  temp <- get.matchFree(fixtures[i, ])
  Sys.sleep(runif(1, 1, 2)) # be courteous!
  allclean(temp)
}) %>% 
  plyr::rbind.fill()
}
