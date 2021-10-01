require 'tty-table'

module Views
    module Scorecard
        def self.scorecard(scores)
            table = TTY::Table.new(['index',"Challenges",scores.current_player.name, scores.other_player.name],[])
            table << ["1","Ones",scores.current_player.ones,scores.other_player.ones]
            table << ["2",'Twos',scores.current_player.twos, scores.other_player.twos]
            table << ["3",'Threes',scores.current_player.threes, scores.other_player.threes]
            table << ["4",'Fours',scores.current_player.fours, scores.other_player.fours]
            table << ["5",'Fives',scores.current_player.fives, scores.other_player.fives]
            table << ["6",'Sixes',scores.current_player.sixes, scores.other_player.sixes]
            table << ["7",'Three of a kind',scores.current_player.three_of_a_kind,scores.other_player.three_of_a_kind]
            table << ["8",'Fours of a kind',scores.current_player.four_of_a_kind,scores.other_player.four_of_a_kind]
            table << ["9",'Full house',scores.current_player.full_house,scores.other_player.full_house]
            table << ["10",'Small straight',scores.current_player.small_straight,scores.other_player.small_straight]
            table << ["11",'Large straight',scores.current_player.large_straight,scores.other_player.large_straight]
            table << ["12",'Yahtzee',scores.current_player.yahtzee,scores.other_player.yahtzee]
            table << ["13",'Chance',scores.current_player.chance,scores.other_player.chance]
            table << ["",'Sum',scores.current_player.sum,scores.other_player.sum]
            puts table.render :ascii  
        end
    end
end