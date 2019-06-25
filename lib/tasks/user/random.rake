namespace :user do
  desc "Create random user"

  task random: :environment do
    User.create email: FFaker::Internet.email, name: FFaker::Name.name, age: rand(20..50)
  end
end
