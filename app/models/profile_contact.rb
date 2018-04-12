class ProfileContact < ApplicationRecord
  belongs_to :profile
  belongs_to :contact
end
