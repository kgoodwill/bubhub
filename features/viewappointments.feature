Feature: ViewAppointments
	In order to see all appointments
	As a calendar
	I want to see the google calendar

Senario: View Appointments
	Given I am on /view_appointments_month
	Then I should see "View Appointments"
	Then I should see "Request to Make an Appointment"
	Then I should see "bike shop"
	Then I should see "Request to Make an Appointment"
