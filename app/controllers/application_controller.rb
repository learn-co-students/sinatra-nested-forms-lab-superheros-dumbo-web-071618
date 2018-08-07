require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
        status 200
        erb :super_hero
    end

    post '/team' do
        @team = params[:team]
        @members = @team[:members].map { |member| Hero.new(member) }
        status 200
        erb :team
    end

end
