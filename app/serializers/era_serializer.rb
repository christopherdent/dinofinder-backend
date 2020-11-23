class EraSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture_url
  has_many :dino_types

end
