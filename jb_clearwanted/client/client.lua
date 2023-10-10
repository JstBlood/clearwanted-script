RegisterCommand('clearwanted', function (source)
  
  local player = GetPlayerIndex()

  if GetPlayerWantedLevel(player) == 0 then
    TriggerEvent('chat:addMessage', {
      args = { 'You are not wanted by the police right now.' }
    })

    return
  end

  ClearPlayerWantedLevel(player)
end)