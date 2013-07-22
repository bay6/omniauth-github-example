class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.datetime :date_of_birth

      t.timestamps
    end
  end
end
