# csv-folder-to-xlsx

## Motivation & Goals

It's far too often that I have a folder full of CSVs that I want to treat as a single workbook in Excel or LibreOffice. Despite how amazingly useful it would be to import multiple CSVs to load a single workbook, the only action available in both programs was loading one CSV at a time into a wizard and manually renaming each sheet to something that made more sense than "Sheet 1" when the CSVs already had descriptive filenames. It was a tedious process.

One would think that some simple VBA would do the trick for converting to XLSX, since it's Excel-specific; but VBA was failing me since the OS X version of Excel 2011 has far too many exceptions as far as standard file operations go, which is bad if I want to leave my work behind for others who may or may not be on OS X.

I realized I could pump out a small ruby script to do the same job in less time than it would take for me to re-live my repressed VB days. This also comes with the added bonus of me not caring what platform I'm on.

## Usage

*csv-xlsx* _[directory]_ _[output xlsx]_
