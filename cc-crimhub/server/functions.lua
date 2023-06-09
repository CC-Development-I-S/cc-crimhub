function AddItem(src, data)
    if Config.Inventory == "lj" then 
        exports['lj-inventory']:AddItem(src, data.item, data.amount, data.slot, data.info)
    elseif Config.Inventory == "qb" then
        exports['qb-inventory']:AddItem(src, data.item, data.amount, data.slot, data.info)
    elseif Config.Inventory == "ox" then 
        exports.ox_inventory:AddItem(src, data.item, data.amount, data.info, data.slot)
    elseif Config.Inventory == "custom" then
        -- ADD YOUR CUSTOM INVENTORY EXPORT/EVENT
    end
end

function RemoveItem(src, data)
    if Config.Inventory == "lj" then 
        exports['lj-inventory']:RemoveItem(src, data.item, data.amount, data.slot)
    elseif Config.Inventory == "qb" then
        exports['qb-inventory']:RemoveItem(src, data.item, data.amount, data.slot)
    elseif Config.Inventory == "ox" then 
        exports.ox_inventory:RemoveItem(src, data.item, data.amount, data.info, data.slot)
    elseif Config.Inventory == "custom" then
        -- ADD YOUR CUSTOM INVENTORY EXPORT/EVENT
    end
end