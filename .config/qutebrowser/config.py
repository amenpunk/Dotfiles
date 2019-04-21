config.source('qutewal.py')
c.url.searchengines = {"DEFAULT": "https://www.google.fi/search?q={}", "you" : "https://youtube.com/results?search_query={}"}
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

#https://soundcloud.com/mingmecca/mi-complicado-amen-para-ti


monospace = "12px 'Consolas'"
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
c.fonts.hints = "bold 13px 'DejaVu Sans Mono'"

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

c.url.default_page = "~/Scripts/index.html"

c.url.start_pages = "~/Scripts/index.html"
