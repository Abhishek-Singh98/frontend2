class CreateTrainees < ActiveRecord::Migration[6.0]
  def change
    create_table :trainees do |t|
      t.string :Name
      t.string :email
      t.string :password
      t.string :City
      t.string :Description
      t.string :Contact

      t.timestamps
    end
  end
end
