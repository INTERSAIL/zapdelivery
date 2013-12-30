class RenameTypeToContentType < ActiveRecord::Migration
  def up
    rename_column :attachments, :type, :content_type
  end

  def down
    rename_column :attachments, :content_type, :type
  end
end
