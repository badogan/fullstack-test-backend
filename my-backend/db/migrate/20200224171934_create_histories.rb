class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.string :search
      t.string :path

      t.timestamps
    end
  end
end
