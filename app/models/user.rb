class User < ActiveRecord::Base

    def self.find_by_email email
        user = find_by email: email
        if user
            puts "Welcome back #{user.first_name} #{user.last_name}!"
            user
        else
            puts "Couldn't find user by email."
        end
    end

end
