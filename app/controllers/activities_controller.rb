class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
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

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path, notice: 'Activity was successfully deleted.'
  end

  def edit
    @activity = Activity.find(params[:id])

  end

  def update
    @activity = Activity.find(params[:id])
    if @activity.update(activity_params)
      redirect_to activity_path, notice: 'Activity updated successfully!'
    else
      render :edit
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :description, :price, :photo)
  end
end
