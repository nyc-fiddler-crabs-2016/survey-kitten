class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.references :survey, index: true, null: false
      t.references :choice, index: true, null: false
      t.references :question, index: true, null: false
      t.references :taker, index: true, null: false


      t.timestamps null: false
    end
  end
end
