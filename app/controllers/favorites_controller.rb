class FavoritesController < ApplicationController

  def create
    @flat = Flat.find(params[:flat_id])
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.flat = @flat
    @favorite.save
    redirect_to flats_path
  end

  def destroy
    # @flat = Flat.find(params[:flat_id])
    @favorite= Favorite.find(params[:id])
    @favorite.destroy
    redirect_to  flats_path
  end


  def index
    @favorites = current_user.favorites
  end

end
