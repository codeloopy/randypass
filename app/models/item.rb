class Item < ApplicationRecord
  has_encrypted :item_name, :website, :website_username, :website_watchword, :item_notes
  blind_index :item_name, :website, :website_username, :website_watchword, :item_notes

  belongs_to :user

  validates :item_name, :website, :website_username, :website_watchword, :item_notes, presence: true
end
