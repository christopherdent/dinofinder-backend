class Dinosaur < ApplicationRecord
  belongs_to :dino_type
  validates_presence_of :name, :temporal_range, :summary, :picture_url 

end
