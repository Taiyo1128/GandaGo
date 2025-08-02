class Like < ApplicationRecord
  belongs_to :vlog
  belongs_to :user
  validates_uniqueness_of :vlog_id, scope: :user_id
end
