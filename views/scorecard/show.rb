require "tty-table"

module Views
    module Scorecard
        def self.show(scorecard)
            # if scorecard.nil? Need a spacers?

            headers = %w[Atrribute Value]
            attrs = attribute_rows_for recipe
            table = TTY::Table.new headers, attrs
            puts table.render :ascii
        end

        def self.attribute_rows_for(recipe)
            rows = []
            rows << ['Id', recipe.id]
            rows << ['Name', recipe.name]
            rows << ['Difficulty', recipe.difficulty]
        end
    end
end
puts table = TTY::Table.new(["header1","header2"], [["a1", "a2"], ["b1", "b2"]])