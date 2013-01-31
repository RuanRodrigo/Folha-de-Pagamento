class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :address
      t.integer :street_number
      t.string :district
      t.integer :city_id
      t.integer :phone_number
      t.integer :postal_code

      t.timestamps
    end
    add_index :branches, [:name]
  end
end
