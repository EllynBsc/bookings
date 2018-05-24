class FlatsController < ApplicationController

  def index
    @flats = Flat.all
    @booking = Booking.new
  end

  def top10
    @flats = Flat.order("created_at").first(10)
    render :index
  end

  def new
    @flat = Flat.new
  end

  def show
     @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      current_user.role = 'host'
      current_user.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:user_id, :name, :address)
  end
end
