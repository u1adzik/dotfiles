widget = {
    plugin = 'network-linux',
    opts = {
        wireless = true,
        timeout = 10,
    },
    cb = function(t)
        if not t then
            return nil
        end
        local r = {}
        for iface, params in pairs(t) do
            if params.wireless then
                if params.wireless.ssid then
                    r[#r + 1] = string.format('📶%s', params.wireless.ssid)
                end
            end
        end
        return r
    end,
}
