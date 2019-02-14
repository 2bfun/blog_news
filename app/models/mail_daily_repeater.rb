class MailDailyRepeater
	include Delayed::RecurringJob
	run_every 1.day
	run_at '4:00am'
	queue :default
	def perform
	  	@users = User.all
	  	@users.each do |u|
	  		if u.distribution_option == 'daily'
	  			UserNotifierMailer.send_daily_email(u).deliver
	  		end
	  	end
	end
end
