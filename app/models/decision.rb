class Decision < ApplicationRecord
  belongs_to :scene
  belongs_to :next, class_name: "Scene"
end
