
class User < ApplicationRecord
  
  after_create :user_to_zapier
  
  def user_to_zapier
    Zapier::User.new(self).post_to_zapier
  end
end
