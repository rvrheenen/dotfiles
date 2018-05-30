# reload zshrc
alias reload!='. ~/.zshrc'

# Good 'ol Clear Screen command
alias cls='clear'

# Ping Google
alias pinggl='ping 8.8.8.8'

# Google Chrome alias
alias chrome='open -a "Google Chrome"'

# Go to workspaces
alias work="cd ${WORKSPACES}"

# Perform 'ls' after 'cd' if successful.
cdls() { cd "$@" && ls; }
alias cd='cdls'

# Open man page as PDF
function manpdf() {
 man -t "${1}" | open -f -a /Applications/Preview.app/
}

# Set OpenKattis aliases if the file exists
if [[ -a ${WORKSPACES}/OpenKattis/scripts/set_aliases.sh ]]
then
  source ${WORKSPACES}/OpenKattis/scripts/set_aliases.sh
fi

# get the weather
alias weather='function _weather(){ curl -4 http://wttr.in/$1\?2q$2; };_weather'
