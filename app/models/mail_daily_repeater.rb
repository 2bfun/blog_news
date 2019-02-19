class MailDailyRepeater
	include Delayed::RecurringJob
	run_every 1.day
	run_at '4:00am'
	queue :default
	def perform
			User.where(distribution_option: 'daily').each do |u|
				UserNotifierMailer.send_daily_email(u).deliver
			end
	end
end
