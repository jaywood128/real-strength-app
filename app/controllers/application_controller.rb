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

  helpers do
   def logged_in?
     !!current_user
   end
   def current_user
     binding.pry
     if session[:user_id]
       @current_user = User.find_by(id:session[:user_id])
     end
   end
end

end
