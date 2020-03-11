class CreateFootprints < ActiveRecord::Migration[5.1]
  def change
    create_table :footprints do |t|
      t.integer :visiter_id
      t.integer :visited_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
