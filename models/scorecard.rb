class Scorecard
    attr_reader :index, :targets, :instructions
    def initialize
        
    end
    def index
        @index = %w(1 2 3 4 5 6 7 8 9 10 11 12 13 14)
    end
    
    def targets
        @index = [
            "ones",
            "twos",
            "threes", 
            "fours", 
            "fives", 
            "sixes", 
            "three of a kind", 
            "four of a kind", 
            "full house",
            "small straight", 
            "large straight", 
            "yahtzee", 
            "chance"
        ]
    end

    def instructions
       @instructions = [
           'Count and add only ones',
            'Count and add only twos',
            'Count and add only threes',
            'Count and add only fours',
            'Count and add only fives',
            'Count and add only sixes',
            'Add total of dice',
            'Add total of dice',
            'Add 25 to score',
            'Add 30 to score',
            'Add 40 to score', 
            'Add 50 to score',
            'Count and add all dice',
            'Sum of scores'
]
    end
end