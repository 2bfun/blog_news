namespace :recurring do
  task init: :environment do
    MailWeekRepeater.schedule!
    MailDailyRepeater.schedule!

  end
end