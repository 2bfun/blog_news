class PersonsController < ApplicationController

	def check
	end


	def profile
		@user = current_user
	end

	def admin_page
		if current_user
			if current_user.admin
				@user = current_user
				@users = User.all
			else
				respond_to do |format|
					format.html {redirect_to root_path }
				end
			end
		else 
			respond_to do |format|
					format.html {redirect_to root_path }
			end
		end
	end

	def make_admin
		if current_user
			if current_user.admin 
				@user = User.find_by_email(params[:user][:email])
				@user.admin = true
				@user.save
			end
		end
		respond_to do |format|
			format.html { redirect_to root_path }
		end
	end
	def update
	respond_to do |format|
		@user = current_user
		@user.distribution_option = params[:user][:distribution_option]
		if @user.save
			format.html { redirect_to '/persons/profile', notice: 'Изменения успешно сохранены' }
		end
	end
	end
	def send_email
		if current_user
			@user = current_user
			UserNotifierMailer.send_signup_email(@user).deliver
			respond_to do |format|
				format.html {redirect_to '/persons/profile', notice: 'send'}
			end
		else
			respond_to do |format|
				format.html {redirect_to root_path}
			end
		end
	end
end
