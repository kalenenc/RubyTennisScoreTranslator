puts "Please enter in the score separated by a comma or a space"
score = gets.chomp
score_array = []

if score.include?(",")
      score_array = score.split(",")
end

if score.include?(" ")
      score_array = score.split(" ")
end

player1_score = score_array[0].to_i
player2_score = score_array[1].to_i


def love player1_score, player2_score
      if player1_score == 1
            player1_score = "fifteen"
      end

      if player2_score == 1 
            player2_score = "fifteen"
      end

      if player1_score == 2 
            player1_score = "thirty"
      end

      if player2_score == 2 
            player2_score = "thirty"
       end

      if player1_score == 3 
            player1_score = "forty"
      end

      if player2_score == 3
            player2_score = "forty"
      end 
      puts "#{player1_score} #{player2_score} love"
end


def NotLove player1_score, player2_score
      if player1_score >= player2_score + 2
            puts "Player 1 won the game!"
      end

      if player2_score >= player1_score + 2
             puts "Player 2 won the game!"
      end 
 
      if player1_score == player2_score
              puts "Deuce!"
      end   
 
      if  player2_score == player1_score + 1
            puts "Advantage player 2"
      end

      if player1_score == player2_score + 1
             puts "Advantage player 1"
      end
end
           

 
if player1_score >=3 && player2_score >= 3
      NotLove player1_score, player2_score
elsif player2_score >= player1_score + 2
      puts "Player 2 won the game!"
elsif player2_score >= player1_score + 2
      puts "Player 1 won the game!"
else
      love player1_score, player2_score
end