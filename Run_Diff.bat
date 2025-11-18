latexdiff --flatten --exclude-textcmd="cite,ref,citet,citep,acrshort,acrfull" --exclude-safecmd=glossaryentry,newglossaryentry D:\Documents\PhDThesisChanges\ThomasClarkeThesisOriginal/bibliography.bib D:\Documents\PhDThesisChanges\PhDThesis/bibliography.bib > diff.bib

latexdiff --flatten --exclude-textcmd="cite,ref,citet,citep,acrshort,acrfull" --exclude-safecmd=glossaryentry,newglossaryentry D:\Documents\PhDThesisChanges\ThomasClarkeThesisOriginal/main.tex D:\Documents\PhDThesisChanges\PhDThesis\main.tex > diff.tex

pdflatex --interaction=batchmode diff.tex