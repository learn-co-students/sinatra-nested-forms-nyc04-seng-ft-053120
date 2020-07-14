require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ships = params[:pirate][:ships]
      erb :"pirates/show"
    end

  end
end
