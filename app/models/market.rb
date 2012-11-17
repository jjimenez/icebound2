class Market < ActiveRecord::Base
  belongs_to :market_type
  belongs_to :user
end
