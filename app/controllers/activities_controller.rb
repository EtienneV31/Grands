class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {activity: activity})
      }
    end
  end


  def new
    @activity = Activity.new
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user

    if @activity.save
      redirect_to activities_path, notice: 'Activity was successfully created.'
    else
      render :new, alert: "There was an error creating the booking."
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :price, :photo, :address)
  end
end
