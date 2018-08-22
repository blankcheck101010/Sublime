import sys
import sublime
import sublime_plugin



class CustomSetSettingCommand(sublime_plugin.ApplicationCommand):
    def run(self, file, key, value):
        settings = sublime.load_settings(file)

        # Vim Specific code
        if file == "ActualVim.sublime-settings":
            if not settings.get("enabled") and value:
                settings.set(key, value)
                sublime.save_settings(file)

            elif settings.get("enabled") and not value:
                settings.set(key, value)
                sublime.save_settings(file)
        # Everything else
        else:
            settings.set(key, value)
            sublime.save_settings(file)
