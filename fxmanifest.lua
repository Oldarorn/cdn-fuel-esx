fx_version 'cerulean'
game 'gta5'
author 'https://www.github.com/CodineDev' -- Base Refueling System: (https://github.com/InZidiuZ/LegacyFuel), other code by Codine (https://www.github.com/CodineDev).
description 'cdn-fuel'
version '2.2.1'

client_scripts {
    '@PolyZone/client.lua',
    'client/fuel_cl.lua',
    'client/electric_cl.lua',
    'client/station_cl.lua',
    'client/utils.lua',
    'client/custom.lua'
}

server_scripts {
    'server/fuel_sv.lua',
    'server/station_sv.lua',
    'server/electric_sv.lua',
    'server/custom.lua',
    '@oxmysql/lib/MySQL.lua',
}

shared_scripts {
    'shared/config.lua',
    '@es_extended/imports.lua',
    '@ox_lib/init.lua', -- OX_Lib, only line this in if you have ox_lib and are using them.
}

exports { -- Call with exports['cdn-fuel']:GetFuel or exports['cdn-fuel']:SetFuel
    'GetFuel',
    'SetFuel'
}


files {
	'locales/*.json',
}
lua54 'yes'

dependencies { -- Make sure these are started before cdn-fuel in your server.cfg!
    --'interact-sound',
    -- QB-Core Functionality (Input, Target, Menu)
    -- QBox | Overextended Functionalities (Input, Progressbar, Target, Menu etc.)
    -- 'ox_lib', -- Ox Library
    -- 'ox_target',
}

data_file 'DLC_ITYP_REQUEST' 'stream/[electric_nozzle]/electric_nozzle_typ.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/[electric_charger]/electric_charger_typ.ytyp'

provide 'cdn-syphoning' -- This is used to override cdn-syphoning(https://github.com/CodineDev/cdn-syphoning) if you have it installed. If you don't have it installed, don't worry about this. If you do, we recommend removing it and using this instead.
