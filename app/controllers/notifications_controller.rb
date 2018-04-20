class NotificationsController < InheritedResources::Base
def create
  @notification = Notification.new(notification_params)
  respond_to do |format|
    if @notification.save
      NotificationMailer.notification_mailer(@notification).deliver_now
      format.html { redirect_to(@notification, :notice => 'Notification was successfully created.') }
      format.xml  { render :xml => @notification, :status => :created, :location => @notification }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @notification.errors, :status => :unprocessable_entity }
    end
  end
end
	private

	def notification_params
		params.require(:notification).permit(:headline, :content)
	end
end

