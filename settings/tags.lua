local awful = require("awful")

-- LAYOUTS
layouts =
{
  awful.layout.suit.floating,
  awful.layout.suit.tile,
  awful.layout.suit.tile.left,
  awful.layout.suit.fair,
  awful.layout.suit.magnifier
}

-- TAGS (aka screens)
-- two options, for single or dual display
tags = {}
if screen.count() == 1 then
  tags1_1 = {
    names  = { "[1]", "[2]", "[3]", "[4]", "[5]", "[6]" },
    layout = layouts
  }
  tags[1] = awful.tag(tags1_1.names, 1, tags1_1.layout)
else
  tags2_1 = {
    names  = { "[Aux I]", "[Aux II]", "[Aux III]", "[Shell]", "[Collaboration]", "[Web]" },
    layout = { layouts[1], layouts[1], layouts[1], layouts[1], layouts[5], layouts[1] }
  }
  tags2_2 = {
    names  = { "[Code I]", "[Code II]", "[Code III]" },
    layout = { layouts[5], layouts[5], layouts[5] }
  }
  tags[1] = awful.tag(tags2_1.names, 1, tags2_1.layout)
  tags[2] = awful.tag(tags2_2.names, 2, tags2_2.layout)
end
--- }}}
