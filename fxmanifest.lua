fx_version 'bodacious'
game 'gta5'
lua54 'yes'

author 'Fezz | fbfezz (on discord)'
description 'Fezz Window Tint Checker'
version '1.0.1'

ui_page 'html/index.html'

files {
    'html/*',
    "html/windowtint.png",
}

client_script 'client/*.lua'

shared_script 'config.lua'

server_script 'server/*.lua'

dependency 'qb-core'
