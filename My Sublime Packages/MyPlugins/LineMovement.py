import sublime_plugin
import sublime


class LineMovementCommand(sublime_plugin.TextCommand):
    def run(self, edit, move):
        selections = self.view.sel()

        for i, selection in enumerate(selections):
            if i == 0:
                line_col_tup = self.view.rowcol(selection.begin())
                # sublime.message_dialog(str(line_col_tup))
                above = self.view.text_point(line_col_tup[0] - 1, 0)
                # sublime.message_dialog(str(above))

                if move == 'down':
                    move_to = self.view.text_point(line_col_tup[0], 0)
                    self.view.insert(edit, move_to, '\n')

                elif move == 'up':
                    line_above = self.view.line(above)
                    above_text = self.view.substr(line_above)

                    for char in above_text:
                        if char != ' ':
                            return

                    delete_reg = self.view.full_line(line_above)
                    # sublime.message_dialog(str(delete_reg))
                    self.view.erase(edit, delete_reg)
                elif move == 'create':
                    pass
                elif move == 'delete':
                    pass
            else:
                return
