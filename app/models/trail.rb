class Trail < ActiveRecord::Base


    # array of all trail names
    def self.all_trail_names
        all.pluck(:name)
    end

    # searches trail names and returns that trail's entire object
    def self.find_by_name(input_name)
        all.find_by(name: input_name)
    end

    # array of all trail locations (unique)
    def self.all_trail_locations
        all_locations = all.pluck(:location)
        all_locations.uniq
    end

    def self.filter_by_location(input_location)
        all.where(location: input_location)
    end
    
    def self.filter_by_user_preferences(input_location, input_difficulty, input_has_pet)
        all.where(location: input_location, difficulty: input_difficulty, pets_allowed: input_has_pet)
    end

end