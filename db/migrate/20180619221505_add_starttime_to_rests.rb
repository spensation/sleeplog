class AddStarttimeToRests < ActiveRecord::Migration[5.1]
  def change
    add_column :rests, :starttime, :time
  end
end
