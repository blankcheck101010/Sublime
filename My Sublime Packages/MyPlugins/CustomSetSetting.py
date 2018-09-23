import sublime
import sublime_plugin


class CustomSetSettingCommand(sublime_plugin.ApplicationCommand):
    def run(self, file, key, value):

        settings = sublime.load_settings(file)
        settings.set(key, value)
        sublime.save_settings(file)


        # old
        # if file == "ActualVim.sublime-settings":
            # if not settings.get("enabled") and value:
            #     settings.set(key, value)
            #     sublime.save_settings(file)
