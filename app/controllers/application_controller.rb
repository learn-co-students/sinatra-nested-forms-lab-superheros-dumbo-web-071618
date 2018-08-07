require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do

      # @team_name = params["team"]["name"]
      # @team_motto = params["team"]["motto"]
      @team = Team.new(params["team"])
      params["team"]["members"].each do |details|
        Hero.new(details)
      end
      @heroes = Hero.all
      erb :team
      # binding.pry
    end

end
