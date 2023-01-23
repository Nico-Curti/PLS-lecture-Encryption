#!/usr/bin/env pwsh

$scriptdir = Split-Path $PSCommandPath
$presentation = "$scriptdir/Presentazione.md"

reveal-md.cmd $presentation --static
Copy-Item -Path "$scriptdir/img" -Destination "$scriptdir/_static/" -Recurse -Force -ErrorAction SilentlyContinue
#reveal-md.cmd $presentation --print $presentation.pdf --print-size 1280x720
