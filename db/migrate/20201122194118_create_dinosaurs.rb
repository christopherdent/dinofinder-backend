class CreateDinosaurs < ActiveRecord::Migration[6.0]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.integer :size
      t.integer :weight
      t.string :temporal_range
      t.integer :year_discovered
      t.string :picture_url
      t.string :summary

      t.timestamps
    end
  end
end
