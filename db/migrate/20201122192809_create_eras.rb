class CreateEras < ActiveRecord::Migration[6.0]
  def change
    create_table :eras do |t|
      t.string :name
      t.string :picture_url
      t.timestamps
    end
  end
end
