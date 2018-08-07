require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
     erb :index
    end

    get '/rosa' do
      erb :rosa
    end



    post '/teams' do
      #binding.pry
      @teams = Team.new(params[:team])
      params[:team][:members].each do |hero|
        Hero.new(hero)
      end
      @heros = Hero.all
      erb :team
    end

    # get '/super_hero'do
    #   erb :super_hero
    # end
end
