require './config/environment'
require 'pry'
class ApplicationController < Sinatra::Base


  configure do
  set :public_folder, 'public'
  set :views, 'app/views'
  enable :sessions
  set :session_secret, "password_security"
end

  get "/" do
    erb :welcome
  end

  get '/users' do
    binding.pry
  end

end
