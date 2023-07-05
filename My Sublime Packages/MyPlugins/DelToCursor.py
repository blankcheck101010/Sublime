import sublime_plugin
import sublime


class DelToCursorCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        selections = self.view.sel()

        for i, selection in enumerate(selections):
            if i == 0:

                line_col_tup = self.view.rowcol(selection.begin())

                bol = self.view.text_point(line_col_tup[0], 0)
                point = selection.begin()

                del_reg = sublime.Region(bol, point)
                # sublime.message_dialog(str(del_reg))

                self.view.erase(edit, del_reg)
            else:
                return
