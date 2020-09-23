class NotificationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
    @notifications = Notification.where(recipient: @user).unread.to_a
    mark_as_read
  end

  private

  def mark_as_read
    notifications = Notification.where(recipient: @user).unread
    notifications.update_all(read_at: Time.zone.now)
  end
  
end
