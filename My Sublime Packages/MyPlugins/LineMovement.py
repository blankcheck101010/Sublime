import sublime_plugin
import sublime


class LineMovementCommand(sublime_plugin.TextCommand):
    def run(self, edit, move):
        selections = self.view.sel()

        for i, selection in enumerate(selections):
            if i == 0:
                line_col_tup = self.view.rowcol(selection.begin())
                # sublime.message_dialog(str(line_col_tup))
                beg = self.view.text_point(line_col_tup[0], 0)
                above = self.view.text_point(line_col_tup[0] - 1, 0)
                below = self.view.text_point(line_col_tup[0] + 1, 0)
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
                    self.view.erase(edit, delete_reg)

                elif move == 'create':
                    move_to = self.view.text_point(line_col_tup[0] + 1, 0)
                    self.view.insert(edit, move_to, '\n')

                elif move == 'delete':
                    line_below = self.view.line(below)
                    below_text = self.view.substr(line_below)

                    for char in below_text:
                        if char != ' ':
                            return

                    delete_reg = self.view.full_line(line_below)
                    self.view.erase(edit, delete_reg)

                elif move == 'spaces':

                    point = self.view.text_point(line_col_tup[0], line_col_tup[1])

                    line_length = len(self.view.full_line(beg))
                    end = beg + line_length

                    right_region = self.view.substr(sublime.Region(point, end))
                    left_region = self.view.substr(sublime.Region(beg, point))
                    left_region = left_region[::-1]

                    cnt_del = 0

                    for char in right_region:
                        if char != ' ':
                            break
                        cnt_del += 1
                    delete_right = sublime.Region(point, point + cnt_del)
                    self.view.erase(edit, delete_right)

                    if cnt_del > 1:
                        return

                    cnt_del = 0
                    for char in left_region:
                        if char != ' ':
                            break
                        cnt_del += 1
                    delete_left = sublime.Region(point - cnt_del, point)
                    self.view.erase(edit, delete_left)

            else:
                return
