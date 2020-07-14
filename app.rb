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
      # binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each { |ship| 
        Ship.new(ship)
      }

      @ship = Ship.all
      # binding.pry
      erb :'pirates/show'
    end

  end
end
