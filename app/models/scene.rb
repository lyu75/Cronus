class Scene < ApplicationRecord
  belongs_to :project
  has_many :decisions, dependent: :destroy
end
