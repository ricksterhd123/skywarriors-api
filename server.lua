--[[ Utility function ]]
function map(func, array)
  local new_array = {}
  for i,v in ipairs(array) do
    new_array[i] = func(v)
  end
  return new_array
end

--[[ Get all players online ]]
function getPlayersOnline()
    local players = getElementsByType("player")
    if #players > 0 then
        players = map(getPlayerName, players) -- Return a table of strings instead of userdata
    end
    return players
end
