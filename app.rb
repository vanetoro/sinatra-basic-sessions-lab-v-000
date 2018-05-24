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
    
    params.keys.each do |key|
      @session[key] = @session[value]
    end
    erb :checkout
  end

end
