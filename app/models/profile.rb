class Profile < ApplicationRecord

  has_many :profile_addresses
  has_many :addresses, through: :profile_addresses

  has_many :profile_contacts
  has_many :contacts, through: :profile_contacts

  has_many :user_profiles
  has_many :users, through: :user_profiles

end
