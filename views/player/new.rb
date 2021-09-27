module Views
    module Player
        def self.new(player)
            print "Name: "
            player.name = gets.chomp.strip
        end
    end
end