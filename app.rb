require './environment'

module FormsLab
  class App < Sinatra::Base
    # define your routes here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :form
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ships = params[:ship]
      erb :display 
    end
  end
end