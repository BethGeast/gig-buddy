if @match.matched?
  json.match_card render(partial: "matches/match_card", formats: :html, locals: { profile: @profile, match_profile: @match_profile })
else
  json.created :ok
end
