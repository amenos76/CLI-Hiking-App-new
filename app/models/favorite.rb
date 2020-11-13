class Favorite < ActiveRecord::Base
    belongs_to :user
    belongs_to :trail

    # attr_accessor = :trail, :rating
    # attr_reader = :user
    # @@all = []

    # def initialize(user, trail, rating)
    #     @user = user
    #     @trail = trail
    #     @rating = rating
    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

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
            sleep(2.5)
            system "clear"
        end
    end


    # gets user favorite trails based off username
    def self.get_user_favorites(username)
        trail_names = []
        id = User.get_user_id(username)
        favorites = Favorite.where(user_id: id)
        favorites.each do |favorite_trail|
            puts favorite_trail.trail.name
            trail_names << favorite_trail.trail.name
        end
        sleep(1)
        trail_names
    end



end