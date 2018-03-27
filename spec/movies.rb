FactoryGirl.define do
  factory :movie do
    full_title    { Faker::Title.title}
    description         { Faker::Description.description }
  end
end