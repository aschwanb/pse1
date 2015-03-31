class Startingpoint < ActiveRecord::Base
  has_and_belongs_to_many :hashtags

  # Search terms that are used for scraping twitter
  # Output as Array of Strings
  def get_start
    out = []
    self.hashtags.to_a.each { |t| out.push(t.get_text) }
    return out
  end

end
