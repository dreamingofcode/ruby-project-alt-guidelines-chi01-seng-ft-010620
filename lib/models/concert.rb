class Concert < ActiveRecord::Base
    belongs_to :artist
    belongs_to :venue

def self.display_all_concerts_for_updates
    self.all.each do |concert|
        puts  concert.name
        puts "Event ID: #{concert.id}"
        puts "Event Price: #{concert.price}"
        puts "Event date: #{concert.date}"
        puts "________________________________"
    end

end


def self.display_all_concerts
    self.all.each do |concert|
        puts  concert.name
        puts "Event ID: #{concert.id}"
        puts "Event Artist: #{Artist.find(concert.artist_id).name}"
        puts "Event date: #{concert.date}"
        puts "_________________________________________"
    end
end
end