class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :question, index: true, null: false
      t.string :choice_text, null: false
      t.timestamps null: false
    end
  end
end
