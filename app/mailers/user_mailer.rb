class UserMailer < ApplicationMailer
	default from: 'welcome@blog-news.com'

	def welcome_email(user)
		@user = user
		@url  = 'my-blog-news-test.herokuapp.com'
    	mail( :to => @user.email,
    	:subject => 'Thanks for signing up for our amazing app' )
		
	end
end
