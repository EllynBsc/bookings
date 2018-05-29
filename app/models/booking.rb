class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  def decline!
    self.status = "declined"
    self.save
  end

    def accept!
    self.status = "accept"
    self.save
  end
end
