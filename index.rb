require 'sinatra'
require 'sinatra/reloader'
require './cake'
require './muffin'
require './cookie'



register Sinatra::Reloader

#define cookies in an array 

@@cookies = [
    Cookie.new("Kitsilano Cookies", 4.50, "kit.jpg"),
    Cookie.new("PBnJ Cookies", 6.50, "pbnj.jpg"),
    Cookie.new("Pub Cookies", 5.50, "bar.jpg")
]

@@muffins = [
    Muffin.new("Berrylicious Muffins", 9.50, "blue.jpg"),
    Muffin.new("Honey Muffins", 8.50, "honey.jpg"),
    Muffin.new("Morning Glory Muffins", 20.20, "glory.jpg")

]

@@cakes = [
    Cake.new("Carrot Cake", 91.50, "carrot.jpg"),
    Cake.new("Battenberg Cake", 81.50, "batten.jpg"),
    Cake.new("Chocolate Cake", 70.20, "choco.jpg")

]

get '/' do 
    erb :homepage, :layout => :home
end 




