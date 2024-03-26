if @match.matched?
  json.match_card # render partial
else
  json.created :ok
end
