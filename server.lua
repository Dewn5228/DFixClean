lib.addCommand({ 'fix', 'repair', 'fixcar' }, {
	help = locale('fix_help'),
	restricted = 'group.admin'
}, function(source, args, raw)
	TriggerClientEvent('d-fix:fix', source)
	local playername = GetPlayerName(source)
	local logmessage = '\n Steam: ' .. playername .. '\n Date: ' .. os.date("%d/%m/%Y %X")
	if Config.discordlog == true then
		exports.DDiscordLogs:SendLog('fix', 3447003, "DFixClean", logmessage, true)
	end
	lib.logger(source, 'DFixClean', json.encode(logmessage))
end)

lib.addCommand({ 'clean' }, {
	help = locale('clean_help'),
	restricted = 'group.admin'
}, function(source, args, raw)
	TriggerClientEvent('d-fix:clean', source)
end)
