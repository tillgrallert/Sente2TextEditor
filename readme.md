The reference manager "Sente" for OSX has some built-in means to communicate with running text editors by invoking `cmd-Y` or "Cite in Word Processor". It will copy the Citation ID of the currently selected reference(s) wrapped in a delimiter of your choice (usually `{}`) to the first entry in a list of running word processors / text editors. However, neither is the order of the entries in this list known, nor can the order be edited and unfortunately Microsoft Word seems to be at the very top. This causes a lot of nuissance to those of use who use Scrivener or Sublime Text or Ulysses for writing while still having Word open for some other purposes.

The applescript in this repository remedies this short-coming by providing an editable selection of running text editing software to the user upon running the script in order to select one as a target for the citation. In addition, the script treats any text selected in Sente as a page-range and copies the correct citation identifier to the text editor, i.e. {Grallert 2014@14}.

## The script

Since applescript files (`.scpt`) are compressed and cannot be displayed at Github, I provide the script in full below:

~~~{.AppleScript}
(* This script produces a Sente CitationID wrapped in curly braces and attaches text selected in Sente as page numbers after the @ symbol. I.e. {CitationIDofSelectedReference@SelectedText}. It then tries to copy this string into a text editor of the user's choice. *)

(* v3: completely rewrote the script*)

on process(input)
    
    set thePn to input
    -- the clipboard should be reset to its original content after the end of this script
    set theClipboardBefore to the clipboard as text
    
    -- activeEditorsList will be populated in the course of the script's execution
    set activeEditorsList to {}
    -- set a list of text editors whose running status is to be checked
    set editorsList to {"Scrivener", "Ulysses", "Microsoft Word", "TextEdit", "nvALT", "Sublime Text", "Pages"}
    
    --    Generate variable with running apps
    tell application "System Events"
        set activeProcesses to (name of every process)
    end tell
    
    --    Generate list of running text editors    
    repeat with appName in editorsList
        if appName is in activeProcesses then
            set activeEditor to appName
            set end of activeEditorsList to appName
        end if
    end repeat
    
    -- ask user to select from running text editors if there are more then one. Otherwiese continue with the sole running text editor or abort the script
    set editorCount to (count activeEditorsList)
    -- if there is only one active editor: continue without user input
    if editorCount = 1 then
        set targetApp to (item 1 of activeEditorsList) as text
        -- handle more than one editor through user input
    else if editorCount > 0 then
        set targetApp to (choose from list activeEditorsList with title "Running text editors" with prompt "Pick a text editor to send the reference's CitationID to" default items (item 1 of activeEditorsList) without multiple selections allowed) as text
    else
        -- Handle 0 items
        display dialog "There are no running text editors" buttons {"OK"}
        set targetApp to "false"
    end if
    
    
    -- this combines the Citation ID of the selected reference with the selected text into the required string
    tell application "Sente 6"
        set theRef to (retrieve selected references current library as tags)
        if thePn is "" then
            set output to "{" & theRef & "}"
        else
            set output to "{" & theRef & "@" & thePn & "}"
        end if
        set the clipboard to output as text
    end tell
    
    -- this calls the pbpaste shell script to strip out any formatting
    -- this also, unfortunately, prevents full unicode output
    -- do shell script "pbpaste -Prefer txt | pbcopy"
    
    -- paste the CitationID and page number into the selected text editor
    if targetApp is not "false" then
        tell application targetApp
            activate
            tell application "System Events"
                keystroke "v" using command down
            end tell
        end tell
    end if
    -- reset the clipboard to its original content, unfortunately, this takes place before the citation ID has been pasted into the targetApp
    -- set the clipboard to theClipboardBefore as text
end process

~~~


## Installation

There are two ways of installing this script:

1. Compile your own version: 
    - Copy the full text of the script into Apple's Automator action "Run AppleScript"
    - set the options to "receives selected text in Sente"
    - save as service
    - install the service to `Library/Services` or `~/Library/Services`. One can then assign a keyboard shortcut to run this service from within Sente.
2. Install the service "ReferenceThisNoteAppOfYourChoice.service" from this repository by copying it to `Library/Services` or `~/Library/Services`. One can then assign a keyboard shortcut to run this service from within Sente.

## Adapt the script to your needs

If you want to add or remove applications or change the order of appearance of running applications, you just edit the following line in the applescript:

~~~{.AppleScript}
set editorsList to {"Scrivener", "Ulysses", "Microsoft Word", "TextEdit", "nvALT", "Sublime Text", "Pages"}
~~~