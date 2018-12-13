require 'sinatra'
require 'sinatra/reloader'
require './cake'
require './muffin'
require './cookie'



register Sinatra::Reloader

#define cookies in an array 

@@cookies = [
    Cookie.new("Kitsilano Cookies", 4.50, "/images/Kit.jpg", "These cookies are amazing and worth every nickle you spend on them!"),
    Cookie.new("PBnJ Cookies", 6.50, "/images/pbnj.jpg", "These cookies are amazing and worth every nickle you spend on them!"),
    Cookie.new("Pub Cookies", 5.50, "/images/bar.jpg", "These cookies are amazing and worth every nickle you spend on them!")
]

@@muffins = [
    Muffin.new("Berrylicious Muffins", 9.50, "/images/blue.jpg", "These muffins are amazing and worth every nickle you spend on them!"),
    Muffin.new("Honey Muffins", 8.50, "/images/honey.jpg",  "These muffins are amazing and worth every nickle you spend on them!"),
    Muffin.new("Morning Glory Muffins", 20.20, "/images/glory.jpg", "These muffins are amazing and worth every nickle you spend on them!")

]

@@cakes = [
    Cake.new("Carrot Cake", 91.50, "/images/carrot.jpg", "These cakes are amazing and worth every nickle you spend on them!"),
    Cake.new("Battenberg Cake", 81.50, "/images/batten.jpg", "These cakes are amazing and worth every nickle you spend on them!"),
    Cake.new("Chocolate Cake", 70.20, "/images/choco.jpg", "These cakes are amazing and worth every nickle you spend on them!")

]

get '/' do 
    erb :homepage, :layout => :home
end 

get '/cookies' do 
    erb :cookies, :layout => :home
end 

get '/cakes' do 
    erb :cakes, :layout => :home
end 

get '/muffins' do 
    erb :muffins, :layout => :home
end 

