widget = luastatus.require_plugin('battery-linux').widget{
    period = 2,
    cb = function(t)
        local symbol = ({
            Charging    = 'CHR: ',
            Discharging = 'BAT: ',
        })[t.status] or ' '
        return {
            string.format("%s%d%%", symbol, t.capacity),
        }
    end,
}
