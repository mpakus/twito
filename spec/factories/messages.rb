FactoryGirl.define do
  factory :message do
    id_str { Time.new.to_s + Faker::Code.ean }
    text { Faker::Lorem.sentence(5) }
    association :user
  end
end
