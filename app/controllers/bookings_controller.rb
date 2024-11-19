class BookingsController < ApplicationController

  def new
    set_elder
    @booking = Booking.new
  end

  def create
    set_elder
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.elder = @elder
    @booking.total_price = 0

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking was successfully created.'
    else
      render :new, alert: "There was an error creating the booking."
    end

  def show
    @booking = Booking.find(params[:id])
  end

end


  private
  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

  def set_elder
    @elder = Elder.find(params[:elder_id])
  end
end
