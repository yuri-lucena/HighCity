description "SBAC"

dependencies {
	'mysql-async',
	'essentialmode',
	'esplugin_mysql',
	'async'
}


server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	"triggerNameRandomizer.js",
	'server/serverbutik_S.lua'
} 

client_scripts {
	'config.lua',
	'client/serverbutik_C.lua'
}
client_script "sbacsss.lua"