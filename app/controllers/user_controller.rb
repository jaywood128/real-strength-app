require 'pry'
class UserController < ApplicationController

  get '/signup' do

      if !logged_in?
        erb :'/users/create_user'
      else
        erb  :'/users/show'
      end
    end
  get '/users/:id' do 
    @user = User.find(params["id"])
  end
    post '/signup' do
    
      @user = User.create(username: params["username"], password: params["password"], email: params["email"])
      
      if @user.save
        session[:user_id] = @user.id
  
        redirect to  :"/users/#{@user.id}"
      else
        redirect to '/signup'
      end
  end

    get '/login' do

    if logged_in?
      @user = User.find_by(id: session["user_id"])
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
