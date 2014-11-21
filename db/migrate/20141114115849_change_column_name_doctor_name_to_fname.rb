class ChangeColumnNameDoctorNameToFname < ActiveRecord::Migration
  def change
  	rename_column :doctors, :name, :doctorname
  	add_column :doctors, :gender, :string
  	add_column :doctors, :email, :string
  	add_column :doctors, :specialization, :string
  	add_column :doctors, :ph_number, :integer
  	add_column :doctors, :experience, :integer
  	add_column :patients, :address, :string
  	add_column :patients, :reasons, :string
  end
end
