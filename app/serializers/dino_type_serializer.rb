class DinoTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :era_id 
  has_many :dinosaurs
  belongs_to :era, optional: true

end
