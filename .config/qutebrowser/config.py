#config.source('qutewal.py')
#------------el que siempre uso----------------------------------------------------------------------------------------
c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.128 Safari/537.36"
#----------------------------------------------------------------------------------------------------
# c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99999.0.3578.98 Safari/537.36"

config.load_autoconfig(False)
config.source('monokai.py')
#c.url.searchengines = {"DEFAULT": "https://www.google.fi/search?q={}", "y" : "https://youtube.com/results?search_query={}", "tra": "https://www.spanishdict.com/traductor/{}"}
c.url.searchengines = {
        "DEFAULT": "https://www.google.fi/search?q={}",
# "DEFAULT" : "https://duckduckgo.com/?q={}",
        "s": "https://soundcloud.com/search?q={}"  ,
        "g": "https://www.google.fi/search?q={}" ,
        "y" : "https://youtube.com/results?search_query={}",
        "d" : "https://duckduckgo.com/?q={}",

        }
#c.window.title_format = "{private}{perc}{title}{title_sep}qutebrowser"
c.confirm_quit = ["downloads"]


c.aliases = {
    "w": "session-save",
    "wq": "quit --save",
    "mpv": "spawn -d mpv --force-window=immediate {url}",
    "nicehash": "spawn --userscript nicehash",
    "pass": "spawn -d pass -c",
    "cloud" : "spawn --userscript cloud"
#    "trad" : "spawn --userscript trad"
}


#c.content.user_stylesheets = "/home/cyberpunk/.config/qutebrowser/sites.css"
#c.content.user_stylesheets = "/home/cyberpunk/.config/qutebrowser/main.css"

monospace = "10px 'Droid Sans Mono'"
## ---este es el pro

#monospace = "9px 'Fira Code Retina'"
#c.fonts.monospace = "9px 'Hack'"
#monospace = "10px 'Fira Code '"
c.fonts.web.size.default = 15
c.fonts.web.size.default_fixed  = 15
# Font used in the completion categories.
c.fonts.completion.category = f"bold {monospace}"

# Font used in the completion widget.
c.fonts.completion.entry = monospace

# Font used for the debugging console.
c.fonts.debug_console = monospace

# Font used for the downloadbar.
c.fonts.downloads = monospace

# Font used in the keyhint widget.
c.fonts.keyhint = monospace

# Font used for error messages.
c.fonts.messages.error = monospace

# Font used for info messages.
c.fonts.messages.info = monospace

# Font used for warning messages.
c.fonts.messages.warning = monospace

# Font used for prompts.
c.fonts.prompts = monospace

# Font used in the statusbar.
c.fonts.statusbar = monospace

# Font used in the tab bar.
#c.fonts.sele.tabs = monospace
c.fonts.tabs.selected = monospace
c.fonts.tabs.unselected = monospace

# Font used for the hints.
c.fonts.hints = "bold 10px 'Hack'"

# Chars used for hint strings.
c.hints.chars = "asdfghjklie"
c.downloads.location.directory = "~/Downloads/"
#c.tabs.background = false

#c.tabs.padding = {
#    "left": 5,
#    "right": 5,
#    "top": 10,
#    "bottom": 10,
#}

c.tabs.padding = {
    "left": 10,
    "right": 10,
    "top": 8,
    "bottom": 8,
}

c.tabs.indicator.padding = {
    "left": 0,
    "right": 0,
    "top": 0,
    "bottom": 0,
}

c.tabs.indicator.width = 0

c.url.default_page = "https://duckduckgo.com/"
#c.url.default_page = "https://www.google.com"

#c.url.start_pages = "https://www.google.com"
c.url.start_pages = "https://duckduckgo.com/"
#c.hints.mode = 'word'

# c.tabs.show = 'switching'
c.statusbar.show = 'never'
c.tabs.show = 'multiple'

#c.tabs.title.alignment = 'right'

c.downloads.remove_finished = 1
#c.content.autoplay = False
c.content.autoplay = True

#c.tabs.indicator.width = 0

c.tabs.show_switching_delay = 10000
c.statusbar.position = 'bottom'
#c.statusbar.position = 'top'
#c.statusbar.hide = False
# c.statusbar.hide = False
# c.zoom.default = '75%'
#c.zoom.default = '125%'
c.backend = 'webengine'
#c.backend = "webkit"
c.content.geolocation = False
c.tabs.wrap = True
#c.tabs.padding = {'bottom': 1, 'left': 1, 'right': 1, 'top': 1}
#c.tabs.pinned.shrink = True
c.tabs.position = 'top'
# c.tabs.position = 'top'
c.tabs.width = 29
#c.tabs.max_width = 160

## max min normal with
c.tabs.max_width = 180
c.tabs.min_width = 5


# TOR CONFIG

#c.completion.web_history.max_items =100
#c.content.proxy = 'socks://localhost:9050/'
#c.content.javascript.can_open_tabs_automatically = True
#c.content.javascript.enabled = False
#c.content.javascript.can_access_clipboard = True
#c.content.javascript.alert = False
#c.completion.show = 'auto'
c.confirm_quit = ['always']
#c.content.host_blocking.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.input.insert_mode.auto_load = False
#c.input.spatial_navigation = True
#c.spellcheck.languages = ['es-ES']
c.scrolling.bar = 'always'
c.completion.open_categories = ['history']
# c.tabs.favicons.scale = 1
c.tabs.favicons.scale = 1.5
c.content.pdfjs = True
#c.completion.scrollbar.width = 5
c.completion.height = '20%'
c.colors.tabs.pinned.even.bg = '#1e1e1e'
c.colors.tabs.pinned.odd.bg = '#1e1e1e'
c.colors.tabs.selected.even.bg = '#171717'

#config for searh in with F
c.colors.hints.bg = '#1e1e1e'
c.colors.hints.fg = '#ffffff'
c.hints.border = '1px solid #1e1e1e'

c.colors.messages.info.bg  = '#1e1e1e'
c.colors.messages.info.fg  = '#ffffff'

#click dercho config
c.fonts.contextmenu  = monospace
c.colors.contextmenu.menu.bg = '#1e1e1e'
c.colors.contextmenu.menu.fg = '#ffffff'
c.colors.contextmenu.selected.bg ='#ffffff'

c.colors.contextmenu.selected.bg = '#ffffff'
c.colors.contextmenu.selected.fg = '#1e1e1e'

#c.colors.webpage.prefers_color_scheme_dark = True
# -> c.colors.webpage.darkmode.enabled = True

c.statusbar.show = 'in-mode'
