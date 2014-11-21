class Doctor < ActiveRecord::Base
	has_many :patients
	validates :doctorname, presence: true, uniqueness: true
end
