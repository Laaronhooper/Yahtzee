require 'tty-table'

module Views
    module Scorecard
        def self.scorecard(scores)
            table = TTY::Table.new(['index',"Challenges",scores.current_player.name, scores.other_player.name],[])
            table << ["1","Ones",scores.current_player.ones, '1']
            # table << ["2",'Twos',scores.twos]
            # table << ["3",'Threes',scores.threes]
            # table << ["4",'Fours',scores.fours]
            # table << ["5",'Fives',scores.fives]
            # table << ["6",'Sixes',scores.sixes]
            # table << ["7",'Three of a kind',scores.three_of_a_kind]
            # table << ["8",'Fours of a kind',scores.four_of_a_kind]
            # table << ["9",'Full house',scores.full_house]
            # table << ["10",'Small straight',scores.small_straight]
            # table << ["11",'Large straight',scores.large_straight]
            # table << ["12",'Yahtzee',scores.yahtzee]
            # table << ["13",'Chance',scores.chance]
            # table << ["14",'Sum',scores.sum]
            puts table.render :ascii  
        end
    end
end