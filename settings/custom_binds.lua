local awful = require("awful")

-- GLOBAL KEYBINDINGS
globalkeys = awful.util.table.join(globalkeys,

    awful.key({ modkey, "Shift" }, "KP_End", function () awful.util.spawn(klouds) end),
    awful.key({ modkey, "Shift" }, "KP_Begin", function () awful.util.spawn(lafuzz) end),
    awful.key({ modkey }, "KP_Down", function () awful.util.spawn("xfce4-screenshooter") end),
    awful.key({ modkey, "Shift" }, "KP_Down", function () awful.util.spawn("xfce4-screenshooter --region") end),

    awful.key({ modkey },            "`",     function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey }, "Tab",
        function ()
            awful.client.focus.byidx(1)
            if client.focus then
                client.focus:raise()
            end
        end)
)

-- CLIENT KEYS (work on current clients-windows)
clientkeys = awful.util.table.join(clientkeys,
    --KILL active client
    awful.key({ modkey, }, "q",      function (c) c:kill()                         end)
)

-- CLIENT BUTTONS BINDINGS
clientbuttons = awful.util.table.join(clientbuttons)
