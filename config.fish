###
# Find function files in ./functions/
###

# Shortcuts

alias reload='source ~/.config/fish/config.fish'
alias cl='clear'
alias config='code ~/.config/fish/config.fish'
alias cd3='cd ..; and cd ..'
alias me='echo 21680'
alias find-me='lsof -i:21680'
alias kill-me='fuser -k 21680/tcp'
alias kill-3000='fuser -k 3000/tcp'
alias kill-5000='fuser -k 5000/tcp'
alias renew='cd /cs/home/USERNAME/Documents/scratch-pad/python-automation; and set PATH $HOME/bin $PATH; and source automation/bin/activate.fish; and python renew-library.py'

# source for toggle: https://askubuntu.com/questions/625761/how-to-change-displays-position-from-command-line#comment887764_625790
alias toggle-both1='xrandr --output HDMI-1 --pos 0x0; and xrandr --output DVI-D-1 --pos 1920x0'
alias toggle-both2='xrandr --output HDMI-2 --pos 0x0; and xrandr --output DVI-D-2 --pos 1920x0'
alias toggle-hdmi1='xrandr --output HDMI-1 --pos 0x0; and xrandr --output HDMI-2 --pos 1920x0'
alias toggle-hdmi2='xrandr --output HDMI-2 --pos 0x0; and xrandr --output HDMI-1 --pos 1920x0'

# Applications

alias chrome='/usr/bin/google-chrome'
alias lo='libreoffice'
alias open='nautilus'
alias jvc='javac *.java'
alias intellij='/cs/home/USERNAME/.config/fish/functions/resources/intellij'

# Websites

## Use "double quotatios" around Notion URL to work around the 'no matches for wildcard' error
alias notion='chrome "notion.so"'
alias stud='chrome https://studres.cs.st-andrews.ac.uk/'
alias mys='chrome https://mysaint.st-andrews.ac.uk/uPortal/f/home/normal/render.uP'
alias mms='chrome https://mms.st-andrews.ac.uk/mms/user/me/Modules'
alias moodle='chrome https://moody.st-andrews.ac.uk/moodle/'
alias outlook='chrome https://outlook.office.com/mail/inbox'
alias inbox='chrome https://inbox.google.com'
alias calendar='chrome "https://calendar.google.com/calendar/r/week?pli=1"'

# Folders

alias home='cd ~/'
alias doc='cd ~/Documents'
alias proj='cd ~/Documents/MODULE/W01-Practical'
alias pad='cd ~/Documents/scratch-pad'
alias down='cd ~/Downloads'

alias cs='cd ~/Documents/CS_MODULE'
alias handy='cd ~/Documents/CompSci-Handybook'

alias gofish='cd ~/.config/fish'
alias gofun='cd ~/.config/fish/functions'
alias web='cd ~/nginx_default'

# Abbreviations (for my custom aliases)

alias op='open .'
alias pro='project'
alias email='outlook'
alias cal='calendar'
alias big3='inbox; and outlook; and notion'
alias refresh='reload'
alias scratch='pad'
alias pro='proj'