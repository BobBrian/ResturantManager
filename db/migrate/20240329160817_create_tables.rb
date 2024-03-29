class CreateTables < ActiveRecord::Migration[7.1]
  def change
    create_table :tables do |t|
      t.string :tablename
      t.string :seatnumber
      t.boolean :isactive

      t.timestamps
    end
  end
end
