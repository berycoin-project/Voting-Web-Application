class ProjectComment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :comment
end
