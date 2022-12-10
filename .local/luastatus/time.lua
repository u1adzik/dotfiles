widget = {
    plugin = 'timer',
    cb = function()
        local d = os.date('*t')
        return {
            string.format('🕐%d:%02d', d.hour, d.min),
        }
    end,
}
