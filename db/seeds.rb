# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongemaile the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = []
users << User.create(name: 'Amy', email: 'amy@gmail.com', password: "123123", password_confirmation: "123123")
users << User.create(name: 'Sophie', email: 'sophie@gmail.com', password: "234234", password_confirmation: "234234")
users << User.create(name: 'Ben', email: 'ben@gmail.com', password: "345345", password_confirmation: "345345")
users << User.create(name: 'Jon', email: 'jon@gmail.com', password: "456456", password_confirmation: "456456")
users << User.create(name: 'Naomi', email: 'naomi@aol.com', password: "567567", password_confirmation: "567567")
users << User.create(name: 'George', email: 'george@aol.com', password: "678678", password_confirmation: "678678")
users << User.create(name: 'Matt', email: 'matt@aol.com', password: "789789", password_confirmation: "789789")
users << User.create(name: 'Ron', email: 'ron@aol.com', password: "890890", password_confirmation: "890890")
users << User.create(name: 'Mike', email: 'mike@hotmail.com', password: "111aaa", password_confirmation: "111aaa")
users << User.create(name: 'Anna', email: 'anna@hotmail.com', password: "222bbb", password_confirmation: "222bbb")
users << User.create(name: 'Lorna', email: 'lorna@hotmail.com', password: "333ccc", password_confirmation: "333ccc")
users << User.create(name: 'William', email: 'william@hotmail.com', password: "444ddd", password_confirmation: "444ddd")
users << User.create(name: 'Sam', email: 'ron@me.com', password: "555www", password_confirmation: "555www")
users << User.create(name: 'Karen', email: 'karen@me.com', password: "666xxx", password_confirmation: "666xxx")
users << User.create(name: 'Jeremy', email: 'jeremy@me.com', password: "777yyy", password_confirmation: "777yyy")
users << User.create(name: 'Mitch', email: 'mitch@me.com', password: "888zzz", password_confirmation: "888zzz")

schedules = []
schedules << Schedule.create(availability: "Monday,Wednesday,Friday", user_id: users[0].id)
schedules << Schedule.create(availability: "Tuesday,Thursday,Saturday", user_id: users[1].id)
schedules << Schedule.create(availability: "Monday,Tuesday,Wednesday", user_id: users[2].id)
schedules << Schedule.create(availability: "Tuesday,Thursday,Sunday", user_id: users[3].id)
schedules << Schedule.create(availability: "Monday,Tuesday,Saturday", user_id: users[4].id)
schedules << Schedule.create(availability: "Friday,Saturday,Sunday", user_id: users[5].id)
schedules << Schedule.create(availability: "Thursday,Saturday,Sunday", user_id: users[6].id)
schedules << Schedule.create(availability: "Wednesday,Thursday,Friday", user_id: users[7].id)
schedules << Schedule.create(availability: "Tuesday,Thursday,Saturday", user_id: users[8].id)
schedules << Schedule.create(availability: "Monday,Tuesday,Wednesday", user_id: users[9].id)
schedules << Schedule.create(availability: "Tuesday,Thursday,Sunday", user_id: users[10].id)
schedules << Schedule.create(availability: "Monday,Tuesday,Saturday", user_id: users[11].id)
schedules << Schedule.create(availability: "Friday,Saturday,Sunday", user_id: users[12].id)
schedules << Schedule.create(availability: "Thursday,Saturday,Sunday", user_id: users[13].id)
schedules << Schedule.create(availability: "Wednesday,Thursday,Friday", user_id: users[14].id)
schedules << Schedule.create(availability: "Wednesday,Thursday,Friday", user_id: users[15].id)

gyms = []
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[0].id)
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[1].id)
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[2].id)
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[3].id)
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[4].id)
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[5].id)
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[6].id)
gyms << Gym.create(name: 'Powerhouse Fitness', street: '1 Broadway', city: 'Redwood City', state: 'CA', zip_code: '94062', user_id: users[7].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[8].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[9].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[10].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[11].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[12].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[13].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[14].id)
gyms << Gym.create(name: 'YMCA', street: '1 Main Street', city: 'Baltimore', state: 'MD', zip_code: '21209', user_id: users[15].id)






