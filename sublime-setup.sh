### Sublime Setup ###
# Install package control on sublimetext3
rm -rf ~/'Library/Application Support/Sublime Text 3/Packages/User'
mkdir ~/'Library/Application Support/Sublime Text 3/Sublime Projects'

ln -s ~/'Documents/GitHub/Sublime/My Sublime Packages/MyMacros' ~/'Library/Application Support/Sublime Text 3/Packages/'
ln -s ~/'Documents/GitHub/Sublime/My Sublime Packages/MyPlugins' ~/'Library/Application Support/Sublime Text 3/Packages/'
ln -s ~/'Documents/GitHub/Sublime/User' ~/'Library/Application Support/Sublime Text 3/Packages/'

# First move the project files over
mv ~/'Documents/GitHub/Sublime/Sublime Projects/Python.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
mv ~/'Documents/GitHub/Sublime/Sublime Projects/SQL.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
mv ~/'Documents/GitHub/Sublime/Sublime Projects/Sublime.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
mv ~/'Documents/GitHub/Sublime/Sublime Projects/GitHub.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
mv ~/'Documents/GitHub/Sublime/Sublime Projects/Slalom.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
# mv ~/'Documents/GitHub/Sublime/Sublime Projects/SGWS.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
# mv ~/'Documents/GitHub/Sublime/Sublime Projects/CPP.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
# mv ~/'Documents/GitHub/Sublime/Sublime Projects/FlaskApp.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'

# Then open them with sublime text 3 so they're in your 'quick switch' projects
# Then close sublime text 3 and delete the files
rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/Python.sublime-project'
rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/SQL.sublime-project'
rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/Sublime.sublime-project'
rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/GitHub.sublime-project'
rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/Slalom.sublime-project'
# rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/SGWS.sublime-project'
# rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/CPP.sublime-project'
# rm ~/'Library/Application Support/Sublime Text 3/Sublime Projects/FlaskApp.sublime-project'

# Finally, setup the links
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/Python.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/SQL.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/Sublime.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/GitHub.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/Slalom.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/SGWS.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/CPP.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/FlaskApp.sublime-project' ~/'Library/Application Support/Sublime Text 3/Sublime Projects'
