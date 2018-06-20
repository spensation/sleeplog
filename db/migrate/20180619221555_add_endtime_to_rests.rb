class AddEndtimeToRests < ActiveRecord::Migration[5.1]
  def change
    add_column :rests, :endtime, :time
  end
end
