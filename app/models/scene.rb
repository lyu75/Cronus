class Scene < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :decisions
end
