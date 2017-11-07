class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
