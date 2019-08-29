class MatchesChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "matches_chat_#{params[:match_id]}"
  end
end
