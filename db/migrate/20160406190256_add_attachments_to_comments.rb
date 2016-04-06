class AddAttachmentsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :attachments, :json
  end
end
