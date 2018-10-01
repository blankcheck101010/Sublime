from terminal_.file_watcher import *
import psutil

pids = psutil.pids()
python_processes = [process for process in pids if psutil.Process(process).name() == 'python2.7']

pid = os.getpid()

class_module = sys.modules['terminal_.file_watcher']
delimiter = str(class_module).rfind("' from '")
class_fp = str(class_module)[delimiter + 8:-3]
delimiter = str(class_fp).rfind("/")
class_base = str(class_fp)[:delimiter + 1]
processes_fp = class_base + 'processes/sublime_preferences.txt'

with open(processes_fp, 'r') as file:
    current_process = int(file.read())

if current_process in python_processes:
    quit()

with open(processes_fp, 'w') as file:
    file.write(str(pid))

w = Watcher(directory="/Users/Saul/Documents/GitHub/Sublime/User")
w.run()
