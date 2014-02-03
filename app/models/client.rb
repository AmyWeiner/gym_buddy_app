# == Schema Information
#
# Table name: clients
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

class Client < ActiveRecord::Base
	has_many :memberships
	has_many :gyms, through: :memberships
end