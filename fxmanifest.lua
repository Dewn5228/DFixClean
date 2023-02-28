fx_version 'adamant'
game 'gta5'
lua54 'yes'

name 'DFixClean'
author 'Dewn5228'

client_scripts {
  "client.lua",
}

server_scripts {
  "server.lua",
}

shared_scripts {
  '@ox_lib/init.lua',
  'shared.lua'
}

files {
  'locales/*.json'
}

dependencies {
  'ox_lib',
}
