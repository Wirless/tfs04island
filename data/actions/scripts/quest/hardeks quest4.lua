function onUse(cid, item, frompos, item2, topos)
if item.uid == 25074 then
  queststatus = getPlayerStorageValue(cid,25071)
  if queststatus == -1 or queststatus == 0 then
  if getPlayerFreeCap(cid) <= 100 then
doPlayerSendTextMessage(cid,22,"You need 100 cap or more to loot this!")
return TRUE
end
   doPlayerSendTextMessage(cid,22,"You have found a crossbow and some power bolts.")
   item_uid = doPlayerAddItem(cid,2547,100) 
      item_uid = doPlayerAddItem(cid,2455,1) 
   setPlayerStorageValue(cid,25071,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

