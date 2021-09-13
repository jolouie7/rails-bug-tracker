class UserProject < ApplicationRecord
  belongs_to :user_id
  belongs_to :project_id
end
