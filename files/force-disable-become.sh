#!/bin/sh -e

# TODO support doas with password

if test $# = 1; then
  eval exec /bin/sh -c $1
fi

while test $# != 0 && test ":$1" != ":-u" && test ":$1" != ":-c" && test ":$1" != ":-e"; do
  shift
done

if test ":$1" = ":-u"; then
  shift && shift
  if $1 = 1; then
    exec /bin/sh -c "$1"
  else
    exec "$@"
  fi
fi

if test ":$1" = ":-c"; then
  shift && eval exec $@
fi

if test ":$1" = ":-e"; then
  shift && exec "$@"
fi

exit 1
