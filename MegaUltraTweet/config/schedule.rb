# Update crontab: "whenever --update-crontab MegaUltraTweet"
# Check crontab: "crontab -l"

# define environment
root = File.expand_path(File.dirname(File.dirname(__FILE__)))
set :environment, "development"
set :output, "%s/tmp/cron.log" % [ root ]

# Define cron jobs
every 15.minutes do
  command '/usr/bin/date'
  command '/usr/bin/echo "Running cron job for TwitterScraper"'
  runner "require '%s/lib/tasks/twitter_scraper.rb'; twitterScraper = TwitterScraper.new; twitterScraper.scrape( [\"#Technology\", \"#iWatch\", \"#Trending\"], 2, 5, 3)" % [ root ]
end
