FactoryBot.define do
  factory :todo do
    user
    task_name { Faker::Job.title }
    finished { false }
  end
end
