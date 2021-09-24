# RESTful endpoints
# 1. index listviw eqiv
# 2. show id detailview eqiv
# 3. new/create creatediew equiv
# 4. edit/update id updateview equiv
# 5. destroy id deleteview equiv


class PlayerController
    def index
        players = Player.all
        Views::Player.index(players)
    end

    def show(id) 
        player = Player.find(id)
        Views::Player.show player
    end

    def new
        player = Player.new
        Views::Player.new player
        player.save
    end
end

