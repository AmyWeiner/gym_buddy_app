class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
