class ManuscriptType < ActiveRecord::Base
  has_many :manuscripts
  belongs_to :user
end
