require 'tty-table'
require './models/Game.rb'
# module Views
#     module Scorecard
        player1 = Player.new('luke')
        player2 = Player.new('sam')
        game = Game.new(player1,player2)
        headers = %w[Number Section How to score Player 1 Player 2]
        table = TTY::Table.new (headers, [['1','Ones','Count and add only ones','','']])
        table << ['1','Ones','Count and add only ones','','']
        table << ['2','Twos','Count and add only twos','','']
        table << ['3','Threes','Count and add only threes','','']
        table << ['4','Fours','Count and add only fours','','']
        table << ['5','Fives','Count and add only fives','','']
        table << ['6','Sixes','Count and add only sixes','','']
        table << ['7','Three of a kind','Add total of dice','','']
        table << ['8','Four of a kind','Add total of dice','','']
        table << ['9','Full house','Add 25 to score','','']
        table << ['10','Small straight','Add 30 to score','','']
        table << ['11','Large straight','Add 40 to score','','']
        table << ['12','Yahtzee','Add 50 to score','','']
        table << ['13','Chance','Count and add all dice','','']
        table << ['14','Sum','Sum of scores','','']

        puts table.render(:ascii)
#     end
# end

# def table_rows_for(game)
#     game.map do |game|
#         [game.index,game.targets,game.instructions]
#     end
# end
# rows = table_rows_for(game)