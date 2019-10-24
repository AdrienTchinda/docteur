class Appointment < ActiveRecord::Migration[5.2]
	def change
	  create_table :appointments do |t|
	    t.datetime :date
	    t.belongs_to :doctors, index: true
        t.belongs_to :patients, index: true
        t.belongs_to :cities, index: true
	    t.timestamps
	  end
	end
end
