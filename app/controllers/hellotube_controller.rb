require 'youtube_it'
class HellotubeController < ApplicationController
  def index
	  youtube = YouTubeIt::Client.new(:dev_key => "AI39si4YZPgfRKaeoyimigmQUH8Te9NB7nspTT-l97TKORLbg2x1cr2twO5kJKt4vQuWw29uI7wiyzbL-a-uxEdnoWLiZ6-Rqg")
	  @videos = youtube.videos_by(:most_viewed).videos
  end
end
