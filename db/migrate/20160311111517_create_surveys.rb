class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.references :creator, index: true, null: false
      t.timestamps null: false
    end
  end
end
