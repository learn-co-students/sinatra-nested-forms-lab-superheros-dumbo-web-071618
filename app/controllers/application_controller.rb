require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @hero= params[:team][:member].map do |m| 
            Hero.new(m)               
        end 
       
        p params
        @team  = Team.new(name: params[:team][:name], motto: params[:team][:motto])
        erb :team
    end 

end
