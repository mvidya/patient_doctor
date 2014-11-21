class Patient < ActiveRecord::Base
	belongs_to :doctor
	validates :name, :phone_number, :doctor_id, presence: true
end
