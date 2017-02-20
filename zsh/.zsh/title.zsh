#!/bin/bash
# Sets terminal title for programs which use an alternate screen buffer
# such as man, vi and less. See XTERM(1)
# With other commands, title with be overwritten unless PS1 is changed in
# $HOME/.bashrc

BIN=$1
shift

OPTS=''
while [ $# -gt 1 ] ; do
    OPTS=$OPTS" $1"
    shift
done

TARGET=$1

case "$BIN" in
man )
    PROGRAM="Man Page"
    ;;
less )
    PROGRAM="Less"
    ;;
* )
    PROGRAM=${BIN}
    ;;
esac

echo -en "\033]0;${TARGET} - ${PROGRAM}\a"

$BIN $OPTS $TARGET
