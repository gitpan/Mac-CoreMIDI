#!/usr/bin/perl

use lib qw(../blib/lib ../blib/arch);
use strict;
use warnings;

use Mac::CoreMIDI qw(GetDevices GetSources GetDestinations GetExternalDevices);

foreach (GetDevices GetSources GetDestinations GetExternalDevices) {
    $_->Dump();
}


