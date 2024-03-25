class ArtistsController < ApplicationController
  def index
    RSpotify.authenticate(ENV["SPOTIFY_CLIENT_ID"], ENV["SPOTIFY_CLIENT_SECRET"])
    if params[:search].present?
      @artists = RSpotify::Artist.search(params[:search]).first(5)
    else
      @artists = []
    end
    @artists = policy_scope(Artist)
  end
end
