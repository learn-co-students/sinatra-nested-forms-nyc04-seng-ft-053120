require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      # renders the instruction in root.erb file
      erb :root
    end

    get '/new' do
      # renders a new form element on the page
      erb :'pirates/new'
    end

    post '/pirates' do
      # show pirate and ship info user entered

      # creating a new pirate using params[:pirate], which points to a hash with pirate attributes (name, height, weight)
      @pirate = Pirate.new(params[:pirate])

      # params[:pirate][:ships] points to an array of hashes, each contains an individual ship's details (name, type, booty); loop through this array, create a new ship from each set of details
      params[:pirate][:ships].each { |details| Ship.new(details) }

      #call all ship instances and store in instance var @ships
      @ships = Ship.all
      
      # render show.erb
      erb :'pirates/show'
    end
  end
end
