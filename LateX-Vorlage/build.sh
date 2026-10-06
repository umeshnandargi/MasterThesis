#!/bin/bash
# Build script for LaTeX document with nomenclature

pdflatex vorlage.tex
makeindex vorlage.nlo -s nomencl.ist -o vorlage.nls
pdflatex vorlage.tex
pdflatex vorlage.tex

echo "Build complete!"
