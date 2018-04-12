class ProjectVote < ApplicationRecord
  belongs_to :project
  belongs_to :vote
  belongs_to :user
end
