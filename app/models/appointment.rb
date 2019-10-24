class Appointment < ApplicationRecord
    has_many :cities
    has_many :patients
	has_many :doctors
end
