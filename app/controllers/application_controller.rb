require 'sinatra/base'
#require_relative 'app/models/hero'
#require_relative 'app/models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    erb :super_hero
  end 
  
  post "/teams" do 
   @team = Team.new(params[:team])
   
   params[:team][:members].each do |member_params|
     Hero.new(member_params)
   end 
   
   @heroes = Hero.all 
    
    erb :team 
  end 

end
