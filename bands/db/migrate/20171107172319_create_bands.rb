class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
