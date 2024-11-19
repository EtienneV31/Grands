class Booking < ApplicationRecord
  enum status: { pending: 0, confirmed: 1, canceled: 2 }

  belongs_to :user
  belongs_to :activity
end
