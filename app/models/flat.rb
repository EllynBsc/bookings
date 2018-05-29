class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def has_already_favorite?(current_user)
   Favorite.find_by(user_id: current_user.id, flat_id: self.id)
  end

end
