class Favorite < ActiveRecord::Base
    belongs_to :user
    belongs_to :trail


    def self.create_new_favorite(trail_id, user_id)
        returned_favorite = Favorite.find_by(trail_id: trail_id, user_id: user_id)
        if returned_favorite.nil?
            # binding.pry
            Favorite.create(trail_id: trail_id, user_id: user_id)
            puts "Great choice!"
            sleep(1.25)
            puts "Your trail has been saved!"
            # binding.pry
            sleep(1.25)
            system "clear"
        else
            system "clear"
            puts "You already have this trail saved!"
            sleep(0.5)
            puts "Returning to main menu"
            sleep(2.5)
            system "clear"
        end
    end


    # gets user favorite trails based off username
    def self.get_user_favorites(user_name)
        trail_names = []
        id = User.get_user_id(user_name)
        favorites = Favorite.where(user_id: id)
        favorites.each do |favorite_trail|
            puts favorite_trail.trail.name
            trail_names << favorite_trail.trail.name
        end
        sleep(1)
        trail_names
    end

    # removes trail from favorites
    def self.delete_user_favorite(user_name)
        prompt = TTY::Prompt.new
        user_favorites = get_user_favorites(user_name)
        user_id = User.get_user_id(user_name)
        system "clear"
        user_trail_selection = prompt.select("Which trail would you like to remove?", user_favorites)
        # binding.pry
        trail_id = Trail.find_by(name: user_trail_selection).id
        Favorite.find_by(trail_id: trail_id, user_id: user_id).destroy
    end



end