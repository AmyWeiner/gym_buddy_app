class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :client, index: true
      t.belongs_to :gym, index: true

      t.timestamps
    end
  end
end
