require_relative './scorecard.rb'
class Player < Scorecard
    attr_accessor :name
    def initialize(name: '')
        super()
        @name = name
        @valid = false
    end
    def name=(name)
        @name = name
        @valid = !(@name.nil? || @name.empty?)
    end 
end

test = Player.new
puts "ones"
p test.ones
test.ones=5
p test.ones
puts "twos"
p test.twos
test.twos=5
p test.twos
puts "sum"
p test.sum
