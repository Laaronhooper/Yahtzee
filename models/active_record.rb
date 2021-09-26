require 'yaml'

class ActiveRecord
    attr_reader :id
    
    def self.db
        @db ||=  (YAML.load(File.read("yahtzee.yml")) rescue [])
    end
    def self.save(record)
        new_id = self.db.length + 1
        yield new_id
        self.db << record
        File.open('yahtzee.yml', 'w') {|file| file.write(self.db.to_yaml)}
    end
    def save
        self.class.save(self) do |id| 
        @id = id
        end
        self
    end    
end