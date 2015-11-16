class AddAttachmentProfileToMinisters < ActiveRecord::Migration
  def self.up
    change_table :ministers do |t|
      t.attachment :profile
    end
  end

  def self.down
    remove_attachment :ministers, :profile
  end
end
