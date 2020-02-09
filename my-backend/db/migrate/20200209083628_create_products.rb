class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :productname
      t.string :productcode
      t.boolean :productvalidity

      t.timestamps
    end
  end
end
