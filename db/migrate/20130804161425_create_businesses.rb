class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :email
      t.string :location
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
