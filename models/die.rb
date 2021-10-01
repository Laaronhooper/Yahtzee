class Die
    attr_reader :roll, :current_roll, :current_rolls
    def initialize
        @roll
        @rolls
        @current_rolls = [] 
    end
    def roll
        @rolls = rand(6) + 1
    end

    def rolls
        @rolls = 5.times.map{rand(6) + 1}
        current_rolls << @rolls
        @current_rolls = current_rolls.flatten
    end
    def reroll
        i = @current_rolls.length
        while i < 5
            current_rolls << self.roll
            i += 1
        end 
        @current_rolls = current_rolls.flatten
    end
    def drop(input)
        while true
            if input.between?(0,5)
                @current_rolls.delete_at(input)
                break
            end
        end
        @current_rolls
    end
    def drop_all
        @current_rolls = current_rolls.clear
    end
end