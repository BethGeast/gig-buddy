class MatchesController < ApplicationController
  def index
    # show all possible matches
    # if at least one selected_artist is the same as another user,
    # show in potential matches
    # ?all user's selected artists - other user's selected artists
    # if at least 1 artist left after doing subtraction, show in index
    # profile.where <-- at least one selected_artist is the same
  end
end
