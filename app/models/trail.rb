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
    
    def self.filter_by_user_preferences(location_choice, difficulty_choice, pet_choice, water_choice)
        all.where(location: location_choice, difficulty: difficulty_choice, pets_allowed: pet_choice, has_water: water_choice)
    end

end