FactoryBot.define do
  factory :sleep do
    start_time { Time.now - 20.minutes }
    end_time { Time.now }
    duration { 1.5 }
  end
end
