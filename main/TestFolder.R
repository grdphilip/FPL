library(rvest)
library(dplyr)
library(devtools)
library(fplscrapR)
library(fplr)

url = "https://www.transfermarkt.co.uk/transfers/transferrekorde/statistik/top/plus/0/g"

players <- fpl_get_player_all()
nextGW <- fpl_get_gameweek_next()

fpl_get_player_all()
fpl_get_player_current(player_id = 3)

playerwithID <- cbind.data.frame(players$id,players$second_name,players$team)
  

#Function to search a player 
  search_player <- function(name) {
    for (j in 1:nrow(playerwithID)) {
      for (i in 1:ncol(playerwithID$second_name)){
        if (i == name) {
          data[i[index], ]
        }
      }
    }
    return(NULL)
    
  }

  search_player("Salah")

