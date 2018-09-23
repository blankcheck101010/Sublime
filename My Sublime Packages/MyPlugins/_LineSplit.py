import sublime_plugin
import sublime


class LineSplitCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        selections = self.view.sel()

        for i, selection in enumerate(selections):
            if i == 0:

                line_col_tup = self.view.rowcol(selection.begin())
                next_line_col_tup = self.view.rowcol(selection.begin() + 1)
                sublime.message_dialog(str(line_col_tup))
                sublime.message_dialog(str(next_line_col_tup))
                # quit()

                bol = self.view.text_point(line_col_tup[0], 0)
                point = selection.begin()

                first_reg = sublime.Region(bol, point)
                sublime.message_dialog(str(first_reg))

                split_reg = sublime.Region(point, point + 7)

                lines = self.view.split_by_newlines(split_reg)
                sublime.message_dialog(str(lines))
                quit()

                self.view.erase(edit, split_reg)
            else:
                quit()
