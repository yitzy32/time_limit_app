class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :is_present
      t.integer :store_id

      t.timestamps
    end
  end
end
