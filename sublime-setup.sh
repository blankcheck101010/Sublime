### Sublime Setup ###

# Note - The sublime project 'Github' will be unique. So do not simlink that project


# Install package control on sublimetext3
rm -rf ~/'Library/Application Support/Sublime Text/Packages/User'
mkdir ~/'Library/Application Support/Sublime Text/Sublime Projects'

ln -s ~/'Documents/GitHub/Sublime/My Sublime Packages/MyMacros' ~/'Library/Application Support/Sublime Text/Packages/'
ln -s ~/'Documents/GitHub/Sublime/My Sublime Packages/MyPlugins' ~/'Library/Application Support/Sublime Text/Packages/'
ln -s ~/'Documents/GitHub/Sublime/User' ~/'Library/Application Support/Sublime Text/Packages/'

# First copy the project files over
cp ~/'Documents/GitHub/Sublime/Sublime Projects/Python.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
cp ~/'Documents/GitHub/Sublime/Sublime Projects/SQL.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
cp ~/'Documents/GitHub/Sublime/Sublime Projects/Sublime.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
cp ~/'Documents/GitHub/Sublime/Sublime Projects/GitHub.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# cp ~/'Documents/GitHub/Sublime/Sublime Projects/Slalom.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# cp ~/'Documents/GitHub/Sublime/Sublime Projects/SGWS.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# cp ~/'Documents/GitHub/Sublime/Sublime Projects/CPP.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# cp ~/'Documents/GitHub/Sublime/Sublime Projects/FlaskApp.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# cp ~/'Documents/GitHub/Sublime/Sublime Projects/PersonalFinance.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# cp ~/'Documents/GitHub/Sublime/Sublime Projects/DataVisualization.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# cp ~/'Documents/GitHub/Sublime/Sublime Projects/DataArchitecture.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'

# Then open them with sublime text 3 so they're in your 'quick switch' projects
# Then close sublime text 3 and delete the files
rm ~/'Library/Application Support/Sublime Text/Sublime Projects/Python.sublime-project'
rm ~/'Library/Application Support/Sublime Text/Sublime Projects/SQL.sublime-project'
rm ~/'Library/Application Support/Sublime Text/Sublime Projects/Sublime.sublime-project'
# don't simlink github projects # rm ~/'Library/Application Support/Sublime Text/Sublime Projects/GitHub.sublime-project'
# rm ~/'Library/Application Support/Sublime Text/Sublime Projects/Slalom.sublime-project'
# rm ~/'Library/Application Support/Sublime Text/Sublime Projects/SGWS.sublime-project'
# rm ~/'Library/Application Support/Sublime Text/Sublime Projects/CPP.sublime-project'
# rm ~/'Library/Application Support/Sublime Text/Sublime Projects/FlaskApp.sublime-project'
# rm ~/'Library/Application Support/Sublime Text/Sublime Projects/PersonalFinance.sublime-project'
# rm ~/'Library/Application Support/Sublime Text/Sublime Projects/DataVisualization.sublime-project'
# rm ~/'Library/Application Support/Sublime Text/Sublime Projects/DataArchitecture.sublime-project'

# Finally, setup the links
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/Python.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/SQL.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/Sublime.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# don't simlink github projects # ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/GitHub.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/Slalom.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/SGWS.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/CPP.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/FlaskApp.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/PersonalFinance.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/DataVisualization.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
# ln -s ~/'Documents/GitHub/Sublime/Sublime Projects/DataArchitecture.sublime-project' ~/'Library/Application Support/Sublime Text/Sublime Projects'
