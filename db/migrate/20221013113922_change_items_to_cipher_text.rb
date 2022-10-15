class ChangeItemsToCipherText < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :item_name_ciphertext, :text
    add_column :items, :website_ciphertext, :text
    add_column :items, :website_username_ciphertext, :text
    add_column :items, :website_watchword_ciphertext, :text
    add_column :items, :item_notes_ciphertext, :text

    add_column :items, :item_name_bidx, :string
    add_column :items, :website_bidx, :string
    add_column :items, :website_username_bidx, :string
    add_column :items, :website_watchword_bidx, :string
    add_column :items, :item_notes_bidx, :string

    remove_column :items, :item_name
    remove_column :items, :website
    remove_column :items, :website_username
    remove_column :items, :website_watchword
    remove_column :items, :item_notes
  end
end
