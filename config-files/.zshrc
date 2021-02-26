# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jo/.oh-my-zsh"

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_ICON_PADDING=moderate
# ----------------------------------------------------------- #

# PROMPT GENERAL
POWERLEVEL9K_INSTANT_PROMPT=verbose
POWERLEVEL9K_TRANSIENT_PROMPT=same-dir
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Connect left prompt lines with these symbols. You'll probably want to use the same color
# as POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_FOREGROUND below.
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%240F╭─'
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX='%240F├─'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%240F╰─'
# Connect right prompt lines with these symbols.
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_SUFFIX=
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_SUFFIX=
POWERLEVEL9K_MULTILINE_LAST_PROMPT_SUFFIX=

# Filler between left and right prompt on the first prompt line. You can set it to ' ', '·' or
# '─'. The last two make it easier to see the alignment between left and right prompt and to
# separate prompt from command output. You might want to set POWERLEVEL9K_PROMPT_ADD_NEWLINE=false
# for more compact prompt if using using this option.
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR='─'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_BACKGROUND=
POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_GAP_BACKGROUND=
if [[ $POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR != ' ' ]]; then
  # The color of the filler. You'll probably want to match the color of POWERLEVEL9K_MULTILINE
  # ornaments defined above.
  POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_FOREGROUND=240
  # Start filler from the edge of the screen if there are no left segments on the first line.
  POWERLEVEL9K_EMPTY_LINE_LEFT_PROMPT_FIRST_SEGMENT_END_SYMBOL='%{%}'
  # End filler on the edge of the screen if there are no right segments on the first line.
  POWERLEVEL9K_EMPTY_LINE_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL='%{%}'
fi

# ----------------------------------------------------------- #

# PROMPT LEFT
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir dir_writable vcs)
## os_icon
POWERLEVEL9K_OS_ICON_BACKGROUND="slateblue1"
POWERLEVEL9K_OS_ICON_FOREGROUND="black"
## dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_DIR_ETC_BACKGROUND="greenyellow"
POWERLEVEL9K_DIR_ETC_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="greenyellow"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="lightsalmon1"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="salmon1"
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
## dir_writeable
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND='white'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND='red1'
## vcs 
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="black"
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="black"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="mediumspringgreen"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="indianred1"
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND="maroon"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="lightgoldenrod1"

# ----------------------------------------------------------- #


# PROMPT RIGHT
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time wifi load ram disk_usage battery time)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
## command_execution_time
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
## wifi
## load
# Segment in black and white
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="red1"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="white"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="yellow1"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="springgreen3"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="black"
# Colorize only the visual identifier
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="white"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="black"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="black"
## ram
POWERLEVEL9K_RAM_BACKGROUND="navajowhite1"
POWERLEVEL9K_RAM_FOREGROUND="black"
## disk_usage 
POWERLEVEL9K_DISK_USAGE_BACKGROUND='skyblue2'
POWERLEVEL9K_DISK_USAGE_FOREGROUND='black'
#POWERLEVEL9K_DISK_USAGE_ONLY_WARNING=true
POWERLEVEL9K_DISK_USAGE_WARNING_LEVEL=75
POWERLEVEL9K_DISK_USAGE_CRITICAL_LEVEL=90
## battery
POWERLEVEL9K_BATTERY_STAGES=''
POWERLEVEL9K_BATTERY_VERBOSE=false
## time
POWERLEVEL9K_TIME_BACKGROUND="white"
POWERLEVEL9K_TIME_FOREGROUND="black"
## user
POWERLEVEL9K_USER_ICON="\uf31a" # tux 
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='greenyellow'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='black'
# ----------------------------------------------------------- #



# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  alias-finder
  colored-man-pages
  copybuffer
  copydir
  copyfile
  extract
  screen
  systemd
  thefuck
  fzf
  z
  zsh-syntax-highlighting
  zsh_reload)

source $ZSH/oh-my-zsh.sh

# Enable fuck
eval "$(thefuck --alias)"
alias fuck='fuck -y'

# Sourcing my custom config
source ~/.jo_config

# Export locale settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
