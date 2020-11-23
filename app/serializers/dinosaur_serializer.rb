class DinosaurSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :weight, :temporal_range, :year_discovered, :picture_url, :summary, :dino_type_id
  belongs_to :dino_type

end
