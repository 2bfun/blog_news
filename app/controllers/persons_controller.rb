class PersonsController < ApplicationController
  def profile
  	@user = current_user
  end

	def update
  	@users = User.all
    respond_to do |format|
    	@temp = current_user.attributes

    	@temp[:distribution_option] = params[:user][:distribution_option]
    	@temp[:name] = params[:user][:name]
  		if @users.update(@temp)
        	format.html { redirect_to '/persons/profile', notice: 'Изменения успешно сохранены' }
  		end
  	end
	end
	def send_email
		# using SendGrid's Ruby Library
		# https://github.com/sendgrid/sendgrid-ruby
		@user = current_user
 		UserNotifierMailer.send_signup_email(@user).deliver
		# puts 'from'
		# from = Email.new(email: 'test@example.com')
		# puts 'to'
		# to = Email.new(email: 'tobefunwork@gmail.com')
		# puts 'subjet'
		# subject = 'Привет! ты чё там'
		# puts 'content'
		# content = Content.new(type: 'text/plain', value: 'сука )))))')
		# puts 'mail'
		# mail = Mail.new(from, subject, to, content)

		# puts 'sg'
		# sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
		# puts 'response'
		# response = sg.client.mail._('send').post(request_body: mail.to_json)
		# puts response.status_code
		# puts response.body
		# puts response.headers
		# @user = current_user
    respond_to do |format|
      format.html {redirect_to '/persons/profile', notice: 'send'}

  	end
	end
end
