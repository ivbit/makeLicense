

<# Intellectual property information START

Copyright 2020 Ivan Bityutskiy

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

Intellectual property information END #>

<# Description START

This script creates my LICENSE file,
containing my copyright information.

Desctiption END #>

# Define variables START
[string] $currentYear = (Get-Date).ToString('yyyy')
[string] $authorName=''
[string] $authorEmail=''
[string] $copyrightHeader="Copyright (c) $currentYear $authorName $authorEmail"
[string] $licenseText='Permission to use, copy, modify, and distribute this documentation for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE DOCUMENTATION IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS DOCUMENTATION INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS DOCUMENTATION.'
[string] $licenseFullText= "{0}`r`n`r`n{1}" -f $copyrightHeader, $licenseText
[string] $licenseFile="$PSScriptRoot\LICENSE"
# Define variables END

# Create LICENSE file START
[System.IO.File]::WriteAllLines($licenseFile, $licenseFullText)
# Create LICENSE file END

# END OF SCRIPT

