class Reaction < ApplicationRecord
  has_many :project_reactions
  has_many :projects, through: :project_reactions

  has_many :project_reactions
  has_many :users, through: :project_reactions
end
