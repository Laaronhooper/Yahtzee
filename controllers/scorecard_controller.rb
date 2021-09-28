# RESTful endpoints
# 1. index listviw eqiv
# 2. show id detailview eqiv
# 3. new/create creatediew equiv
# 4. edit/update id updateview equiv
# 5. destroy id deleteview equiv

# require "tty-prompt"

# prompt = TTY::Prompt.new

# choices = %w(ones twos threes fours fives sixes three_of_a_kind four_of_a_kind full_house small_straight large_straight yahtzee chance)
# prompt.multi_select("Select drinks?", choices)


class ScorecardController
    def index
        scorecards = Scorecard.all
        Views::Scorecard.index(scorecards)
    end

    def new
        scorecard = Scorecard.new
        Views::Scorecard.new scorecard
        
    end
end
