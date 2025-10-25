latexdiff --flatten --exclude-textcmd="cite,ref,citet,citep,acrshort,acrfull" --exclude-safecmd=glossaryentry,newglossaryentry C:\Users\tomis\ThomasClarkeThesisOriginal/bibliography.bib C:\Users\tomis\PhDThesis/bibliography.bib > diff.bib

latexdiff --flatten --exclude-textcmd="cite,ref,citet,citep,acrshort,acrfull" --exclude-safecmd=glossaryentry,newglossaryentry C:\Users\tomis\ThomasClarkeThesisOriginal/main.tex C:\Users\tomis\PhDThesis/main.tex > diff.tex

pdflatex --interaction=batchmode diff.tex