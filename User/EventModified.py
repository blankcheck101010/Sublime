import time
from datetime import datetime
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler


class Watcher:
    DIRECTORY_TO_WATCH = "/Users/Saul/Documents/GitHub/Sublime/User"

    def __init__(self):
        self.observer = Observer()

    def run(self):
        event_handler = Handler()
        self.observer.schedule(event_handler, self.DIRECTORY_TO_WATCH, recursive=True)
        self.observer.start()
        try:
            while True:
                time.sleep(5)
        except:
            self.observer.stop()
            print "Error"

        self.observer.join()


class Handler(FileSystemEventHandler):

    @staticmethod  # this decorator allows you to use event instead of self for first arg
    def on_modified(event):  # event class passed into method
        full_filepath = event.src_path
        delimiter = full_filepath.rfind("/")
        filename = full_filepath[delimiter + 1:]

        format = "%H:%M:%S %a %b %d %Y"
        utcTime = datetime.utcnow()
        time_curr = 'modified at ' + utcTime.strftime(format)

        with open('trigger_file.txt', 'r') as file:
            # read a list of lines into data
            trigger_time = file.read()

        if event.is_directory or time_curr == trigger_time:  # we only care about file modifications
            return None

        elif event.event_type == 'modified':
            # Taken any action here when a specific file is modified.
            print "Received modified event - %s." % event.src_path
            # /Users/Saul/Documents/GitHub/Sublime/User/Preferences.sublime-settings.

            if filename == 'Preferences.sublime-settings':
                lookup = 'font_size'
                line_num = 0
                with open(filename, 'r+') as f:
                    for num, line in enumerate(f):
                        if lookup in line:
                            line_num = num
                            break

                with open(filename, 'r') as file:
                    # read a list of lines into data
                    data = file.readlines()

                data[line_num] = data[line_num][:-1] + ' // #gitignore\n'

                with open('trigger_file.txt', 'w') as file:
                    file.writelines(time_curr)

                with open(filename, 'w') as file:
                    file.writelines(data)


if __name__ == '__main__':
    w = Watcher()
    w.run()
