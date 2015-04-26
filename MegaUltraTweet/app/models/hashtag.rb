class Hashtag < ActiveRecord::Base
  has_and_belongs_to_many :tweets
  has_and_belongs_to_many :startingpoints
  has_and_belongs_to_many :authors_hashtags
  has_one :popularity, as: :popular

  # For hashtag pairs
  has_many :hashtag_pairs_first, class_name: :HashtagHashtag, foreign_key: :hashtag_first_id
  has_many :hashtag_pairs_second, class_name: :HashtagHashtag, foreign_key: :hashtag_second_id

  scope :by_hashtag, -> (hashtag) { where text: hashtag}

  def get_text
    return self.text.to_s
  end

  def get_tweets(*args)
    return self.tweets.to_a if args.size > 1 || args.size < 1
    return self.tweets.take(args[0]).to_a
  end

end
