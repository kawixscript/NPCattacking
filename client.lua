local Config = Config or {}

for group, isEnabled in pairs(Config.Relationships) do
    if Config.Relationships[group] ~= nil then 
        if isEnabled then
            SetRelationshipBetweenGroups(1, group, `PLAYER`)
        else
            SetRelationshipBetweenGroups(4, group, `PLAYER`)
        end
    else
        print("Warning: Undefined group in Config:", group)
    end
end

--False Olunca 4 uygular True ise 1 

--[[

0 = Yardımcı  
1 = Saygı  
2 = Beğen  
3 = Nötr  
4 = Beğenmedim  
5 = Nefret  

]]