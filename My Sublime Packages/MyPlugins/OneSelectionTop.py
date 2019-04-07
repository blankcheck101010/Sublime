import sublime_plugin
import sublime


class OneSelectionTopCommand(sublime_plugin.TextCommand):

    '''
    When Triggered, get count of current selection
    '''

    def run(self, edit):
        selections = self.view.sel()
        # path = sublime.packages_path()
        # sublime.message_dialog(path)


        for i, selection in enumerate(selections):
            if i == 0:
                # line_col_tup = self.view.rowcol(selection.begin())
                # sublime.message_dialog(str(line_col_tup))

                point = selection.begin()
                # sublime.message_dialog(str(point))

                self.view.sel().clear()
                self.view.sel().add(point)

                # region = sublime.Region(point, point + 1)
                # sublime.message_dialog(str(region))

                # self.view.insert(edit, point, ' ')
                # self.view.erase(edit, region)
