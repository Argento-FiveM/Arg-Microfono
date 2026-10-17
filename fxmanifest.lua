fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'Arg-Microfono'
author 'Argento / FiveM AR'
version '1.0.0'
description 'Sistema de microfono para FiveM compatible con ESX, QBCore y Qbox'

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}
