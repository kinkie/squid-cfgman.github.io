#!/usr/bin/env perl

while (<>) {
    unless ( m!^ \* \[(\S*)\]\((\S*)\)$! ) {
        print;
        next;
    }
    my $title=$1;
    my $page=$2;

    print "<a name='$title' />\n{% include $2 %}\n";
}
