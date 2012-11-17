class Manuscript < ActiveRecord::Base
  belongs_to :manuscript_type
  belongs_to :user
end
