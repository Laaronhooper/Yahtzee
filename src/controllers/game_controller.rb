class GameController
    def new
        player = Player.new
        Views::Player.new player
        player.save
    end
end