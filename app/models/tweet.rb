class Tweet < ActiveRecord::Base
  has_one :user

  validates :micropost, presence: true
  validates :user_id, presence: true

end
