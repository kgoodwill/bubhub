Feature: SubmitedAppointments
	In order confirm message was sent
	As an email
	I want to see the message

Senario: View Appointments
	Given I am on /submited_appointment
	Then I should see "Email Sent!"
	Then I should see "You will recieve an email from us soon confirming your request!"
	Then I should see "Return to View Appointments Page"
