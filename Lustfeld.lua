local Lust_EventFrame = CreateFrame("Frame")
Lust_EventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
Lust_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
    local args1, args2, args3, args4, args5, args6, args7, args8, args9, args10, args11, args12, args13 = ...;
    spells = {"Bloodlust", "Time Warp", "Heroism", "Ancient Hysteria", "Netherwinds", "Drums of Fury", "Legacy of the White Tiger"};
    print(tostringall(...));
    for i, v in ipairs(spells) do
      if(args2 == "SPELL_AURA_APPLIED" and args13 == v) then
        Lust_EventFrame:BLOODLUST();
      end
    end
    for i, v in ipairs(spells) do
      if(args2 == "SPELL_AURA_REMOVED" and args13 == v) then
        print("got here");
        StopSound(soundHandle, 2000);
      end
    end
	end)

function Lust_EventFrame:BLOODLUST()
  willPlay, soundHandle = PlaySoundFile("Interface\\AddOns\\Lustfeld\\Seinfeld Theme.mp3");
end
