require 'pry'
class UserController < ApplicationController

  get '/signup' do

      if !logged_in?
        erb :'/users/create_user'
      else
        erb  :'/users/show'
      end
    end
    post '/signup' do
      user = User.find_by(email: params["email"])

      if !params["username"].empty? && !params["password"].empty? && !params["email"].empty? && !user
        user = User.create(username: params["username"], password: params["password"], email: params["email"])
        session[:user_id] = user.id
        erb :"/users/show"
      else
        redirect to '/signup'
      end
  end

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

      erb :'/users/show'
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
