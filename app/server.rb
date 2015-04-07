require 'sinatra/base'

class Test < Sinatra::Base

  enable :sessions
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    @name = session[:me]
    erb :index
  end

  post '/register' do
    session[:me] = params[:player_name]
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end