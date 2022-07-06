class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :Description
      

      t.timestamps
      t.belongs_to :trainee 
    end
  end
end
