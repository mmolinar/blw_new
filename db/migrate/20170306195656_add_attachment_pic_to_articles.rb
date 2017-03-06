class AddAttachmentPicToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :articles, :pic
  end
end
