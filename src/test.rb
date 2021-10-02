require 'rspec/autorun'
require './models/die.rb'
require './models/score.rb'
require './models/game.rb'
require './models/player.rb'



describe Player do
    subject {Player.new}
    it "takes a name" do
        player = Player.new("name")
        expect(player.name).to eq("Name")
    end

end
describe Score do
    subject {Score.new} 
    it "sets scorecard value one to value" do
        subject.ones = 1
        expect(subject.ones).to eq(1)
    end
end
describe Game do
    subject {Game.new(a,b)}  
    it "Takes two players and puts them in array" do
        expect(subject.players).to eq([a,b])
    end
    it "changes player from current to the other player" do
        expect(subject.players).to eq([a,b])
    end
end

describe Die do
    subject {Die.new}
    it "rolls one single die" do
        expect(subject.roll == 1..6).to be true
    end
    it "rolls one single die of value" do
        subject.stub(:roll).and_return(5)
        expect(subject.roll).to eq(5)
    end
    it "rolls five dice in array" do
        expect(subject.rolls == 5.times(1..6)).to be true
    end
    it "reroll refills array" do
        die = Die.new
        expect(subject.reroll).to eq(array)
    end
    it "drops a single die" do
        subject.current_rolls << [1,2,3,4,5]
        expect(subject.drop(0)).to eq([2,3,4,5])
    end 
    it "drops all die" do
        subject.current_rolls << [1,2,3,4,5]
        expect(subject.drop_all).to eq([])
    end
end

 