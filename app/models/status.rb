class Status < ApplicationRecord
  has_many :project_statuses
  has_many :projects, through: :project_statuses
end
