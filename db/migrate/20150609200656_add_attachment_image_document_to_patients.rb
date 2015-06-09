class AddAttachmentImageDocumentToPatients < ActiveRecord::Migration
  def self.up
    change_table :patients do |t|
      t.attachment :image
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :patients, :image
    remove_attachment :patients, :document
  end
end
