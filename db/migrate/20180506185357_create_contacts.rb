class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :suite
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
