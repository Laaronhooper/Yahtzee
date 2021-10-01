require './models/die.rb'
def testcase
    d = Die.new
    p d.rolls
    p d.current_rolls
end
testcase