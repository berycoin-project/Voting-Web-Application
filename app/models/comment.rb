class Comment < ApplicationRecord
  has_many :project_comments
  has_many :projects, through: :project_comments

  has_many :project_comments
  has_many :users, through: :project_comments
end
