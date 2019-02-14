class MailWeekRepeater
	include Delayed::RecurringJob
	run_every 1.week
	run_at 'monday 4:00am'
	queue :default
	def perform
	  	@users = User.all
	  	@users.each do |u|
	  		if u.distribution_option == 'weekly'
	  			UserNotifierMailer.send_week_email(u).deliver
	  		end
	  	end
	end
end
