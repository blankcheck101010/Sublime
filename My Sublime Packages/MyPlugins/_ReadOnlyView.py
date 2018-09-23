import sublime
import sublime_plugin



class ReadOnlyView(sublime_plugin.EventListener):

    def on_activated(self, view):
        if view.is_read_only():
            quit()
            # sublime.message_dialog('Hey thehhue, I am readonly :)')

            # sublime.message_dialog('Not readonly :(')
