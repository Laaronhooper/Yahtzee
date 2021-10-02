module Views
    module Player
        def self.new(player)
            print "Enter Player name: "
            name = gets.chomp.to_s
            player = Player.new(name)
        end
    end
end