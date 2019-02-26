require 'pry'
class UserController < ApplicationController

    get '/login' do

    if logged_in?
      erb :'/users/show'
    else
      erb :'/users/login'
    end
  end
    post '/login' do

      @user = User.find_by({username: params["username"]})
    if @user && @user.authenticate(params["password"])
      session[:user_id] = @user.id
      redirect to '/show'
    else
      redirect to '/login'
    end
  end
    get '/logout' do
      if logged_in?
        session.clear
        redirect to '/login'
      else
        redirect '/login'
      end
    end
end
