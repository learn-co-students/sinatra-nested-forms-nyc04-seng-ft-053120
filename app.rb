require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      ships_arr = params[:pirate][:ships]
      ships_arr.each do |ship_detail|
        Ship.new(ship_detail)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
