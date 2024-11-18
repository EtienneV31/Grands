class EldersController < ApplicationController

  def index
    @elders = Elder.all
  end

  def new
    @elder = Elder.new
  end

  def create
    @elder = Elder.new(elder_params)
    @elder.user = current_user
    if @elder.save
      redirect_to elders_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def elder_params
    params.require(:elder).permit(:name, :description, :price, :available, :user_id)
  end
end
