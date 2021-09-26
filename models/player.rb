require './models/active_record.rb'
class Player < ActiveRecord
    attr_accessor :name
    def initialize(name: '')
        @name = name
        @valid = false
    end
    def name=(name)
        @name = name
        @valid = !(@name.nil? || @name.empty?)
    end 
end
