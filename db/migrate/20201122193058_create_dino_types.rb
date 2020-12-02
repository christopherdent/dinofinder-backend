class CreateDinoTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :dino_types do |t|
      t.string :name
      t.string :picture_url
      t.timestamps
    end
  end
end
