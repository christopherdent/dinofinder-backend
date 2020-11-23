class DinoType < ApplicationRecord
  has_many :dinosaurs
  belongs_to :era, optional: true


end
