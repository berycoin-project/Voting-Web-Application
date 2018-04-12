class ProfileAddress < ApplicationRecord
  belongs_to :profile
  belongs_to :address
end
