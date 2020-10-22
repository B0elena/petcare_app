class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string  :petname  ,null: false
      t.integer :sex_id   ,null: false
      t.string  :type     ,null: false
      t.date    :birthday ,null: false
      t.timestamps
    end
  end
end
