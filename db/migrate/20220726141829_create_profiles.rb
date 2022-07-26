class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :city
      t.integer :min_price
      t.integer :max_price
      t.boolean :garden
      t.boolean :pool
      t.boolean :parking
    end
  end
end
