class CreateJitsses < ActiveRecord::Migration[7.0]
  def change
    create_table :jitsses do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
