class Cli

    attr_accessor :user

    def initialize user=nil
        @user = user
        @trail_choice = ""
        @difficulty_choice = ""
        @location_choices = ""
        @dog_choice = nil
        @water_choice = nil
    end

    def prompt
        TTY::Prompt.new(symbols: {marker: '⛰'})
    end

    #welcomes user, allows user to sign up or sign in if they signed up previously
    def start
        user_input = prompt.yes?("Welcome to our hiking app! Have you been here before?")
        if (user_input)
            sign_in
        else
            sign_up
        end
        puts "Now, let's find you the perfect hike!"
    end
    
    def sign_up
        first_name = prompt.ask "What is your first name?"
        last_name = prompt.ask "What is your last name?"
        username = prompt.ask "What is your username?"
        email = prompt.ask "What is your email?"
       
        self.user = User.create(
            first_name: first_name,
            last_name: last_name,
            username: username,
            email: email,
        )
        puts "All done! Thanks!"
    end

    def sign_in
        user_input = prompt.ask "Please enter your username.."
        found_user = User.find_by(username: user_input)
        if found_user
            self.user = found_user
            puts "Welcome back #{user.first_name} #{user.last_name}!"
        else
            user_input = prompt.ask "Username does not exist. Please enter your email.."
            self.user = User.find_by_email(user_input)
        end
    end

    #display main menu
    def main_menu
        menu_options = ["Show me some hikes", "Choose a random trail for me", "Hike compatibility quiz", "See your saved hikes", "Exit Program"]
        menu_selection = prompt.select("Please choose an option:", menu_options)   

        # loop do
        #     case menu_selection
        #     when "Show me some hikes"
        #         display_each_trail_name
        #     when "Choose a random trial for me"
        #         puts "Feature not ready yet."
        #     end
        #     when "Hike compatibility quiz"
        #         puts "Feature not ready yet."
        #     end
        #     when "See your saved hikes"
        #         puts "Feature not ready yet"
        #     end
        #     when "Exit Program"
        #         puts "Goodbye!"
        #     else
        #         puts "else statement hit"
        #     end
        # end
    end
            



    #all trail names
    def trail_names
        Trail.all.map do |trail|
            trail.name
        end
    end
    
    #displays list of all trail names
    def display_each_trail_name
        puts 'Here is our list of Colorado hiking trails:'
        trail_names.each do |trail_name|
            puts trail_name
        end
    end

    #asks user preferred trail difficulty level
    def ask_difficulty
        @difficulty_choice = prompt.select("Choose your desired hike difficulty", %w(Easy Medium Hard))
        matching_trails = Trail.where(difficulty: @difficulty_choice)
        # matching_trails.each do |trail|
        #     puts "Here is a trail that matches your difficulty: #{trail.name}"
        # end
    end

    #asks user preferred hike location (can choose multiple)
    def ask_location
        choices = ["Boulder", "Glendwood Springs", "Climax", "Idaho Springs", "Cheyenne Canyon"]
        @location_choices = prompt.multi_select("Select location(s)?", choices)
        puts "Couldn't have picked better myself!"
    end

    #asks user if they'd like to bring a dog
    def ask_dog
        @dog_choice = prompt.yes?("Any doggos that you'd like to bring along?")
        if (@dog_choice)
            puts "*tail wagging intensifies*"
        else
        end
    end

    #asks user if they'd like a trail with water
    def ask_water
        @water_choice = prompt.yes?("How about some lovely water features?")
        if (@water_choice)
            puts "Splish splash"
        else
        end
    end

    def perfect_trail
        perfect_trail = Trail.where(difficulty: @difficulty_choice)
        perfect_trail = perfect_trail.where(has_water: @water_choice)
        trail_names = perfect_trail.map do |trail|
            trail.name
        end
        trail_names.each do |trail_name|
            puts "Here are your perfect trails: #{trail_name}"
        end
    end

end