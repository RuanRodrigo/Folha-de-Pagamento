class AddAddressComplement < ActiveRecord::Migration
  def up
    change_table :branches do |t|
      t.string :address_complement
    end
  end

  def down
    remove_column :branches, :address_complement
  end
end
