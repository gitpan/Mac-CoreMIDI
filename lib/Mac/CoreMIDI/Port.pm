package Mac::CoreMIDI::Port;

use 5.006;
use strict;
use warnings;

use base qw(Mac::CoreMIDI::Object);
our $VERSION = '0.01';

sub new_input {
    my $class = shift;
    my %args = @_;

    return undef unless ref($args{client});
    $args{name} ||= 'Mac::CoreMIDI::Port (Input)';

    my $self = _new_input($class, $args{client}, $args{name});

    return $self;
}

sub new_output {
    my $class = shift;
    my %args = @_;

    return undef unless ref($args{client});
    $args{name} ||= 'Mac::CoreMIDI::Port (Output)';

    my $self = _new_output($class, $args{client}, $args{name});

    return $self;
}

sub _DESTROY {
    _destroy(shift);
}

sub Read {
    # nothing happens here right now
}

1;
