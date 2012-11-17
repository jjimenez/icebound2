class MarketType < ActiveRecord::Base
  has_many :markets
  belongs_to :user
end
