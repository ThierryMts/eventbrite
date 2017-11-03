class EventsController < ApplicationController
  def index
  end

  def new
  	  	    @event=Event.new
  end

  def show
  	  	    @show = Show.find(params[:id])
  end

  def edit
  	@user = Event.new(user_params)
    if @event.save
      log_in @event
      redirect_to @event
    else
        render 'new'
    end
  end
   def user_params
    params.require(:event).permit(:description, :date, :place)
end
end
