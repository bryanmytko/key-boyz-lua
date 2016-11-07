CurrentKeysData = {}

local f = CreateFrame("Frame")

f:SetScript("OnEvent",function(self)
  local name = UnitName("player")
  local key = GetItemCount("Mythic Keystone", includeBank)
  tinsert(CurrentKeysData,format("%s,%s,%s",date(),name,key))
end)

f:RegisterEvent("BAG_UPDATED")
