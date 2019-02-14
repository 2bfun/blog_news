class UserNotifierMailer < ActionMailer::Base
  default :from => 'any_from_address@example.com'

  def send_signup_email(user)
    @user = user
    mail( :to => @user.email, :subject => 'Спасибо за регистрацию на BlogNews' )
  end
  def send_week_email(user)
    @user = user
    @news = News.order(date: :desc).first(7)
    mail( :to => @user.email, :subject => 'Еженедельный новостной дайджест от BlogNews')
  end
  def send_daily_email(user)
    @user = user
    @news = News.order(date: :desc).first(7)
    mail( :to => @user.email, :subject => 'Ежедневный новостной дайджест от BlogNews')
  end
end