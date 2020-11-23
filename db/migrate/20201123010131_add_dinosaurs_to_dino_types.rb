class AddDinosaursToDinoTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :dinosaurs, :dino_type, index: true, foreign_key: true
  end
end
