require "tty-prompt"

PROMPT = TTY::Prompt.new

class CommandLineInterface
   attr_accessor :user_input
    @@cart = []
    @@created_concerts = []
    
    def initialize
        @user_input = "" 
    end
   
    

    def greet
       puts `clear `
       font = TTY::Font.new(:starwars)
        puts font.write ('CONCERT')
        puts font.write ('SEARCH')
        @user_input = "Return to Main Menu"
    end
    
    def main_menu_1
        puts "WELCOME, GLAD YOU ARE HERE!"
        puts "_________________________________________"
        @user_input = PROMPT.select("Would you like to:",
            ["SEARCH" ,"VIEW ALL","CREATE A CONCERT LISTING!","UPDATE/DELETE A CONCERT","Exit"])
    end


    def main_menu
        puts `clear`
        @user_input = PROMPT.select("Would you like to search for concert events by:",
            ["Artist Name", "Genre" ,"Venue" ,"City","Return to Main Menu"])
            
    end

    def main_menu_cart
        puts "_________________________________________"
        puts "WELCOME, GLAD YOU ARE HERE!"
        @user_input = PROMPT.select("Would you like to:",
            ["SEARCH" ,"VIEW ALL","VIEW CART", "Exit"])
    end

    def main_menu_checkout
        puts `clear`
        @user_input = PROMPT.select("Would you like to:",
            ["Return to Main Menu" ,"CHECK OUT", "Exit"])
    end

    def main_menu13
        @user_input = PROMPT.select("Would you like to:",
            ["Return to Main Menu" ,"CHECK OUT","CANCEL TRANSACTION", "Exit"])
    end
    

    def search_by_artist
        puts `clear`
        artist_name = PROMPT.ask('Type artist name:')
        @artist_ins = Artist.find_by(name: artist_name)
        @artist_ins.concerts.each do |concert|
            puts "Event name: #{concert.name}"
            puts "Event venue: #{concert.venue.name}"
            puts "Event date: #{concert.date}"
            puts "Event price: $#{concert.price}"
            puts "_________________________________________"
        end
            
                
     
        @user_input = PROMPT.select("Would you like to:",
            ["Purchase Ticket_","Return to Main Menu" ,"Exit"])
       
        
    end

     def search_by_genre
        puts `clear`
        genre_type = PROMPT.select("Select a Genre Type:",
            ["House","Jazz","Pop" ,"Rock","R&B","Hip-Hop"])
           
        @found_artists = Artist.where(genre: genre_type)
        @found_artists.each do |artist|
            artist.concerts.each do |concert|
                puts "_________________________________________"
                puts "Event name: #{concert.name}"
                puts "Event artist: #{concert.artist.name}"
                puts "Event venue: #{concert.venue.name}"
                puts "Event date: #{concert.date}"
                puts "Event price: $#{concert.price}"
                puts "_________________________________________"
            end
        end
        @user_input = PROMPT.select("Would you like to:",
            ["Purchase__Ticket","Return to Main Menu" ,"Exit"])

     end
            

        def search_by_venue
            puts `clear`
            venue_name = PROMPT.select("Select a Venue:",
                ["Allstate arena" ,"The Aragon" ,"The House of Blues",
                    "The Metro","The United Center","The Vic Theatre"])
                    @venue_ins = Venue.find_by(name: venue_name)
                    @venue_ins.concerts.each do |concert|
                            puts "Event name: #{concert.name}"
                            puts "Event artist: #{concert.artist.name}"
                            puts "Event venue: #{concert.venue.name}"
                            puts "Event date: #{concert.date}"
                            puts "Event price: $#{concert.price}" 
                            puts "_________________________________________"
                            end
                 @user_input = PROMPT.select("Would you like to:",
                 ["Purchase_Ticket","Return to Main Menu" ,"Exit"])
            end
            
        
        


        def search_by_city
            puts `clear`
            city_name = PROMPT.select("Select a Nearby Neighborhood:",
                ["Chicago" ,"Pilsen" ,"Rosemont",
                    "Uptown","Wrigleyville"])
                    @city_ins = Venue.find_by(city: city_name)
                    @city_ins.concerts.each do |concert|
                            puts "Event name: #{concert.name}"
                            puts "Event artist: #{concert.artist.name}"
                            puts "Event venue: #{concert.venue.name}"
                            puts "Event date: #{concert.date}"
                            puts "Event price: $#{concert.price}" 
                            puts "_________________________________________"
                            end
                 @user_input = PROMPT.select("Would you like to:",
                 ["Purchase Ticket", "Return to Main Menu" ,"Exit"])
        end 

        def purchase_ticket #works with search_by_city
                @city_ins.concerts.each do |concert|
                @user_input = PROMPT.select("Which Concert Event ticket would you like to purchase: ",
                ["#{concert.name}","NO THANKS","Return to Main Menu" ])
                  
                if @user_input = "#{concert.name}" 
                    @@cart << [concert.name, concert.price]

                    @user_input = "Return to Main Menu_"  
                    end
            
                
                end 
              
        end
                
            def purchase_ticket_1
                @venue_ins.concerts.each do |concert|
                     @user_input = PROMPT.select("Which Concert Event ticket would you like to purchase: ",
                     ["#{concert.name}","NO THANKS", "Return to Main Menu" ])
                      @user_input = "Return to Main Menu_"  
                     
                end
            end


            def purchase_ticket_2
                @artist_ins.concerts.each do |concert| #fix
                @user_input = PROMPT.select("Which Concert Event ticket would you like to purchase: ",
                ["#{concert.name}","NO THANKS","Return to Main Menu"])
                
                    if @user_input = "#{concert.name}" 
                        @@cart << [concert.name, concert.price]

                        @user_input = "Return to Main Menu_"  
                    end 
                end
            end

            def purchase_ticket_3
        
                @found_artists.each do |artist|
                    artist.concerts.each do |concert|
                    @user_input = PROMPT.select("Which Concert Event ticket would you like to purchase: ",
                    ["#{concert.name}","NO THANKS","Return to Main Menu"])
                    
                        if @user_input = "#{concert.name}" 
                            @@cart << [concert.name, concert.price]

                        end 
                        
                            @user_input = "Return to Main Menu_"  
                        
                    end    
                end    
            end





            def view_all 
                Concert.all.each do |concert|
                    puts  concert.name
                    puts "Event name: #{concert.name}"
                    puts "Event Artist: #{concert.artist_id}"
                    puts "Event date: #{concert.date}"
                    puts "_________________________________________"
                    @user_input = "Return to Main Menu"
                end

            end

            def  view_cart
                    puts `clear`
                    puts @@cart.uniq
                    puts "_________________________________________"
                    @user_input = "Return to Main Menu__"  
            end

    
        def checkout
            puts `clear`
            total = 0
            @@cart.each do |k,v|
                total += v 
            end
            puts "your total is : $#{total}"
            puts "_________________________________________"
            @user_input = "Return to Main Menu___"  
        end


       

        def cancel_trans
            puts `clear`
            @@cart.clear

            puts "Your order has been  C A N C E L E D"
            puts "Your total is : $0"
            puts "_________________________________________"
            @user_input = PROMPT.select("Would you like to:",
                ["SEARCH" ,"VIEW ALL","Exit"])
        end

        def create_a_concert
            puts `clear`
            puts "H e l l o    t h e r e !"
            @user_input_1= PROMPT.select("Please select a Venue where you would like to book:",
            ["Allstate arena" ,"The Aragon" ,"The House of Blues",
             "The Metro","The United Center","The Vic Theatre"]) 
            
            @user_input_2 = PROMPT.select("Please select an Artist you would like to book:",
                ["ACDC","Ariana Grande","Britney Spears" ,"Chance the Rapper","Drake","Derrick Carter","Jhene Aiko", "Kali Uchis","Kanye West","Katy Perry","Kendrick Lamar","Lana Del Rey","My Chemical Romance","The Weeknd"])
               @hi = Artist.find_by(name:@user_input_2) 
               @tight= Venue.find_by(name:@user_input_1)
            

            @concert_name = PROMPT.ask('What is the Name of your Concert Event:')

            @concert_price = PROMPT.ask('How much does one ticket cost:')

            @date = PROMPT.ask('What date would you like to book your Concert Event, please enter in mm/dd/yyyy format:')
            
            @new_concert = Concert.create(name: @concert_name , artist_id: @hi.id , venue_id: @tight.id, price: @concert_price, date: @date)
            
            @user_input = "go to created" 
            
        end


        def view_created_concerts
             puts `clear`
             puts "Here is a list of all the concerts you have booked:"
             puts "_________________________________________"
            @hell = Concert.all.find_by(name: @concert_name)
                puts "Event Name: #{@hell.name}"
                puts "Event Venue: #{@user_input_1}"
                puts "Event Artist: #{ @user_input_2 }"
                puts "Event Price: #{@hell.price}"
                puts "Event Date: #{@hell.date}"
                puts "_________________________________________"  

                @user_input = "created concert" #takes you to created_concerts_menu_ops
        end

         def created_concerts_menu_ops
            puts `clear`
            @user_input = PROMPT.select("Would you like to:",
                ["CREATE A CONCERT LISTING!" ,"UPDATE AN EXISTING CONCERT","DELETE THIS CONCERT","DELETE A CONCERT","Return to Main Menu","Exit"])

         end 

         def created_concerts_menu_ops_2
            puts `clear`
            @user_input = PROMPT.select("Would you like to:",
            ["CREATE A CONCERT LISTING!" ,"UPDATE AN EXISTING CONCERT","DELETE A CONCERT","Return to Main Menu","Exit"])
         end

         def delete_this_concert
            @hell.destroy
         end

         def delete_created
            puts `clear`
            Concert.all.each do |concert|
                puts  concert.name
                puts "Event ID: #{concert.id}"
                puts "Event Artist: #{concert.artist_id}"
                puts "Event date: #{concert.date}"
                puts "_________________________________________"
            
            end
            @delete_this_concert = PROMPT.ask('Please match the Concert ID for the Concert Event you wish to DELETE:')
            Concert.all.destroy(@delete_this_concert)
            @user_input = "Return to Main Menu"
         end


         def update_created_concert
            puts `clear`
            puts "Please be cautious when updating concert event information!"
            puts "_________________________________________"
            
         end

   

end

