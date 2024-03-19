class SelectedArtistsController < ApplicationController
  def new
    @selected_artist = SelectedArtist.new
  end

  def create
    @artist_ids = selected_artist_params[:artist]
    @profile = current_user.profile
    @artist_ids.each do |artist_id|
      SelectedArtist.create(artist_id: artist_id, profile: @profile)
    end
    redirect_to root_path
  end

  private

  def selected_artist_params
    params.require(:selected_artist).permit(artist: [])
  end
end
