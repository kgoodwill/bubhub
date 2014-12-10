class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :bike_id
      t.string :location_id

      t.timestamps
    end
  end
end
