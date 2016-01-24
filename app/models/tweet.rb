# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  micropost  :text             not null
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :micropost, presence: true
  validates :user_id, presence: true

end
