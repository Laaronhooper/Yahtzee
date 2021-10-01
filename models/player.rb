require_relative 'score.rb'
require 'forwardable'
class Player
    extend Forwardable
    def_delegators :@score, :ones, :twos, :threes, :fours, :fives, :sixes
    attr_accessor :name
    def initialize(name)
        @name = name.capitalize
        @score = Score.new
        @dice = Die.new
    end
    def score!(current_rolls,input)
        @score.where_to_score(current_rolls, input)
    end
    def score
        @score.sum
    end
    def roll
        @dice.roll
    end
    def rolls
        @dice.rolls
    end
    def reroll
        @dice.reroll
    end
    def drop
        @dice.drop
    end
    
    def current_rolls
        @dice.current_rolls
    end 
end
