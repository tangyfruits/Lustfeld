local Lust_EventFrame = CreateFrame("Frame")
Lust_EventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
Lust_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
    local args1, args2, args3, args4, args5, args6, args7, args8, args9, args10, args11, args12, args13 = ...;
    if ((args13 == "Bloodlust" and args2 == "SPELL_AURA_APPLIED") or (args13 == "Time Warp" and args2 == "SPELL_AURA_APPLIED")) then
    Lust_EventFrame:BLOODLUST();
    end
	end)

function Lust_EventFrame:BLOODLUST()
  PlaySoundFile("Interface\\AddOns\\Lustfeld\\Seinfeld Theme.mp3");
end
