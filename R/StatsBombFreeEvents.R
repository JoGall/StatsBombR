StatsBombFreeEvents <- function(MatchesDF = "ALL"){
  print("Whilst we are keen to share data and facilitate research, we also urge you to be responsible with the data. Please register your details on https://www.statsbomb.com/resource-centre and read our User Agreement carefully.")
  events.df <- tibble()

  if(MatchesDF == "ALL"){
    Comp <- FreeCompetitions()
    Matches2 <- FreeMatches(Comp$competition_id)
    for(i in 1:length(Matches2$match_id)){
      events <- get.matchFree(Matches2[i,])
      events.df <- bind_rows(events.df, events)
    }

  } else {
    for(i in 1:length(MatchesDF$match_id)){
      events <- get.matchFree(MatchesDF[i,])
      events.df <- bind_rows(events.df, events)
    }

  }
  return(events.df)
} ##End function

