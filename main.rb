def play
    print "Would you like to play again? [y/n]: "
    case gets.chomp.downcase.strip
    when 'y', 'yes'
        puts 'I play' # Game.play
    when 'n','no'
        puts "Come back when you'd like to play!"
    end 
end

#play

def player_name
    print "What's you're name? "
    input_playername = gets.chomp.downcase.strip
    puts "Your name is #{input_playername}, Correct?" 
    case input = gets.chomp.downcase.strip
    when 'y', 'yes'
        puts "Ok, lets go "
    when 'n','no'
        puts "Ok, let's try that again."
        self.player_name
    end  
end

player_name