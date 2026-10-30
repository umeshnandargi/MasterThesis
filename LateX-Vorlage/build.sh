#!/bin/bash
# Build script for LaTeX document with nomenclature

pdflatex -synctex=1 -interaction=nonstopmode vorlage.tex
makeindex vorlage.nlo -s nomencl.ist -o vorlage.nls
pdflatex -synctex=1 -interaction=nonstopmode vorlage.tex
pdflatex -synctex=1 -interaction=nonstopmode vorlage.tex

echo "Build complete!"
