echo 'Loaded ~/.bash_profile'

# Add GNU Stow bin to path
if  [ -d "/home/goodwintrr/local/bin" ]; then
  export PATH="/home/goodwintrr/local/bin${PATH:+:${PATH}}"
fi

if [ -d "/home/goodwintrr/.local/bin" ]; then
  export PATH="/home/goodwintrr/.local/bin${PATH:+:${PATH}}"
fi

#Add GNU Stow man pages to manpath
if [ -d "/home/goodwintrr/local/man" ]; then
  export MANPATH="/home/goodwintrr/local/bin${MANPATH:+:${PATH}}"
fi

#Add GNU Stow libs to LD_LIBRARY_PATH
if [ -d "/home/goodwintrr/local/lib" ]; then
  export LD_LIBRARY_PATH="/home/goodwintrr/local/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"
  export CPATH="/home/goodwintrr/local/include${CPATH:+:${CPATH}}"
  if [ -d "/home/goodwintrr/local/lib/pkgconfig" ]; then
    export PKG_CONFIG_PATH="/home/goodwintrr/local/lib/pkgconfig${PKG_CONFIG_PATH:+L${PKG_CONFIG_PATH}}"
  fi
fi

if [ -d "/home/goodwintrr/local/stow" ]; then
  export STOWPATH="/home/goodwintrr/local/stow"
fi


if [ -f "/etc/bash.bashrc" ]; then
  echo 'Loading /etc/bash.bashrc'
  source /etc/bash.bashrc
fi

if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
