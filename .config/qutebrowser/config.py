#content.headers.user_agent = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.230 Safari/537.36'
#config.source('qutewal.py')
c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.128 Safari/537.36"
#c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99999.0.3578.98 Safari/537.36" 


config.source('monokai.py')
#c.url.searchengines = {"DEFAULT": "https://www.google.fi/search?q={}", "y" : "https://youtube.com/results?search_query={}", "tra": "https://www.spanishdict.com/traductor/{}"}
c.url.searchengines = {"DEFAULT": "https://www.google.fi/search?q={}", 
        "s": "https://soundcloud.com/search?q={}"  , 
        "g": "https://www.google.fi/search?q={}" ,
        "y" : "https://youtube.com/results?search_query={}"
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

#monospace = "10px 'Droid Sans Mono'"
## ---este es el pro

#monospace = "9px 'FiraCode'"
c.fonts.monospace = "9px 'Hack'"
monospace = "9px 'Hack'"
c.fonts.web.size.default = 12
c.fonts.web.size.default_fixed  = 12
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
c.fonts.tabs = monospace

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
    "left": 5,
    "right": 5,
    "top": 4,
    "bottom": 5,
}

c.url.default_page = "/home/cyberpunk/Scripts/index.html"
#c.url.default_page = "https://www.google.com"

#c.url.start_pages = "https://www.google.com"
c.url.start_pages = "/home/cyberpunk/Scripts/index.html"
#c.hints.mode = 'word'

#c.tabs.show = 'switchin'
c.tabs.show = 'multiple'

#c.tabs.title.alignment = 'right'

c.downloads.remove_finished = 1
c.content.autoplay = False

#c.tabs.indicator.width = 0

c.tabs.show_switching_delay = 1000
#c.statusbar.position = 'top'
c.statusbar.hide = True
#c.zoom.default = '85%'
c.backend = 'webengine'
#c.backend = "webkit"
c.content.geolocation = False
c.tabs.wrap = True
#c.tabs.padding = {'bottom': 1, 'left': 1, 'right': 1, 'top': 1}
#c.tabs.pinned.shrink = True
#c.tabs.position = 'bottom'
c.tabs.min_width = 5
#c.tabs.max_width = 160
c.tabs.max_width = 140


# TOR CONFIG

#c.completion.web_history.max_items =100
#c.content.javascript.can_open_tabs_automatically = True
#c.content.javascript.enabled = False
#c.content.javascript.can_access_clipboard = True
#c.content.javascript.alert = False
#c.completion.show = 'auto'
c.confirm_quit = ['always']
c.content.host_blocking.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts']
c.input.insert_mode.auto_load = True
#c.input.spatial_navigation = True
#c.spellcheck.languages = ['es-ES']
#c.scrolling.bar = 'always'
c.completion.open_categories = ['history']
c.tabs.favicons.scale = 1
c.content.pdfjs = True
#c.completion.scrollbar.width = 5
c.completion.height = '20%'
