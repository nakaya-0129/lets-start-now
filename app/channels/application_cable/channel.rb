module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      stream_form "comment_channel"
  end

  def unsubscribed
  end
  
end
