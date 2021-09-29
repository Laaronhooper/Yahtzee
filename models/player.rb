require_relative './Scorecard.rb'

class Player < Scorecard
    attr_accessor :name
    def initialize(name:'')
        super()
        @name = name
   end 
end

