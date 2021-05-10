class ChangeColumnToPasswordDigest < ActiveRecord::Migration[6.1]
  def rename
    rename_column :store, :password, :password_digest
  end
end
