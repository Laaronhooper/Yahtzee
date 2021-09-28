# RESTful endpoints
# 1. index listviw eqiv
# 2. show id detailview eqiv
# 3. new/create creatediew equiv
# 4. edit/update id updateview equiv
# 5. destroy id deleteview equiv

require './controllers/player_controller.rb'
require './views/player/new.rb'
require './models/player.rb'
class PlayerController
    def new
        player = Player.new
        Views::Player.new player
        player.save
    end
end


# Get rid of active record
# strip it back
# how to grab p1 and 2
# turn p1
# assign t scorecard
# turn p2
# self responsibility
