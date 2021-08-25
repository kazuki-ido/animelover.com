FactoryBot.define do
  factory :user do
    name { FFaker::Name.first_name }
    email { FFaker::Internet.unique.free_email }

    before(:create)  do |user|
      password = '1234567890'

      user.password = password
    end
  end
end
