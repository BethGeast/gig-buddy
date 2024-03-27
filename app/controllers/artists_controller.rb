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
    # def index
      # @artists = Artist.all
  end

  # def show
   # @artist = Artist.find(params[:id])
  # end

  def create
    @artist = Artist.find_by(name: params[:name])
    @artist = Artist.create(name: params[:name]) unless @artist
    authorize @artist
    @selected_artist = SelectedArtist.create(profile: current_user.profile, artist: @artist)
    redirect_to artists_path(search: params[:name])
  end
end
