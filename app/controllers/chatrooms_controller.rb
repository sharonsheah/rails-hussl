class ChatroomsController < ApplicationController
    def index
      @chatrooms = Chatroom.all
      @collaborations = Collaboration.where(user: current_user)
    end

    def show
      @chatroom = Chatroom.find(params[:id])
      @message = Message.new
    end
end
