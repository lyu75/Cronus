class Project < ApplicationRecord
  belongs_to :user
  has_many :decisions
  has_many :scenes
end
