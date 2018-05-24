require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do

    erb :index
  end



  post '/checkout' do
    @session = session

    params.each do |key, value|
      @session[key] = @session[value]
      binding.pry
    end
    # @item = item
    # binding.pry
    erb :checkout
  end

end
