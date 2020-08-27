#!/usr/bin/env perl -w

use strict;
use warnings;
use v5.30.0;

if (not @ARGV) {
	say "./$0 <file>";
	exit(1);
}

foreach my $file (@ARGV) {
    if ( -f $file && $file =~ /wiki$/ ) {
        ( my $copyFile = $file ) =~ s/wiki$/md/;
        say "$file -> $copyFile";
        open( my $f,         '<', $file );
        open( my $escritura, '>', $copyFile );
        while (<$f>) {
            s/^=\s?(.*)\s?=$/# $1/;
            s/^==\s?(.*)\s?==$/## $1/;
            s/^===\s?(.*)\s?===$/### $1/;
            s/^====\s? (.*)\s?====$/#### $1/;
            s/^=====\s?(.*)\s?=====$/##### $1/;
            s/^======\s?(.*)\s?======$/###### $1/;
            s/\{\{\{|\}\}\}/\`\`\`/g;
            s/\{\{\s*(.*?)\|\s*(.*?)\}\}/![$2]\($1\)/g;
            s/\{\{\s*(.*)\}\}/![$1]\($1\)/g;
            s/\[\[\s*(.*?)\|\s*(.*?)\]\]/[$2]\($1\)/g;
            s/\[\[\s*(.*?)\]\]/[$2]\($1\)/g;
            s/\*(.*?)\*/\*\*$1\*\*/g;
            s/_(.*?)_/\*$1\*/g;
            print $escritura $_;
        }
        close($escritura);
        close($f);
    }
    else {
        say "$file no es archivo valido";
    }

}
