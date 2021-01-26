

local dir    "C:\Users\azeve\AppData\Roaming\Notepad++" // modify this
local source "https://raw.githubusercontent.com/randrescastaneda/NPplusplus_to_Stata/master"

local files "shortcuts.xml stylers.xml userDefineLang.xml"
foreach file of local files {
  copy "`source'/`file'" "`dir'/`file'", replace
}

