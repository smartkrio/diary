class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :event_description
      t.references :user
      t.timestamps null: false
    end
  end
end
