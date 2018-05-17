class BookingsController < ApplicationController


  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path(@flat, @booking)
    else
      render :new
    end
  end


  def edit
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path(@flat, @booking)
    else
      render :edit
    end

  end

  def destroy
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path(@flat, @booking)
  end


  private
  def booking_params
    params.require(:booking).permit(:flat_id, :start_date, :end_date, :description)
  end
end
