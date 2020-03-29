CURR_DIR="$(cd "$(dirname "$0")" && pwd)"
plugin_name='xxh-plugin-bash-ohmybash'

if [[ -v OSH_THEME ]]; then
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Found OSH_THEME=$OSH_THEME
  fi
else
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Set default OSH_THEME=agnoster
  fi
  export OSH_THEME="agnoster"
fi

if [[ -v plugins ]]; then
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Found plugins=$plugins
  fi
else
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: 'Set default plugins=(git bashmarks)'
  fi
  export plugins=(git bashmarks)
fi

if [[ -v aliases ]]; then
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Found aliases=$aliases
  fi
else
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: 'Set default aliases=(general)'
  fi
  export aliases=(general)
fi

if [[ -v completions ]]; then
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: Found completions=$completions
  fi
else
  if [[ $XXH_VERBOSE == '2' ]]; then
    echo $plugin_name: 'Set default completions=(git composer ssh)'
  fi
  export completions=(git composer ssh)
fi

export OSH=$CURR_DIR/oh-my-bash
source $OSH/oh-my-bash.sh
