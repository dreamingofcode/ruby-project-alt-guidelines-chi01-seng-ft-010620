require_relative '../config/environment'

    cli = CommandLineInterface.new


    while cli.user_input !="Exit"
        case cli.user_input
        when ""
             cli.greet
        when "SEARCH"
            cli.main_menu     
        when "VIEW ALL"
            cli.view_all
        when "Return to Main Menu"
            cli.main_menu_1 
        when "Purchase Ticket_"
            cli.purchase_ticket_2
        when "Purchase Ticket" 
            cli.purchase_ticket
        when "Purchase__Ticket"
            cli.purchase_ticket_3
        when "Purchase_Ticket"
            cli.purchase_ticket_1
        when "Artist Name"
           cli.search_by_artist
        when "Genre"
            cli.search_by_genre
        when "Venue"
            cli.search_by_venue
        when "City"
            cli.search_by_city
        when "Return to Main Menu_"
            cli.main_menu_cart
        when "Return to Main Menu__"
            cli.main_menu_checkout
        when "VIEW CART"
            cli.view_cart
        when "CHECK OUT"
            cli.checkout
        when "Return to Main Menu___" 
            cli.main_menu13     
        when "CANCEL TRANSACTION"
            cli.cancel_trans
        when "CREATE A CONCERT LISTING!"
            cli.create_a_concert   
        when "go to created"
           cli.view_created_concerts
        when "created concert" 
            cli.created_concerts_menu_ops
        when "UPDATE AN EXISTING CONCERT"
            cli.update_created_concert
        when "DELETE A CONCERT"
            cli.delete_created
        when "DELETE THIS CONCERT"
            cli.delete_this_concert
         
        when "UPDATE/DELETE A CONCERT"
            cli.created_concerts_menu_ops_2
        end  


    end
   

