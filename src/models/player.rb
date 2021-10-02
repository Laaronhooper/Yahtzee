require_relative 'score.rb'
require 'forwardable'
class Player
    extend Forwardable
    def_delegators :@score, :sum, :ones, :twos, :threes, :fours, :fives, :sixes, :three_of_a_kind, :four_of_a_kind, :full_house, :small_straight, :large_straight, :yahtzee, :chance
    attr_accessor :name
    def initialize(name)
        @name = name.capitalize
        @score = Score.new
        @dice = Die.new
    end
    def score!(current_rolls,input)
        @score.where_to_score(current_rolls, input)
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
    def drop(input)
        @dice.drop(input)
    end
    def drop_all
        @dice.drop_all
    end
    def current_rolls
        @dice.current_rolls
    end 
end
