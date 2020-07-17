require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
    erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate=Pirate.new(params[:pirate])

      ships=params[:pirate][:ships]
      ships.each do |ship|
        Ship.new(ship)
      end
      @all_ships= Ship.all
      erb :'pirates/show'

    end

    # code other routes/actions here

  end
end
