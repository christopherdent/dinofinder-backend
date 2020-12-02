class DinoTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture_url, :era_id 
  has_many :dinosaurs
  belongs_to :era, optional: true

end
