if [[ -n "${BASH_SOURCE[0]}" ]]; then
  _this_script="`realpath ${BASH_SOURCE[0]}`"
  _shell_name=bash
else
  _this_script="`realpath $0`"
  if [[ -n "$ZSH_NAME" ]]; then
    _shell_name=zsh
  else
    _shell_name=$(basename $SHELL)
  fi
fi

_tspkg_root=$(dirname $(dirname $(cd $(dirname ${_this_script}) && pwd)))
source ${_tspkg_root}/local_setup.${_shell_name}

unset _tspkg_root
unset _this_script
unset _shell_name

