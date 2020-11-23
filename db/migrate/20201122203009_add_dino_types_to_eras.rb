class AddDinoTypesToEras < ActiveRecord::Migration[6.0]

  def change
    add_reference :dino_types, :era, index: true, foreign_key: true

  end

end
