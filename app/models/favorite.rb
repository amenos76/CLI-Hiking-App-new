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
        returned_favorite = Trail.find_by(trail_id: trail_id, user_id: user_id)
        if returned_favorite.nil?
            Favorite.create(trail_id: trail_id, user_id: user_id)
            puts "~~~AWESOME-SAUCE~~~"
            sleep(1.25)
            puts "Your trail has been saved!!!"
            sleep(1.25)
            system "clear"
        else
            system "clear"
            puts "You already have this trail saved!"
            sleep(2.5)
            system "clear"
        end
    end



end