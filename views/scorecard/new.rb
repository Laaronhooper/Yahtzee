require 'tty-prompt'
require 'tty-table'
module Views
    module Scorecard
        def self.new(scorecard)
            # What happens if scorecard.nil? Need a guard?
            headers = %w[Challenges Instructions Player_1 Player_2]
            attrs = attribute_rows_for scorecard
            table = TTY::Table.new headers, attrs
            puts table.render :ascii
        end

        def self.attribute_rows_for(scorecard)
            rows = []
            rows << ['Players', scorecard.players] 
            # rows << ['Ones', scorecard.ones]
            # rows << ['Twos', scorecard.twos]
            # rows << ['Threes', scorecard.threes]
            # rows << ['Fours', scorecard.fours]
            # rows << ['Fives', scorecard.fives]
            # rows << ['Sixes', scorecard.sixes]
            # rows << ['Three of a kind', scorecard.three_of_a_kind]
            # rows << ['Fours of a kind', scorecard.four_of_a_kind]
            # rows << ['Full house', scorecard.full_house]
            # rows << ['Small straight', scorecard.small_straight]
            # rows << ['Large straight', scorecard.large_straight]
            # rows << ['Yahtzee', scorecard.yahtzee]
            # rows << ['Chance', scorecard.chance]
            # rows << ['Sum', scorecard.sum]
        end
    end
end

# prompt = TTY::Prompt.new
# prompt.select("Where would you like to allocate your turn?", %w(ones twos threes fours fives sixes three_of_a_kind four_of_a_kind full_house small_straight large_straight yahtzee chance))