# RESTful endpoints
# 1. index listviw eqiv
# 2. show id detailview eqiv
# 3. new/create creatediew equiv
# 4. edit/update id updateview equiv
# 5. destroy id deleteview equiv


class DiceController
    def index
        dices = Dice.all
        Views::dice.index(dices)
    end

    def show(id) 
        dice = Dice.find(id)
        Views::Dice.show dice
    end

    def new
        dice = Dice.new
        Views::Dice.new dice
        dice.save
    end
end

