lib.addCommand({ 'fix', 'repair', 'fixcar' }, {
	help = 'Repara o veículo que estás sentado',
	restricted = 'group.admin'
}, function(source, args, raw)
	TriggerClientEvent('d-fix:fix', source)
	local playername = GetPlayerName(source)
	exports.DDiscordLogs:SendLog('fix',  3447003, "DFixClean",'\n Steam: ' ..playername.. '\n Date: ' ..os.date("%d/%m/%Y %X"), true)
end)

lib.addCommand({ 'clean' }, {
	help = 'Limpa o veículo que estás sentado',
	restricted = 'group.admin'
}, function(source, args, raw)
	TriggerClientEvent('d-fix:clean', source)
end)
