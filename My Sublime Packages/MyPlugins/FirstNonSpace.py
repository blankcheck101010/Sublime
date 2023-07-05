import sublime_plugin
import sublime


class FirstNonSpaceCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        selections = self.view.sel()

        for i, selection in enumerate(selections):
            if i == 0:

                line_col_tup_start = self.view.rowcol(selection.begin())
                bol = self.view.text_point(line_col_tup_start[0], 0)
                prev_point = selection.begin() - 1
                char = self.view.substr(prev_point)
                if char != ' ':
                    return

                while prev_point > bol and char == ' ':
                    point = prev_point
                    prev_point = point - 1
                    char = self.view.substr(prev_point)

                self.view.sel().clear()
                self.view.sel().add(point)
