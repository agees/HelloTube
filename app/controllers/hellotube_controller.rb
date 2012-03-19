# -*- encoding: utf-8 -*-
require 'rubygems'
require 'youtube_it'
class HellotubeController < ApplicationController
  def index
    youtube = YouTubeIt::Client.new(:dev_key => "AI39si4YZPgfRKaeoyimigmQUH8Te9NB7nspTT-l97TKORLbg2x1cr2twO5kJKt4vQuWw29uI7wiyzbL-a-uxEdnoWLiZ6-Rqg")
    allvideos = Videolist.all
    @videos = []
    for video in allvideos
      @videos << youtube.video_by(video.url)
    end
    @videourl = @videos[0].embed_url
    @videotitle = allvideos[0].title
    @videodesc = allvideos[0].description
  end
end
