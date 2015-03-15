FactoryGirl.define do
  factory :message do
    id_str Faker::Code.ean << Time.new.to_s
    text "My twitter message"
    association :user
  end
end
