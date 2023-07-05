import sublime_plugin
import sublime


class LineMovementCommand(sublime_plugin.TextCommand):
    def run(self, edit, move, direction=None):
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

                elif move == 'comment':
                    change = 0
                    
                    if direction == 'above':
                        direction = above
                        change -= 1
                    elif direction == 'below':
                        direction = below
                        change += 1
                    line_dir = line_col_tup[0] + change

                    # block is for parsing out the filetype and then
                    # returning comment and length of comment
                    hash_comments = {
                        '.py': '#',
                        '.sublime-keymap': '//',
                        '.cpp': '//',
                        '.h': '//'
                    }
                    file_name = self.view.file_name()
                    ext_index = file_name.rfind('.')
                    file_extension = file_name[ext_index:]
                    comment = hash_comments[file_extension]
                    comment_len = len(comment)

                    # get the length of line
                    line = self.view.line(direction)
                    line_length = len(self.view.full_line(direction))

                    end = beg + line_length

                    if end - beg > comment_len:
                        # search for first nonspace in line
                        text = self.view.substr(line)
                        # sublime.message_dialog(str(text))

                        for i, char in enumerate(text):
                            if char == ' ':
                                continue
                            else:
                                is_comment_beg = self.view.text_point(line_dir, i)
                                is_comment_end = self.view.text_point(line_dir, i + comment_len)
                                comment_str = self.view.substr(sublime.Region(is_comment_beg, is_comment_end))

                                if comment_str == comment:
                                    start_point = self.view.text_point(line_col_tup[0], line_col_tup[1])
                                    self.view.insert(edit, start_point, comment_str +' ')
                                break

            else:
                return
