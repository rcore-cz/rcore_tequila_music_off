fx_version 'bodacious' 
games { 'gta5' }

author 'Isigar <info@rcore.cz>'
description 'Simple script for turning music on/off in tequila bar'

ui_page 'client/html/index.html'

files {
    'client/html/*.css',
    'client/html/*.html',
    'client/html/*.js',
    'client/html/img/*.png',
}

server_scripts {
    '@async/async.lua',
    '@mysql-async/lib/MySQL.lua',
    'server/init/*.lua',
    'server/lib/*.lua',
    'server/*.lua',
}

client_scripts {
    'client/init/*.lua',
    'client/lib/*.lua',
    'client/*.lua',
}

shared_scripts {
    'config.lua',
    'shared/*.lua',
}

dependencies {
    'rcore'
}












