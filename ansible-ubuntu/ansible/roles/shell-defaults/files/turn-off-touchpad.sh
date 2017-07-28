#/bin/bash

xinput list | grep Syn | awk '{ print $6 }' | sed 's/^[^=]*=//' | xargs -I{} xinput --disable {}
