class DashboardController < ApplicationController

  def show
    @bookings = current_user.bookings
    @flats = current_user.flats
  end
end
