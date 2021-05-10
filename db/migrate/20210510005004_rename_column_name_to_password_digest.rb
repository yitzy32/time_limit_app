class RenameColumnNameToPasswordDigest < ActiveRecord::Migration[6.1]
  def change
    rename_column :stores, :password, :password_digest
  end
end
