class ComplexBuilding < ApplicationRecord
  belongs_to :manager
  mount_uploader :avatar, AvatarUploader
  serialize :avatars, JSON
end
