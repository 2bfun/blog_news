class MailingJob < ApplicationJob
  queue_as :default


  def perform(*args)
  	@users = User.all
  	@users.each do |u|
  		UserNotifierMailer.send_signup_email(u).deliver
  	end
	puts 'Mail has been sent'
	puts 'Send time:'
  	puts Time.now
    # Do something later
  end
end
