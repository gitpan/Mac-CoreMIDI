package Mac::CoreMIDI::Endpoint;

use 5.006;
use strict;
use warnings;

use base qw(Mac::CoreMIDI::Object);
our $VERSION = '0.03';

sub new_destination {
    my $class = shift;
    my %args = @_;

    return undef unless ref($args{client});
    $args{name} ||= 'Mac::CoreMIDI::Endpoint (Destination)';

    my $self = _new_destination($class, $args{client}, $args{name});

    return $self;
}

sub new_source {
    my $class = shift;
    my %args = @_;

    return undef unless ref($args{client});
    $args{name} ||= 'Mac::CoreMIDI::Endpoint (Source)';

    my $self = _new_source($class, $args{client}, $args{name});

    return $self;
}

sub _DESTROY {
    _destroy(shift);
}

sub Read {
    # subclass to use this function
}

1;

__END__

=head1 NAME

Mac::CoreMIDI::Endpoint - Encapsulates a CoreMIDI Endpoint

=head1 METHODS

=over

=item C<my $ent = $self-E<gt>GetParent()>

Returns parent entity for this endpoint.

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
