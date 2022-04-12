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

for (player in players$second_name) {
  if (player == "Salah")  {
    print(player$id)
  }
}
 
  