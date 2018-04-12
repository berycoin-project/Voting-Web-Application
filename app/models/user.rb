class User < ApplicationRecord

  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :user_wallets
  has_many :wallets, through: :user_wallets

  has_many :user_ranks
  has_many :ranks, through: :user_ranks

  has_many :user_roles
  has_many :roles, through: :user_roles

  has_many :user_projects
  has_many :projects, through: :user_projects

  has_many :project_votes
  has_many :votes, through: :project_votes

  has_many :project_comments
  has_many :comments, through: :project_comments

  has_many :project_reactions
  has_many :reactions, through: :project_reactions

  has_many :user_profiles
  has_many :profiles, through: :user_profiles

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
