class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :password
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
