require 'rails_helper'
require 'spec_helper'

describe HashtagHashtag do

  it "has a valid factory" do
    expect(FactoryGirl.create(:hashtag_hashtag)).to be_valid
  end

  it "is invalid without a hashtag_first_id" do
    expect(FactoryGirl.build(:hashtag_hashtag, hashtag_first_id: nil)).not_to be_valid
  end

  it "is invalid without a hashtag_second_id" do
    expect(FactoryGirl.build(:hashtag_hashtag, hashtag_second_id: nil)).not_to be_valid
  end



end