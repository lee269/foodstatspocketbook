# foodstatspocketbook
Experiment in using Rmarkdown to generate
[Govspeak](https://govspeak-preview.herokuapp.com) files and charts for the
pocketbook.

## Workflow:

1. Update/add tidy csv files into the data folder for items that are not going
to be Govspeak toggle charts.

2. Revise the Rmd commentary as appropriate. Optionally update the parameters
for new data files, or change them in the render command (see next).

3. render the Rmd file as markdown (doc is set up for this)

4. Output defaults to the output folder (not in this repo). Markdown is stored
in there, plots/images should be generated in output/figures folder. Datafiles
are copied to the output/data folder.

5. Tweak the generated markdown files to conform to Govspeak standards (see
Issues below).

6. Your publication is ready for upload to www.gov.uk!

## Issues:

* Govspeak that includes dollar signs, eg $A, $CTA etc messes up the content -
pandoc evaluates it as TeX math. I cannot figure out how to tell it not to.
Turning off the tex_math_dollars extension doesnt work. Partial solution to
`cat` print the markdown which successfully outputs the Govspeak and respects
line breaks but R ## comments will need to be removed before publication.

* Charts: you need to check that the !!<number> Govspeak references for charts
are correctly in place, and remove any pandoc generated []() links to figures
from the markdown.

* Tables: pipe tables are rendered fine. But pandoc inserts a newline between
the bottom of the table and the, eg, {barchart} Govspeak markdown for toggle
charts. You need to ensure any toggle chart markdown is immediately below the
table.


