# RESTful endpoints
# 1. index listviw eqiv
# 2. show id detailview eqiv
# 3. new/create creatediew equiv
# 4. edit/update id updateview equiv
# 5. destroy id deleteview equiv


class ScorecardController
    def index
        scorecards = Scorecard.all
        Views::Scorecard.index(scorecards)
    end

    def new
        scorecard = Scorecard.new
        Views::Scorecard.new scorecard
        scorecard.save
    end
end
