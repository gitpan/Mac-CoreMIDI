#!/usr/bin/perl

use lib qw(../blib/lib ../blib/arch);
use strict;
use warnings;

use Mac::CoreMIDI;
use Mac::CoreMIDI::Client;;

#my $c = Mac::CoreMIDI::Client->new(name => 'Perl');
my $c = MyClient->new(name => 'Perl');
Mac::CoreMIDI::RunLoopRun();

package MyClient;

use base qw(Mac::CoreMIDI::Client);

sub Update {
    print "Harhar! I am the updater!\n";
}