class LiftController < ApplicationController

  get '/lifts/new' do
    if logged_in?
      erb :'lifts/new'
    else
      redirect to '/login'
    end
  end

  post '/lifts/new' do
    binding.pry
  end

  get '/lifts' do
  if !logged_in?
    redirect to '/login'
  else

    @lifts = Lift.all
erb :'lifts/lifts'
  end
end

end
