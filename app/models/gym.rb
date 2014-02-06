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
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Gym < ActiveRecord::Base
  has_many :users

  def self.gyms_near(city, state)
    # construct a client instance
    client = Yelp::Client.new

    include Yelp::V2::Search::Request

  	request = Location.new(:term => "gyms", :city => "#{city}", :state => "#{state}")
  	@response = client.search(request)
  end
end
