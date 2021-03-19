class Dinosaur < ApplicationRecord
  belongs_to :dino_type
  validates_presence_of :name, :picture_url 
  

end
