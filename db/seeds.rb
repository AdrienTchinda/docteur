#appelle la gem faker
require 'faker'

#Détruit la base de donnée
Doctor.destroy_all
City.destroy_all
Patient.destroy_all
Appointment.destroy_all

#on initialise une ville "town", une spécialité "specialty", un docteur "doctor", un patient "patient", et un rdv "appointment" et leurs attributs
  town = City.create(name: "Gotham")
  specialty = Specialty.create(name: "Radiologue")
  doctor = Doctor.create(first_name: "Michael", last_name: "Jackson", zip_code: "93270", cities_id: town.id, specialty_id: specialty.id)
  patient = Patient.create(first_name: "Nicky", last_name: "Minaj", cities_id: town.id)
  appointment = Appointment.create(date: Faker::Date.forward(days: 23), doctors_id: doctor.id, patients_id: patient.id, cities_id: town.id)