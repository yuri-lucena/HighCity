resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_scripts {
	"@vrp/lib/utils.lua",
    'client/client.lua',
}
server_scripts {
	"@vrp/lib/utils.lua",
    'server/server.lua',
}

ui_page('client/html/UI.html')

files {
    'client/html/UI.html',
    'client/html/style.css',
	'client/html/img/phone.png'
}
