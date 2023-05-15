local models = {
    'prop_vend_snak_01',
    'prop_vend_soda_02',
    'prop_vend_coffe_01',
}

local options = {
    {
        name = 'buy1',        
        icon = 'fa-solid fa-cigarette',
        label = 'Acquista sigaretta',
        items = {
            ['money'] = 2
        },
        onSelect = function()
            TriggerServerEvent('macchinetta:buyitem', 'wool')
            lib.progressCircle({
                duration = 4000,
                label = 'Acquisto...',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1'},
            })
        end,
    },
    {
        name = 'buy2',        
        icon = 'fa-solid fa-cigarette',
        label = 'Acquista pane',
        items = {
            ['money'] = 2
        },
        onSelect = function()
            TriggerServerEvent('macchinetta:buyitem', 'pane')
            lib.progressCircle({
                duration = 4000,
                label = 'Acquisto...',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
                anim = {dict = 'mini@sprunk', clip = 'plyr_buy_drink_pt1'},
            })
        end,
    },
}
exports.ox_target:addModel(models, options)