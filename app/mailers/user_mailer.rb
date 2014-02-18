class UserMailer < ActionMailer::Base
  default from: "test.team1.project@gmail.com"

  def create_user user
   @user = user
   mail(to: @user["name"])
  end
end
