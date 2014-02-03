# == Schema Information
#
# Table name: gyms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  street     :string(255)
#  city       :string(255)
#  state      :string(255)
#  zip_code   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Gym < ActiveRecord::Base
	has_many :memberships
	has_many :clients, through: :memberships
end
