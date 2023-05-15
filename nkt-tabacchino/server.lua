local ox_inventory = exports.ox_inventory

local data = {
	['wool'] = {
		waitTime = 2000,
		cost = 3,
        description = 'prova',
        item = 'wool'
	},
    ['pane'] = {
		waitTime = 2000,
		cost = 3,
        description = 'prova',
        item = 'bread'
	},
}

RegisterNetEvent('macchinetta:buyitem', function(type)
	local src = source
	local count = ox_inventory:Search(src, 'count', 'money')
	if count >= data[type].cost then
		ox_inventory:RemoveItem(src, 'money', data[type].cost)
		Wait(data[type].waitTime)
        for k, v in pairs (data) do
		if type == k then
			 ox_inventory:AddItem(src, data[k].item, 1)
        else
            print('la macchinetta ti ha ciulato i soldi')
		end
    end
end
end)