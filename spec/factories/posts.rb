FactoryBot.define do
  factory :post do
    association :user

    title { FFaker::LoremJA.sentence }
    content { FFaker::LoremJA.paragraphs(10).join("\n") }
  end
end
