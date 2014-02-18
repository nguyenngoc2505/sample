class User < ActiveRecord::Base
  after_create :send_create_mail

  private
   def send_create_mail
     UserMailer.create_user(self).deliver
   end
end
