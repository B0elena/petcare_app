class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string  :petname  ,null: false
      t.integer :sex_id   ,null: false
      t.string  :kind     ,null: false
      t.date    :birthday ,null: false
      t.references :user  ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
