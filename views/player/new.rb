module Views
    module Player
        def self.new(player)
            puts "New Player!"
            print "Name: "
            player.name = gets.chomp.strip
        end
    end
end


# print "What's you're name? "
# input_playername = gets.chomp.downcase.strip
# puts "Your name is #{input_playername}, Correct? " 
# case input = gets.chomp.downcase.strip
# when 'y', 'yes'
#     puts "Ok, and you're name player 2? "
# when 'n','no'
#     puts "Ok, let's try that again."
#     self.player_name_1
# end
# puts input_playername
# end