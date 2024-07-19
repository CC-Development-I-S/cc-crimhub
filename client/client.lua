QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for k, v in pairs(Config.Peds) do
        exports[Config.Target]:SpawnPed({
            model = v.model,
            coords = v.coords,
            freeze = true,
            invincible = true,
            scenario = v.scenario,
            target = {
            options = {
                {
                num = 1,
                type = "client", 
                event = "cc-crimhub:cl:openmenu",
                icon = 'fas fa-building-columns', 
                label = Lang:t("target.open_menu"),
                action = function()
                    TriggerEvent('cc-crimhub:cl:openmenu')
                end,
                canInteract = function()
                    return true
                end,
                }
            },
            distance = 2.5,
            },
        })
    end
end)

RegisterNetEvent('cc-crimhub:cl:openmenu', function()
    local crimhubMenu = {}
    crimhubMenu[#crimhubMenu + 1] = {
        header = Lang:t("menu.header"),
        icon = "fas fa-building-columns",
        isMenuHeader = true,
    }
    crimhubMenu[#crimhubMenu + 1] = {
        header = Lang:t("menu.availability"),
        txt = Lang:t("menu.availability_txt"),
        icon = 'fas fa-clock',
        isSubMenu = true,
        params = {
            event = "cc-crimhub:cl:checkavailability",
        }
    }
    crimhubMenu[#crimhubMenu + 1] = {
        header = Lang:t("menu.equipment"),
        txt = Lang:t("menu.equipment_txt"),
        icon = 'fas fa-laptop-code',
        isSubMenu = true,
        params = {
            event = "cc-crimhub:cl:equipment",
        }
    }
    exports[Config.Menu]:openMenu(crimhubMenu)
end)

function AvailabilityLabel(bool)
    if bool then
        return Lang:t("menu.available")
    else
        return Lang:t("menu.not_available")
    end
end

RegisterNetEvent("cc-crimhub:cl:checkavailability", function()
    local availabilityMenu = {}
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("menu.availability"),
        icon = 'fas fa-clock',
        isMenuHeader = true,
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.pinkcage"),
        txt = AvailabilityLabel(exports['cc-fleecaheist']:CheckStatus('pinkcage')),
        icon = "fas fa-shop",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.legionsquare"),
        txt = AvailabilityLabel(exports['cc-fleecaheist']:CheckStatus('legionsquare')),
        icon = "fas fa-shop",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.hawick"),
        txt = AvailabilityLabel(exports['cc-fleecaheist']:CheckStatus('hawick')),
        icon = "fas fa-shop",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.delperro"),
        txt = AvailabilityLabel(exports['cc-fleecaheist']:CheckStatus('delperro')),
        icon = "fas fa-shop",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.greatocean"),
        txt = AvailabilityLabel(exports['cc-fleecaheist']:CheckStatus('greatocean')),
        icon = "fas fa-shop",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.harmony"),
        txt = AvailabilityLabel(exports['cc-fleecaheist']:CheckStatus('harmony')),
        icon = "fas fa-shop",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.paleto"),
        txt = AvailabilityLabel(exports['cc-paletoheist']:CheckStatus()),
        icon = "fas fa-building-columns",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("bank.pacific"),
        txt = AvailabilityLabel(exports['cc-pacificheist']:CheckStatus()),
        icon = "fas fa-building-columns",
    }
    availabilityMenu[#availabilityMenu + 1] = {
        header = Lang:t("menu.back"),
        icon = 'fa-solid fa-circle-chevron-left',
        params = {
            event = "cc-crimhub:cl:openmenu",
        }
    }
    exports[Config.Menu]:openMenu(availabilityMenu)
end)

RegisterNetEvent("cc-crimhub:cl:equipment", function()
    local equipmentMenu = {}
    equipmentMenu[#equipmentMenu + 1] = {
        header = Lang:t("menu.equipment"),
        icon = 'fas fa-circle-info',
        isMenuHeader = true,
    }
    for i=1, #Config.EquipmentMenu do 
        v = Config.EquipmentMenu[i]
        equipmentMenu[#equipmentMenu + 1] = {
            header = v.label,
            txt = v.txt,
            icon = v.icon,
            isSubMenu = true,
            params = {
                event = "cc-crimhub:cl:equipment2",
                args = { menu = i }
            }
        }
    end
    equipmentMenu[#equipmentMenu + 1] = {
        header = Lang:t("menu.back"),
        icon = 'fa-solid fa-circle-chevron-left',
        params = {
            event = "cc-crimhub:cl:openmenu",
        }
    }
    exports[Config.Menu]:openMenu(equipmentMenu)
end)

RegisterNetEvent("cc-crimhub:cl:equipment2", function(data)
    local menu = Config.EquipmentMenu[data.menu]
    local items = menu.items
    local equipmentMenu = {}
    equipmentMenu[#equipmentMenu + 1] = {
        header = menu.label,
        icon = menu.icon,
        isMenuHeader = true,
    }
    for i=1, #items do
        v = items[i]
        equipmentMenu[#equipmentMenu + 1] = {
            header = v.label,
            txt = v.txt,
            icon = v.icon,
            params = {
                event = "cc-crimhub:cl:buyequipment",
                args = { data = v }
            }
        }
    end
    equipmentMenu[#equipmentMenu + 1] = {
        header = Lang:t("menu.back"),
        icon = 'fa-solid fa-circle-chevron-left',
        params = {
            event = "cc-crimhub:cl:equipment",
        }
    }
    exports[Config.Menu]:openMenu(equipmentMenu)
end)

RegisterNetEvent("cc-crimhub:cl:buyequipment", function(data)
    local info = data.data
    if info.reqItem then
        local hasItem = QBCore.Functions.HasItem(info.reqItem)
        if not hasItem then
            TriggerEvent('inventory:client:requiredItems', {QBCore.Shared.Items[info.reqItem]}, true)
            Wait(2500)
            TriggerEvent('inventory:client:requiredItems', {QBCore.Shared.Items[info.reqItem]}, false)
            return
        end
    end
    QBCore.Functions.TriggerCallback("cc-crimhub:sv:buyitem", function(hasMoney)
        if hasMoney then
            QBCore.Functions.Notify(Lang:t("notify.success"), "success")
        else
            QBCore.Functions.Notify(Lang:t("notify.insufficient_funds"), "error")
        end
    end, data)
end)
