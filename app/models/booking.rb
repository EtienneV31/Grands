class Booking < ApplicationRecord
  enum status: { pending: 0, confirmed: 1, canceled: 2 }

  belongs_to :user
  belongs_to :activity

  def total_price
    activity.price * duration_in_days
  end

  def duration_in_days
    (end_time.to_date - start_time.to_date).to_i + 1
  end
end
