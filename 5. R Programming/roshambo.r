#rock scissors paper game
#input name
player_name <- readline("Enter player name:")
greet <- paste("Hi!",player_name,"Welcome to the Rock Paper Scissors Game!")
print(greet)

#game
game <- function() {
    game_count <- 1
    player_score <- 0
    com_score <- 0

#loop and probability
while (player_score < 3 & com_score < 3) {
    hands <- c("rock", "paper", "scissors")
    com_hand <- sample(hands, 1)
    player_choice <- readline("Choose rock, paper, scissors or quit: ")

        #draw
        if (player_choice == com_hand) {
            print(paste("Computor: ",com_hand))
            print(paste("Draw!", player_score, "vs", com_score))
        }

        #lose
        else if ((player_choice == "rock" & com_hand == "paper")    |
                (player_choice == "paper" & com_hand == "scissors") |
                (player_choice == "scissors" & com_hand == "rock")) {
            com_score = com_score + 1
            print(paste("Computor: ",com_hand))
            print(paste("You lose!", player_score, "vs", com_score))
        }

        #win
        else if ((player_choice == "rock" & com_hand == "scissors") |
                (player_choice == "paper" & com_hand == "rock")     |
                (player_choice == "scissors" & com_hand == "paper")){
            player_score = player_score + 1
            print(paste("Computor: ",com_hand))
            print(paste("You win!", player_score, "vs", com_score))
        }
        else {print("Please, choose rock paper, scissors or quit")
        }
    flush.console()
    if (player_choice == "quit") {break}

}


 #print score
  print(paste(player_score ,"vs", com_score))

 #conclusion
  if (player_score > com_score) {
    print("You WON!!!🏆")
  } else if (player_score < com_score) {
    print("You lOSE !!!👎")
  } else if (player_score == com_score) {
    print("DRAW")
  }
  print("END")
}

game()
