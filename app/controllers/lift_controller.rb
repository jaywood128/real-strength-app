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
    lift = Lift.create(params)
    @user = current_user
    @user.lifts << lift
    @user.save

     redirect to "/lifts/#{lift.id}"
  end

    get "/lifts/:id" do
      @user = current_user
   @lift = Lift.find(params[:id])
   redirect to :'/lifts/show_lift'
  end

end
