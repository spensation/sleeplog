class CreateRests < ActiveRecord::Migration[5.1]
  def change
    create_table :rests do |t|
      t.string :name
      t.integer :duration
      t.belongs_to :day

      t.timestamps
    end
  end
end
