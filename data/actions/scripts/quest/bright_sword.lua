function onUse(cid, item, frompos, item2, topos)
if item.uid == 9971 then
  queststatus = getPlayerStorageValue(cid,9971)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a bag.")
   bag = doPlayerAddItem(cid, 1987, 1)
   doAddContainerItem(bag, 2407, 1)
   doAddContainerItem(bag, 2156, 1)
   setPlayerStorageValue(cid,9971,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return false
end
return true
end