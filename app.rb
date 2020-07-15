require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      all_ships = params[:pirate][:ships]
      all_ships.each do |ship_instance|
        Ship.new(ship_instance)
      end
      @ships = Ship.all
      
      erb :'pirates/show'
    end
  end
end

 
