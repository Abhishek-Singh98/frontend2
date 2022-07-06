class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :Name
      t.string :email
      t.string :password
      t.string :City
      t.string :Fees
      t.string :owner_name

      t.timestamps
    end
  end
end
