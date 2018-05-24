class DashboardController < ApplicationController

  # def show
  #   @bookings = current_user.bookings
  #   @flats = current_user.flats
  # end

  def my_trips
    @bookings = current_user.bookings
  end

  def my_flats
    @flats = current_user.flats
  end

# add two seperate views (my_trips.html.erb / my_flats.html.erb)
end
