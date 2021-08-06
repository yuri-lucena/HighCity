fx_version 'adamant'
game 'gta5'

server_scripts {
    "@vrp/lib/utils.lua",
	"server.lua"
}
client_script {
"@vrp/lib/utils.lua",
"client.lua"
}

ui_page "nui/ui.html"
files {
	"nui/ui.html",
	"nui/ui.js",
	"nui/ui.css"
}