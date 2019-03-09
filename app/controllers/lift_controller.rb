class LiftController < ApplicationController

  get '/lifts' do
    if !logged_in?
      redirect to '/login'
    else
      @user = current_user
      @lifts = Lift.all
      erb :'lifts/lifts'
    end
  end

  get '/lifts/new' do

    if logged_in?
      erb :'lifts/new'
    else
      redirect to '/login'
    end
  end

  post '/lifts' do
    if logged_in?
      lift = Lift.create(params)
      @user = current_user
      @user.lifts << lift
      @user.save
     redirect to "/lifts/#{lift.id}"
   else
     redirect to '/users/login'
   end

  end

  get "/lifts/:id" do
      @user = current_user
      @lift = Lift.find_by(user_id: @user.id)
  erb :'/lifts/show_lift'
end

  get "/lifts/:id/edit" do
    if logged_in?
      @user = current_user
      @lift = Lift.find_by(user_id: @user.id)
    else
      redirect to "/users/login"
    end
    erb :'/lifts/edit_lift'
  end

  patch "/lifts/:id" do
    if logged_in?
      @user = current_user
      @lift = Lift.find_by(user_id: @user.id)
      @lift.update(params[:lift])
      redirect to "/lifts/#{@lift.id}"
     end
  end

  delete "/lifts/:id" do

    @lift = Lift.find(params["id"])

    if logged_in? && @lift.user_id == current_user.id
      @lift.destroy
    else
      redirect to '/login'
    end
    redirect to '/lifts'
  end

end
