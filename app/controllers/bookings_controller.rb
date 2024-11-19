class BookingsController < ApplicationController
  before_action :set_activity, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.activity = @activity

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      render :new, alert: "There was an error creating the booking."
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end
end
