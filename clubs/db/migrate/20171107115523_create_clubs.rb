class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :title
      t.integer :date

      t.timestamps
    end
  end
end
