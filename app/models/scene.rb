class Scene < ApplicationRecord
  belongs_to :project
  has_many :decisions
end
