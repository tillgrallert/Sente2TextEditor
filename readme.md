The reference manager "Sente" for OSX has some built-in means to communicate with running text editors by invoking `cmd-Y` or "Cite in Word Processor". It will copy the Citation ID of the currently selected reference(s) wrapped in a delimiter of your choice (usually `{}`) to the first entry in a list of running word processors / text editors. However, neither is the order of the entries in this list known, nor can the order be edited and unfortunately Microsoft Word seems to be at the very top. This causes a lot of nuissance to those of use who use Scrivener or Sublime Text or Ulysses for writing while still having Word open for some other purposes.

The applescript in this repository remedy this short-coming by providing an editable selection of running text editing software to the user upon running the script in order to select one as a target for the citation. In addition, the script treats any text selected in Sente as a page-range and copies the correct citation identifier to the text editor, i.e. {Grallert 2014@14}.


## Installation

Install the service "ReferenceThisNoteAppOfYourChoice.service" by copying it to Library/Services or ~/Library/Services. One can then assign a keyboard shortcut to run this service from within Sente.