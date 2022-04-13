library(rvest)
library(dplyr)
library(devtools)
library(fplscrapR)
library(fplr)

url = "https://www.transfermarkt.co.uk/transfers/transferrekorde/statistik/top/plus/0/g"


players <- na.omit(fpl_get_player_all())

for (i in players) {
  if (players[i] == is.null) {
    i <- "-"
  }
}

nextGW <- fpl_get_gameweek_next()

fpl_get_player_all()
fpl_get_player_current(player_id = 3)

playerwithID <- cbind.data.frame(players$id,players$second_name,players$team)
  

#Returns the data of a single player
  search_player <- function(name) {
    tempIndex = which(players$second_name == name)
    #Transpose matrix for readability (t)
    
    return(View(t(players[tempIndex,])))
  }
  
  View(players[order(players$ep_next)])
  
  search_player("Mount")
  
  View(fpl_get_player_detailed(player_id = 233))
  
  
  
  
  
  
  
  
