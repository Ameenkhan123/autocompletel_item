class NotificationMailer < ApplicationMailer

	def notification_mailer(notification)
		@notification = notification
		@url  = "http://postbox.tut/"
		mail(:subject => "New Notification")
	end
end
