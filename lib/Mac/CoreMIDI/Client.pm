package Mac::CoreMIDI::Client;

use 5.006;
use strict;
use warnings;

use base qw(Mac::CoreMIDI::Object);
our $VERSION = '0.01';

sub new {
    my $class = shift;
    my %args = @_;

    $args{name} ||= 'Mac::CoreMIDI::Client';

    my $self = _new($class, $args{name});

    return $self;
}

sub _DESTROY {
    _destroy(shift);
}

sub Update {
    # nothing happens here by default. Subclass to make something happen
}

1;

__END__

=head1 NAME

Mac::CoreMIDI::Client - Encapsulates a CoreMIDI Client

=head1 SYNOPSIS

    use Mac::CoreMIDI;
    
    my $c = MyClient->new(name => 'My Perl MIDI Application');
    Mac::CoreMIDI::RunLoopRun();

    package MyClient;
    
    use base qw(Mac::CoreMIDI::Client);
    
    sub Update {
        # do something here
    }

=head1 METHODS

=over

=item C<$self-E<gt>Update()>

Is called by Mac OS X when CoreMIDI devices are updated.

=back

=head1 SEE ALSO

L<Mac::CoreMIDI>

=head1 AUTHOR

Christian Renz, E<lt>crenz@web42.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2004 by Christian Renz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
