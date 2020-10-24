class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.integer    :weight, null: false
      t.integer    :food,   null: false
      t.date       :to_day, null: false
      t.references :pet,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
