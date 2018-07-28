#!/usr/bin/env perl

# Commands
$latex            = 'uplatex -synctex=0 -halt-on-error';
$latex_silent     = 'uplatex -synctex=0 -halt-on-error -interaction=batchmode';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
# $bibtex           = 'upbibtex %O %B';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';

# Max number of typeset
$max_repeat       = 5;

# Make pdf via dvi
$pdf_mode   = 3;

# Overwrite setting
$pvc_view_file_via_temporary = 0;
