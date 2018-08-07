require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/team' do
    @team = Team.new params[:team]
    # binding.pry
    @members = []
    @team.members.each do |details|
      @members << Hero.new(details)
    end
    erb :team
  end

end
