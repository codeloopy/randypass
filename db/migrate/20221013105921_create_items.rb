class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :website
      t.string :website_username
      t.string :website_watchword
      t.text :item_notes

      t.timestamps
    end
  end
end
