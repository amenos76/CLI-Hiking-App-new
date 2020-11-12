class Cli

    attr_accessor :user

    def initialize user=nil
        @user = user
        @trail_choice = ""
        @difficulty_choice = ""
        @location_choice = ""
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
        sleep(2)
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
        puts "Saving.."
        sleep(1)
        puts "All done! Thanks!"
        sleep(1)
    end

    def sign_in
        system "clear"
        user_input = prompt.ask "Please enter your username.."
        found_user = User.find_by(username: user_input)
        if found_user
            self.user = found_user
            puts "Welcome back #{user.first_name} #{user.last_name}!"
            sleep(1)
        else
            user_input = prompt.ask "Username does not exist. Please enter your email.."
            self.user = User.find_by_email(user_input)
        end
    end

    #display main menu
    def main_menu
        system "clear"
        menu_options = ["Show me some hikes", "Choose a random trail for me", "Hike compatibility quiz", "See your saved hikes", "Exit Program"]
        menu_selection = prompt.select("Please choose an option:", menu_options)   

        # loop do
            case menu_selection
            when "Show me some hikes"
                display_each_trail_name
            when "Choose a random trail for me"
                random_trail_name = Trail.all_trail_names.sample
                puts "Here's a random trail selection: " + random_trail_name
                sleep(1)
                user_input = prompt.yes?("Would you like to find out more about this hike?")
                if (user_input)
                    system "clear"
                    puts "Here is some information about #{random_trail_name}:"
                    trail_name_to_string = random_trail_name.to_s
                    trail_info = Trail.find_by_name(trail_name_to_string)
                    ap trail_info
                    user_input2 = prompt.yes?("Would you like to save this trail to your favorites?")
                    if (user_input2)
                        puts "Saving to favorites..."
                        sleep(1)
                        puts "Returning to main menu..."
                        sleep(1)
                        main_menu
                    else
                        puts "Returning to main menu..."
                        sleep(1)
                        main_menu
                    end
                else
                    puts "Returning to main menu..."
                    sleep(1)
                    main_menu
                end
            when "Hike compatibility quiz"
                system "clear"
                puts "Let's find the perfect hike for you!"
                sleep(1)
                ask_difficulty
                ask_location
                ask_dog
                puts "Calculating your PERFECT hike..."
                sleep(1)
                puts "Your pefect hike is:"
                perfect_trail
                answer = prompt.yes?("Would you like to save this hike to your favorites?")
                    if answer
                        puts "Saving to your favorites.."
                        sleep(1)
                    else
                        puts "Let's find something else!"
                        sleep (1)
                    end
                puts "Returning to main menu..."
                sleep(1)
                main_menu
            when "See your saved hikes"
                puts "Feature not ready yet"
            when "Exit Program"
                puts "Goodbye!"
                abort
            else
                puts "else statement hit"
                abort
            end
        # end
    end

    def get_trail_info trail_name
        Trail.all.find do |trail|
            trail_name == trail.name
        end
    end
    
    #displays list of all trail names
    def display_each_trail_name
        puts 'Here is our list of Colorado hiking trails:'
        Trail.all_trail_names.each do |trail_name|
            puts trail_name
        end
    end


    #asks user preferred trail difficulty level
    def ask_difficulty
        system "clear"
        @difficulty_choice = prompt.select("Choose your desired hike difficulty", %w(Easy Medium Hard))
        matching_trails = Trail.where(difficulty: @difficulty_choice)
        puts "You chose #{@difficulty_choice}, saving to your preferences.."
        sleep(1)
        # matching_trails.each do |trail|
        #     puts "Here is a trail that matches your difficulty: #{trail.name}"
        # end
    end

    #asks user preferred hike location (can choose multiple)
    def ask_location
        system "clear"
        choices = Trail.all_trail_locations
        @location_choice = prompt.select("Select location(s)?", choices)
        puts "You selected #{@location_choice}, saving to your preferences.."
        sleep(2)
    end

    #asks user if they'd like to bring a dog
    def ask_dog
        system "clear"
        @dog_choice = prompt.yes?("Any doggos that you'd like to bring along?")
        if (@dog_choice)
            puts "*tail wagging intensifies*"
            puts "You chose yes, saving to your preferences.."
        else
            puts "Maybe next time!"
            puts "You chose no, saving to your preferences.."
        end
        sleep(1)
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
        perfect_trail = Trail.filter_by_user_preferences(@location_choice, @difficulty_choice, @dog_choice)
        ap perfect_trail
    end

end