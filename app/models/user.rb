class User < ActiveRecord::Base
    has_many :favorites
    has_many :trails, through: :favorites


    def self.find_by_email email
        user = find_by email: email
        if user
            puts "Welcome back #{user.first_name} #{user.last_name}!"
            user
        else
            puts "Couldn't find user by email."
        end
    end

     # Returns array of user names 
     def self.get_user_names
        all.pluck(:username)
    end

    # user_name must be string
    def self.get_user_id(user_name)
        User.find_by(username: user_name).id
    end

    # returns user object
    def self.get_user_object(user_name)
        User.find_by(username: user_name)
    end


end
