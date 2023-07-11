local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local xrdb = xresources.get_current_theme()

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "sans 8"

local mycolors = {}
mycolors.text = "#77bd42"
mycolors.window = xrdb.background or "#7d465c"
mycolors.windowFocus = xrdb.color0 or "#502d3b"
mycolors.windowMinimize = xrdb.color2 or "#77bd42"
mycolors.marked = xrdb.color3 or "#bc5a21"

theme.bg_normal     = mycolors.window
theme.bg_focus      = mycolors.windowFocus
theme.bg_urgent     = mycolors.marked
theme.bg_minimize   = mycolors.windowMinimize
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = mycolors.text
theme.fg_focus      = mycolors.text
theme.fg_urgent     = mycolors.text
theme.fg_minimize   = mycolors.text

theme.useless_gap   = dpi(2.5)
theme.border_width  = dpi(1)
theme.border_normal = mycolors.window
theme.border_focus  = mycolors.windowFocus
theme.border_marked = mycolors.marked

local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.menu_submenu_icon = "~/Awesome/Theme/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

theme.titlebar_close_button_normal = "~/Awesome/Theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "~/Awesome/Theme/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = "~/Awesome/Theme/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = "~/Awesome/Theme/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = "~/Awesome/Theme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "~/Awesome/Theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "~/Awesome/Theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "~/Awesome/Theme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "~/Awesome/Theme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "~/Awesome/Theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "~/Awesome/Theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "~/Awesome/Theme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "~/Awesome/Theme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "~/Awesome/Theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "~/Awesome/Theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "~/Awesome/Theme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "~/Awesome/Theme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "~/Awesome/Theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "~/Awesome/Theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "~/Awesome/Theme/titlebar/maximized_focus_active.png"

theme.wallpaper = "~/Awesome/Theme/background.png"

theme.layout_fairh = "~/Awesome/Theme/layouts/fairhw.png"
theme.layout_fairv = "~/Awesome/Theme/layouts/fairvw.png"
theme.layout_floating  = "~/Awesome/Theme/layouts/floatingw.png"
theme.layout_magnifier = "~/Awesome/Theme/layouts/magnifierw.png"
theme.layout_max = "~/Awesome/Theme/layouts/maxw.png"
theme.layout_fullscreen = "~/Awesome/Theme/layouts/fullscreenw.png"
theme.layout_tilebottom = "~/Awesome/Theme/layouts/tilebottomw.png"
theme.layout_tileleft   = "~/Awesome/Theme/layouts/tileleftw.png"
theme.layout_tile = "~/Awesome/Theme/layouts/tilew.png"
theme.layout_tiletop = "~/Awesome/Theme/layouts/tiletopw.png"
theme.layout_spiral  = "~/Awesome/Theme/layouts/spiralw.png"
theme.layout_dwindle = "~/Awesome/Theme/layouts/dwindlew.png"
theme.layout_cornernw = "~/Awesome/Theme/layouts/cornernww.png"
theme.layout_cornerne = "~/Awesome/Theme/layouts/cornernew.png"
theme.layout_cornersw = "~/Awesome/Theme/layouts/cornersww.png"
theme.layout_cornerse = "~/Awesome/Theme/layouts/cornersew.png"

--theme.awesome_icon = theme_assets.awesome_icon(
    --theme.menu_height, theme.bg_focus, theme.fg_focus
--)

theme.icon_theme = nil

return theme

