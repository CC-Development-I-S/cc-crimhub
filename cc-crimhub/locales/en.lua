local Translations = {
    menu = {
        header = "Criminal Hub",
        equipment = "Equipment",
        equipment_txt = "Buy equipment for heists",
        availability = "Availability",
        availability_txt = "Check available bank heists",
        back = "Back",
        available = "Available",
        not_available = "Not Available"
    },
    notify = {
        success = "Success",
        insufficient_funds = "Insufficient funds."
    },
    bank = {
        pinkcage = "Fleeca: Pinkcage",
        legionsquare = "Fleeca: Legion Square",
        hawick = "Fleeca: Hawick Ave",
        delperro = "Fleeca: Del Perro Blvd",
        greatocean = "Fleeca: Great Ocean",
        harmony = "Fleeca: Harmony",
        paleto = "Paleto Bank",
        pacific = "Pacific Bank",
    },
    target = {
        open_menu = "Criminal Hub"
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})