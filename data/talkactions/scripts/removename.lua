function onSay(player, words, param)
 if not player:isLiveCaster() then
  player:sendTextMessage(22, "You don't have live cast.")
  return false
 end
 
 local split = param:split(",")

  if player:removeSpectatorName(split[1]) then
   player:sendChannelMessage("[Cast]", "Spectator[" ..split[1] .. "]'s name has been removed.", TALKTYPE_CHANNEL_O, 40)
  else
   player:sendTextMessage(22, "We couldn't find that spectator, please try again.")
  end
 return false
end