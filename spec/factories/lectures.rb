FactoryBot.define do
  factory :lecture do
    title { 'title' }
    date { '2020-04-23' }
    subject
    teacher
  end
end
