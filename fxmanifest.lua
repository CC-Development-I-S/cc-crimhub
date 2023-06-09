fx_version 'cerulean'
games { 'gta5' }

author 'CC'
description 'Crimhub'
version '1.0.0'

client_scripts {
    'client/*.lua',
}

server_scripts {
  'server/*.lua'
}

shared_scripts {
   '@qb-core/shared/locale.lua',
   'locales/en.lua', -- Change to preferred language 
   'shared/config.lua',
}

lua54 'yes'
