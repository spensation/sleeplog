class CreateRests < ActiveRecord::Migration[5.1]
  def change
    create_table :rests do |t|
      t.string :name
      t.int :duration

      t.timestamps
    end
  end
end
