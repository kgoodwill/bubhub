class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :bu_id
      t.string :bike_id
      t.string :location_id
      t.timestamp :out_time
      t.timestamp :in_time

      t.timestamps
    end
  end
end
