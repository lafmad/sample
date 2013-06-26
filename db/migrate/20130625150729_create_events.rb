class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :say
      t.boolean :is_public
      t.string :capacity
      t.string :integer

      t.timestamps
    end
  end
end
