# == Schema Information
#
# Table name: schedules
#
#  id           :integer          not null, primary key
#  availability :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Schedule < ActiveRecord::Base
end
