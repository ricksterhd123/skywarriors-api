--[[ Utility function ]]
function map(func, array)
  local new_array = {}
  for i,v in ipairs(array) do
    new_array[i] = func(v)
  end
  return new_array
end

--[[ Get player info and return it back ]]
function getPlayerInfo(player)
    local info = {}
    info.name = getPlayerName(player)
    info.colour = {getPlayerNametagColor()}
    info.position = {getElementPosition(player)}
    return info
end

--[[ Get all players online ]]
function getPlayersOnline()
    local players = getElementsByType("player")
    if #players > 0 then
        players = map(getPlayerInfo, players) -- Return a table of strings instead of userdata
    end
    return players
end
