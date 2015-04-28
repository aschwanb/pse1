# Update crontab: "whenever --update-crontab MegaUltraTweet"
# Check crontab: "crontab -l"

# define environment
root = File.expand_path(File.dirname(File.dirname(__FILE__)))
set :environment, "development"
set :output, "%s/tmp/cron.log" % [ root ]


# Define cron jobs

# TODO: Read from config file
# every MegaUltraTweet::Application::INTERVAL_SHORT_TIME do
every 15.minutes do
  command '/usr/bin/date'
  command '/usr/bin/echo "Cron job for TwitterScraper: Short Rollover"'
  runner 's = Startingpoint.first; r = DBRollover.new; r.short_rollover'
end

# TODO: Read from config file
# every MegaUltraTweet::Application::INTERVAL_LONG_TIME do
every 2.days do
  command '/usr/bin/date'
  command '/usr/bin/echo "Cron job for TwitterScraper: Long Rollover"'
  runner 's = Startingpoint.first; r = DBRollover.new; r.long_rollover'
end
