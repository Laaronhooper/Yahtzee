module Views
    module Scorecard
        def self.new(scorecard)
            # What happens if scorecard.nil? Need a guard?

            headers = %w[Atrribute Value]
            attrs = attribute_rows_for scorecard
            table = TTY::Table.new headers, attrs
            puts table.render :ascii
        end

        def self.attribute_rows_for(scorecard)
            rows = []
            rows << ['Id', scorecard.id]
            rows << ['Name', scorecard.name]
            rows << ['Difficulty', scorecard.difficulty]
        end
    end