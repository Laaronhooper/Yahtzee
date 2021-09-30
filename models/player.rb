require_relative 'scores.rb'
class Player < Scores
    attr_accessor :name
    def initialize(name)
        @name = name.capitalize
    end
end

