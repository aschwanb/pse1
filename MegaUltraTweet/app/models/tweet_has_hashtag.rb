class Tweet_has_Hashtag < ActiveRecord::Base
  belongs_to :tweet
  belongs_to :hashtag
end