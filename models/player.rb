require_relative 'scores.rb'
class Player
    attr_accessor :name
    def initialize(name)
        @name = name.capitalize
        @score = Score.new
    # pass dice
    #delgated to instance of score
    # score delegates back
    # accept numerical value of score
    end
    def score!(current_rolls,input)
        @score.where_to_score(current_rolls, input)
    end
    # take 
    def score
        @score.sum
    end
    def ones
        @score.ones
    end
    def twos
        @score.twos
    end
    def threes
        @score.threes
    end 
    def fours
        @score.fours
    end 
    def fives
        @score.fives
    end 
    def sixes
        @score.sixes
    end 
end

