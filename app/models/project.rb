class Project < ApplicationRecord
  has_many :user_projects
  has_many :users, through: :user_projects

  has_many :project_categories
  has_many :categories, through: :project_categories

  has_many :project_votes
  has_many :votes, through: :project_votes

  has_many :project_comments
  has_many :comments, through: :project_comments

  has_many :project_reactions
  has_many :reactions, through: :project_reactions

  has_many :project_statuses
  has_many :statuses, through: :project_statuses
end
