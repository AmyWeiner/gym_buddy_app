# == Schema Information
#
# Table name: schedules
#
#  id           :integer          not null, primary key
#  availability :text
#  user_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Schedule < ActiveRecord::Base
  belongs_to :user
end
