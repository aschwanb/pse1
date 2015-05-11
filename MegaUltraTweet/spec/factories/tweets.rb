FactoryGirl.define do
  factory :tweet do |f|
    f.id {Faker::Number.number(3)}
    f.text {Faker::Lorem.sentence(word_count=30)}
    f.retweets {Faker::Number.number(4)}
    f.twitter_id {Faker::Number.number(8)}
    f.author_id {Faker::Number.number(4)}
    f.created_at DateTime.new(2001,1,2)
    f.updated_at DateTime.new(2001,1,2)
  end
end