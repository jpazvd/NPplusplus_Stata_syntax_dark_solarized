/*
Getting a nice syntax highlighting

I do not like the Stata syntax highlighting suggested by Huebler, so based on the color palette Solarized created by Ethan Schoonover, I developed my own. You may find it my GitHub repository. Basically, this what you need to do.

Run in Stata the following lines (you can do it using the Stata do-file editor. Probably, this will be the last time you’ll use it!). Make sure to modify the directory of the first local and also make sure that, after modifying the directory path, the folder exists. It might be the case that the AppData/Roaming/Notepad++ directory is not under the users directory, so you would have to find it. Keep in mind that the AppData directory is generally hidden so, even though you can’t see in the windows explorer, you can access it by providing the full directory path. In order to see hidden directories, I recommend using a file management tool like Total Commander.

* https://randrescastaneda.rbind.io/post/notepadpp/
*/

local dir    "C:\Users\wb255520\AppData\Roaming\Notepad++" // modify this
local source "https://raw.githubusercontent.com/randrescastaneda/NPplusplus_to_Stata/master"

local files "shortcuts.xml stylers.xml userDefineLang.xml"
foreach file of local files {
  copy "`source'/`file'" "`dir'/`file'", replace
}