class ArtistsController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    RSpotify.authenticate(ENV["SPOTIFY_CLIENT_ID"], ENV["SPOTIFY_CLIENT_SECRET"])
    if params[:search].present?
      @artists = RSpotify::Artist.search(params[:search]).first(5)
    else
      @artists = []
    end
    @profile = current_user.profile
  end
end
