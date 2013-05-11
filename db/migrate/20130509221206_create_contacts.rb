class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :subject
      t.text :message
      t.integer :message_id

      t.timestamps
    end
  end
end
