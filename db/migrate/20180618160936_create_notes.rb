class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :content
      t.belongs_to :rest
      t.timestamps
    end
  end
end
