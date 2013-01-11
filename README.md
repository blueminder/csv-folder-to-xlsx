# csv-folder-to-xlsx

## Motivation & Goals

It's far too often that I have a folder full of CSVs that I want to treat as a single workbook in Excel or LibreOffice. Despite how amazingly useful it would be to import multiple CSVs to load a single workbook, the default course of action was loading an individual CSV at a time in a wizard.

One would think that some simple VBA would do the trick for converting to XLSX, since it's Excel-specific; but VBA was failing me since the OS X version of Excel 2011 has far too many exceptions as far as standard file operations go. I realized I could pump out a small ruby script to do the same job in less time than it would take for me to re-live my repressed VB days. This also comes with the added bonus of me not caring what platform I'm on.

## Usage

*csv-xlsx* _[directory]_ _[output xlsx]_
