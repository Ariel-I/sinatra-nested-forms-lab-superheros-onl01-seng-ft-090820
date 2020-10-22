require 'sinatra/base'
#require_relative 'app/models/hero'
#require_relative 'app/models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do 
    erb :super_hero
  end 
  
  get "/" do 
    erb :super_hero
  end 
  
  post "/teams" do 
    @teams = Team.new(params[:team])
    
    params[:team][:hero]
    
    erb :team 
  end 

end
