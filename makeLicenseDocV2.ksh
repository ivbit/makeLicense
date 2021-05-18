#!/bin/ksh

# Intellectual property information START
# 
# Copyright 2020 Ivan Bityutskiy
# 
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
# 
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
# 
# Intellectual property information END

# Define functions START
function syntax
{
  print -u2 -- '\033[31mERROR creating file!\033[0m'
  exit 1
}
# Define functions END

# Define variables START
typeset currentYear="$(date +%Y)"
typeset authorName=''
typeset authorEmail=''
typeset copyrightHeader="Copyright (c) $currentYear $authorName $authorEmail\n"
typeset licenseText='Permission to use, copy, modify, and distribute this documentation for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE DOCUMENTATION IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS DOCUMENTATION INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS DOCUMENTATION.'
typeset licenseFile='LICENSE'
# Define variables END

# Create LICENSE file START
exec 9>| "./$licenseFile"
(( $? )) && syntax

print -u9 -- "$copyrightHeader"
(( $? )) && syntax

print -u9 -- "$licenseText"
(( $? )) && syntax

exec 9>&-

print -u2 -- "\n$PWD/$licenseFile was successfully created.\n"
# Create LICENSE file END

# END OF SCRIPT

