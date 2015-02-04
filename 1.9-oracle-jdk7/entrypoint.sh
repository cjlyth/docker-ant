#!/bin/bash
cmd="${1}"; shift
case "${cmd}" in
    fetch) ant -f $ANT_HOME/fetch.xml -Ddest=system "${@}";;
	diag|diagnostics) ant -diagnostics "${@}" ;;
	*) exec "${cmd}" "${@}" ;;
esac
