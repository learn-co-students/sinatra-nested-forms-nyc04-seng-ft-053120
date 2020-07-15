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
      #binding.pry
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each {|ship_inst| Ship.new(ship_inst)}
      @ships = Ship.all
      #@ships = Ship.new(params[:pirate][:ships])

      erb :'pirates/show'
    end

    
  end
end
