require "pry" 
Venue.destroy_all
Artist.destroy_all
Concert.destroy_all

the_vic = Venue.create(name:'The Vic Theatre', capacity:1500,city:'Pilsen')
allstate = Venue.create(name:'Allstate arena',capacity:10000, city:'Rosemont')
united = Venue.create(name:'The United Center', capacity:7000 , city:'Chicago')
house_of_blues = Venue.create(name:'The House of Blues',capacity:3000,city:'Chicago')
metro = Venue.create(name:'The Metro', capacity:2000 , city:'Wrigleyville')
aragon = Venue.create(name:'The Aragon',capacity:4000, city:'Uptown')

#Artist Instance Creations
britney = Artist.create(name:'Britney Spears',genre:'Pop')
kendrick = Artist.create(name:'Kendrick Lamar',genre:'Hip-Hop')
lana = Artist.create(name:'Lana Del Rey',genre:'Jazz')
katy = Artist.create(name:'Katy Perry',genre:'Pop')
chance = Artist.create(name:'Chance the Rapper',genre:'Hip-Hop')
kanye = Artist.create(name:'Kanye West', genre:'Hip-Hop')
mcr = Artist.create(name:'My Chemical Romance', genre:'Rock')
acdc = Artist.create(name:'ACDC',genre:'Rock')
ariana = Artist.create(name:'Ariana Grande',genre:'Pop')
frank = Artist.create(name:'Frank Ocean',genre:'R&B')
drake = Artist.create(name:'Drake', genre:'R&B')
derrick = Artist.create(name:'Derrick Carter', genre:'House')
jhene = Artist.create(name:'Jhene Aiko', genre:'R&B')
kali = Artist.create(name:'Kali Uchis', genre:'Pop')
weeknd = Artist.create(name:'The Weeknd', genre:'Pop')


#Concert Instance Creations
concert_one = Concert.create(name: "Endless Summer", artist: lana, venue: the_vic,price:75.00,date: "03/02/2020")
concert_two = Concert.create(name:"Homecoming Tour", artist:kanye, venue:united, price:175.00,date: "02/05/2020")
concert_three = Concert.create(name:"Oops Again Tour", artist:britney, venue:allstate, price:275.00,date: "04/25/2020")
concert_four = Concert.create(name:"Chance live", artist:chance, venue:the_vic, price:65.00,date: "03/23/2020")
concert_five = Concert.create(name:"California Dream Tour", artist:katy, venue:united, price:125.00,date: "02/07/2020")
concert_six = Concert.create(name:"Sweet Revenge Tour", artist:mcr, venue:aragon, price:105.00,date: "03/05/2020")
concert_seven = Concert.create(name:"Drake Tour", artist:drake, venue:united, price:375.00,date: "04/15/2020")
concert_eight = Concert.create(name:"Sweetner Tour", artist:ariana, venue:house_of_blues, price:475.00,date: "03/25/2020")
concert_nine = Concert.create(name:"Channel Orange Tour", artist:frank, venue:house_of_blues, price:75.00,date: "03/02/2020")
concert_ten = Concert.create(name:"ACDC Tour", artist:acdc, venue:aragon, price:175.00,date: "02/15/2020")
concert_eleven = Concert.create(name:"Sweet Revenge Tour Pt.2", artist:mcr, venue:the_vic, price:105.00,date: "03/06/2020")
concert_twelve = Concert.create(name:"Homecoming Tour Pt.2", artist:kanye, venue:allstate, price:375.00,date: "02/07/2020")
concert_thirteen = Concert.create(name:"Por Vida Tour", artist:kali, venue:metro, price:75.00,date: "03/15/2020")
concert_fourteen = Concert.create(name:"Spotless Mind Tour", artist:jhene, venue:metro, price:35.00,date: "04/07/2020")
concert_fifthteen = Concert.create(name:"Dirty House", artist:derrick, venue:metro, price:25.00,date: "02/03/2020")




