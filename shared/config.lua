Config = {}

Config.Menu = "qb-menu" -- If you've changed the name of your qb-menu, you can change it here
Config.Target = "qb-target" -- If you've changed the name of your qb-target, you can change it here

Config.Inventory = "qb" -- QB / LJ / OX / CUSTOM (Add code in server/functions.lua)

Config.Peds = {
    {
        model = "g_m_m_chicold_01",
        coords = vector4(-457.75, -48.83, 43.51, 182.42),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
    }
}

Config.EquipmentMenu = {
    [1] = {
        label = "Laptops",
        txt = "Check selection of laptops",
        icon = 'fas fa-laptop',
        items = {
            [1] = {
                item = "laptop_green",
                label = "Green Laptop",
                txt = "100 SHUNG + Green USB",
                icon = 'fas fa-laptop',
                reqItem = "usb_green", -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 100
            },
            [2] = {
                item = "laptop_blue",
                label = "Blue Laptop",
                txt = "200 SHUNG + Blue USB",
                icon = 'fas fa-laptop',
                reqItem = "usb_blue", -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 200
            },
            [3] = {
                item = "laptop_red",
                label = "Red Laptop",
                txt = "350 SHUNG + Red USB",
                icon = 'fas fa-laptop',
                reqItem = "usb_red", -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 350
            },
        }
    },
    [2] = {
        label = "Decrypters",
        txt = "Check selection of decrypters",
        icon = 'fas fa-network-wired',
        items = {
            [1] = {
                item = "basicdecrypter",
                label = "Basic Decrypter",
                txt = "25 SHUNG",
                icon = 'fas fa-network-wired',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 25
            },
            [2] = {
                item = "advanceddecrypter",
                label = "Advanced Decrypter",
                txt = "35 SHUNG",
                icon = 'fas fa-network-wired',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 35
            },
            [3] = {
                item = "hardeneddecrypter",
                label = "Hardened Decrypter",
                txt = "100 SHUNG",
                icon = 'fas fa-network-wired',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 100
            },
        }
    },
    [3] = {
        label = "Drills",
        txt = "Check selection of drills",
        icon = 'fas fa-screwdriver',
        items = {
            [1] = {
                item = "basicdrill",
                label = "Basic Drill",
                txt = "15 SHUNG",
                icon = 'fas fa-screwdriver',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 15
            },
            [2] = {
                item = "advanceddrill",
                label = "Advanced Drill",
                txt = "25 SHUNG",
                icon = 'fas fa-screwdriver',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 25
            },
            [3] = {
                item = "hardeneddrill",
                label = "Hardened Drill",
                txt = "50 SHUNG",
                icon = 'fas fa-screwdriver',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 50
            },
        }
    },
    [4] = {
        label = "Miscellaneous",
        txt = "Check selection of other equipment",
        icon = 'fas fa-layer-group',
        items = {
            [1] = {
                item = "disruptor",
                label = "Disruptor",
                txt = "150 SHUNG",
                icon = 'fas fa-power-off',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 150
            },
            [2] = {
                item = "hackingdevice",
                label = "Hacking Device",
                txt = "50 SHUNG",
                icon = 'fas fa-hard-drive',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 50
            },
            [3] = {
                item = "vpn",
                label = "VPN",
                txt = "50 SHUNG",
                icon = 'fas fa-satellite-dish',
                reqItem = false, -- FALSE if no required item
                payment = "shung", -- BANK / CASH / CRYPTO (or Renewed Phone crypto name)
                phonecrypto = true, -- Renewed Phone Crypto (TRUE/FALSE)
                amount = 50
            },
        }
    }
}
