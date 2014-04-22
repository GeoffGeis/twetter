class Retwet < ActiveRecord::Base
  belongs_to(:twet)
  belongs_to(:user)
end
