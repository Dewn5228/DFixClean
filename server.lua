lib.addCommand({ 'fix', 'repair', 'fixcar' }, {
	help = 'Repara o veículo que estás sentado',
	restricted = 'group.admin'
}, function(source, args, raw)
	TriggerClientEvent('d-fix:fix', source)
	exports.DDiscordLogs:Sendlog('fix', 'Usou o comando /fix', true)
end)

lib.addCommand({ 'clean' }, {
	help = 'Limpa o veículo que estás sentado',
	restricted = 'group.admin'
}, function(source, args, raw)
	TriggerClientEvent('d-fix:clean', source)
end)
