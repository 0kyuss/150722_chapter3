namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Tsukahara",
                         email: "rei.tsukahara@gmail.com",
                         password: "aaaaaa",
                         password_confirmation: "aaaaaa",
                         admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.jp"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)

    end
  end
end
