namespace :user do
  desc "Create random user"

  task random: :environment do
    puts "RUNNING: Create random user"
    user = User.create email: FFaker::Internet.email, name: FFaker::Name.name, age: rand(20..50)
    puts "CREATED: #{user.inspect}"
  end
end
