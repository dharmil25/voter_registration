class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :f_name
      t.string :l_name
      t.string :gender
      t.integer :age
      t.text :address
      t.integer :pincode
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
