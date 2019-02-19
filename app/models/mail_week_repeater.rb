class MailWeekRepeater
	include Delayed::RecurringJob
	run_every 1.week
	run_at 'monday 4:00am'
	queue :default
	def perform
			User.where(distribution_option: 'weekly').each do |u|
				UserNotifierMailer.send_week_email(u).deliver
			end
	end
end
