widget = luastatus.require_plugin('battery-linux').widget{
    period = 2,
    cb = function(t)
        local symbol = ({
            Charging    = '⚡',
            Discharging = '',
        })[t.status] or ' '
        return {
            string.format("🔋%d%%%s", t.capacity, symbol),
        }
    end,
}
