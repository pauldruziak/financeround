class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.datetime :date
      t.integer :sum

      t.timestamps
    end
  end
end
