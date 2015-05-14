Feature: MakeAppointments
	In order to make an appointment
	As a form
	I want to see the form inputs

Senario: Make Appointments
	Given I am on /make_appointments
	Then I should see "Make Appointments"
	Then I should see "Name"
	Then I should see "Email"
	Then I should see "Date of Appointment Wanted"
	Then I should see "Time of Appointment Wanted"
	Then I shouls see "Problem with Bike"
	Then I should see "Submit"
	Then I should see "Reset"
