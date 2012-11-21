class CreateWalkers < ActiveRecord::Migration
  def change
    create_table :walkers do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
