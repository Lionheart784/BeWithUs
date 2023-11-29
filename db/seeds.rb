# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# user = User.create!(
#   email: 'samuel@gmail.com',
#   password: '123456',
#   first_name: 'Samuel',
#   last_name: 'Jackson',
#   introduction: 'Hi, I am Samuel. I come from America. I love travel and food!'
# )
# puts "User id #{user.id} created"

# user = User.create(email: 'jaqueline@gmail.com', password: '123456', first_name: 'Jaqueline', last_name: 'Claudie', introduction: 'Bonjour, my name is Jaqueline. I am French. I am a photographer.');
# puts "User id #{user.id} created"

# user = User.create(email: 'kimiko@gmail.com', password: '1234567', first_name: 'Kimiko', last_name: 'Mizuki', introduction: 'Konnichiwa, I am Kimiko from Japan. I am a university student currently based in London.');
# puts "User id #{user.id} created"

# user = User.create(email: 'wang@gmail.com', password: '12345678', first_name: 'Ling', last_name: 'Wang', introduction: 'Nihao, I am Ling from China. I am a software engineer working in New Zealand.');
# puts "User id #{user.id} created"
# User.create(
#   first_name:"remy",
#   last_name:"c",
#   email:"847217563@qq.com",
#   password:"123456",
#   introduction:"hello"
#   )
# e = Event.create!(title: 'Autmn with jay', description: 'hooray', location: 'shanghai', start_at: '2023-1-24',end_at:'2023-2-26', user: User.all.sample)
# puts "Event id #{e.id} created"

# e = Event.create!(title: 'play game with family', description: ' animal crossing players welcome', location: 'wuhan', start_at:'2024-8-9', end_at: '2024-2-1', user: User.all.sample)
# puts "Event id #{e.id} created"

# e = Event.create!(title: 'last thing is eat candy', description: 'prepare all things sweet', location: 'iceland', start_at: '2024-10-1', end_at:'2023-1-31', user: User.all.sample)
# puts "Event id #{e.id} created"
event = Event.all.sample
user = User.where.not(id: event.user_id).sample

n=Booking.create(
  user: user,
  event: event,
  confirmed: true
)
puts "booking id #{n.id} created"
# Booking.create(user: User.all.sample,event:Event.all.sample,confirmed:false)
# Booking.create(user: User.all.sample,event:Event.all.sample,confirmed:true)
# Booking.create(user: User.all.sample,event:Event.all.sample,confirmed:false)
# Booking.create(user: User.all.sample,event:Event.all.sample,confirmed:true)
# Booking.create(user: User.all.sample,event:Event.all.sample,confirmed:false)

user = User.create!(
  email: 'samuel@gmail.com',
  password: '123456',
  first_name: 'Samuel',
  last_name: 'Jackson',
  introduction: 'Hi, I am Samuel. I come from America. I love travel and food!'
)
puts "User id #{user.id} created"

user = User.create(email: 'jaqueline@gmail.com', password: '123456', first_name: 'Jaqueline', last_name: 'Claudie', introduction: 'Bonjour, my name is Jaqueline. I am French. I am a photographer.');
puts "User id #{user.id} created"

user = User.create(email: 'kimiko@gmail.com', password: '1234567', first_name: 'Kimiko', last_name: 'Mizuki', introduction: 'Konnichiwa, I am Kimiko from Japan. I am a university student currently based in London.');
puts "User id #{user.id} created"

user = User.create(email: 'wang@gmail.com', password: '12345678', first_name: 'Ling', last_name: 'Wang', introduction: 'Nihao, I am Ling from China. I am a software engineer working in New Zealand.');
puts "User id #{user.id} created"

e = Event.create!(title: 'A cozy Christmas with Family Keen', description: 'Join us and enjoy an authentic Canadian Christmas party with family and friends.', location: 'Vancouver, BC', start_at: '2023-12-24',end_at:'2023-12-26', user: User.all.sample)
puts "Event id #{e.id} created"

e = Event.create!(title: 'Traditional Chinese Spring Festival with Harbin local family', description: 'Celebrating Lunar New Year of Dragon with a real "Dongbei" family in Heilongjiang.', location: 'Harbin, China', start_at:'2024-2-9', end_at: '2024-2-12', user: User.all.sample)
puts "Event id #{e.id} created"

e = Event.create!(title: 'An Exciting Halloween with Vampire Family!', description: 'Join us and enjoy a grand exciting Halloween party.', location: 'San Diego', start_at: '2024-10-31', end_at:'2023-10-31', user: User.all.sample)

puts "Event id #{e.id} created"
