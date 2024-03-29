class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :restname
      t.string :restaddress
      t.string :restemail
      t.string :restnumber

      t.timestamps
    end
  end
end
