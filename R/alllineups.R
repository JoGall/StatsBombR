alllineups <- function(username = username, password = password, matchesvector) {
    
  #start time
  strt<-Sys.time()
  lineups <- tibble()
  for(i in matchesvector){
    line1 <- get.lineups(username, password, matchesvector[i])
    lineups <- bind_rows(lineups, line1)
  }
  print(Sys.time()-strt)
  
  return(lineups)
}

