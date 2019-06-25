require File.expand_path(File.dirname(__FILE__) + "/environment")

set :output, "log/cron.log"
set :environment, Rails.env

every 1.minute do
  rake "user:random"
end
