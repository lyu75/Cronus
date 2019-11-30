class Decision < ApplicationRecord
  belongs_to :previous, class_name: "Scene"
  belongs_to :next, class_name: "Scene"
end
