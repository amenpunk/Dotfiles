#config.source('qutewal.py')
config.source('monokai.py')
c.url.searchengines = {"DEFAULT": "https://www.google.fi/search?q={}", "y" : "https://youtube.com/results?search_query={}"}
c.window.title_format = "{private}{perc}{title}{title_sep}qutebrowser"
c.confirm_quit = ["downloads"]


c.aliases = {
    "w": "session-save",
    "wq": "quit --save",
    "mpv": "spawn -d mpv --force-window=immediate {url}",
    "nicehash": "spawn --userscript nicehash",
    "pass": "spawn -d pass -c",
    "cloud" : "spawn --userscript cloud"
}


#c.content.user_stylesheets = "/home/cyberpunk/Scripts/css/my-css.css"

monospace = "10px 'Droid Sans Mono'"
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
c.fonts.hints = "bold 11px 'Droid Sans Mono'"

# Chars used for hint strings.
c.hints.chars = "asdfghjklie"
c.downloads.location.directory = "~/Downloads/"
#c.tabs.background = false

c.tabs.padding = {
    "left": 5,
    "right": 5,
    "top": 0,
    "bottom": 1,
}

c.url.default_page = "/home/cyberpunk/Scripts/index.html"
#c.url.default_page = "https://www.google.com"

#c.url.start_pages = "https://www.google.com"
c.url.start_pages = "/home/cyberpunk/Scripts/index.html"
#c.hints.mode = 'word'

#c.tabs.show = 'switching'
#c.tabs.show = 'multiple'
#c.tabs.indicator.width = 0

#c.tabs.show_switching_delay = 1000
#c.statusbar.position = 'top'
c.statusbar.hide = True
c.zoom.default = '90%'
c.backend = 'webengine'
c.content.geolocation = False
c.tabs.wrap = True
#c.tabs.padding = {'bottom': 1, 'left': 1, 'right': 1, 'top': 1}
#c.tabs.pinned.shrink = True
#c.tabs.position = 'bottom'
#c.tabs.min_width = 5
#c.tabs.max_width = 50


# TOR CONFIG

#c.content.javascript.can_open_tabs_automatically = False
#c.content.javascript.enabled = False
#c.content.javascript.can_access_clipboard = False
#c.content.javascript.alert = False
