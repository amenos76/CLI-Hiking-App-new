class Trail < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :meals

    attr_reader :name 

    def initialize
        @name = name
    end


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

    def self.trails_less_than_input_time(input_time)
        all.where('length_time <= ?', input_time) 
    end

    # def self.trail_name_and_time(trail_object)
    #     trail_object.each do |trail|
    #         "Name: #{trail.name}, Length: #{trail.length_time}"
    #     end
    # end

    def self.get_trail_info trail_name
        all.find do |trail|
            trail_name == trail.name
        end
    end

    def get_trail_info trail_name
        Trail.all.find do |trail|
            trail_name == trail.name
        end
    end

    def self.get_trail_id trail_name
       Trail.find_by(name: trail_name).id
    end
    
    def self.get_trail_by_id trail_id
        Trail.find_by(id: trail_id)
    end



end