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
    # item_hash =
    params.each do |key|
      binding.pry
      @session[key] = @session[value]
    end
    binding.pry
    erb :checkout
  end

end
