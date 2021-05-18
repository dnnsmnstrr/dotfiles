#!/bin/bash -e
if [ "$1" == "-h" ] ; then
    cat <<EOT
    Remove & reinstall all brew owned packages
    Fail on error to allow manual fixing
    Accept package name as arg1 to spec pick up point.
        $0 [<pickup point>]
    eg:
        $0
    or
        $0 ctags
            where <ctags> is the package to start from
EOT
    exit 1
fi

for l in $(brew list) ; do
    if [ "$1" ] ; then
        if [[ $l < $1 ]] ; then
            echo "skipping $l"
            continue
        fi
    fi
    echo "Remove $l"
    brew uninstall --ignore-dependencies $l 
    echo "Re-add $l"
    brew install $l
done