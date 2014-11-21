class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.string :name
    	t.integer :phone_number
    	t.integer :doctor_id
      t.timestamps
    end
  end
end
