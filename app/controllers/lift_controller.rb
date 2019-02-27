class LiftController < ApplicationController

  get '/lifts' do
  if !logged_in?
    redirect to '/login'
  else
    @lifts = Lift.all
erb :'lifts/lifts'
  end
end

end
