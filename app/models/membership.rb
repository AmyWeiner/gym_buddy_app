# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  gym_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Membership < ActiveRecord::Base
  belongs_to :client
  belongs_to :gym
end
