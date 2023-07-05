# import sublime
# import sublime_plugin



# class ReadOnlyCommand(sublime_plugin.TextCommand):

#     def run(self, edit):
#         quit()

#         if self.view.is_read_only():
#             setts = sublime.load_settings('Preferences.sublime-settings')
#             ignored = setts.get('ignored_packages')

#             if 'NeoVintageous' in ignored:
#                 ignored.remove('NeoVintageous')
#             else:
#                 ignored.append('NeoVintageous')

#             setts.set('ignored_packages', ignored)
#             sublime.save_settings('Preferences.sublime-settings')

#             # sublime.message_dialog(ignored)
#             # sublime.message_dialog('I am')
