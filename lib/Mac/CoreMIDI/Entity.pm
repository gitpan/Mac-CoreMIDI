package Mac::CoreMIDI::Entity;

use 5.006;
use strict;
use warnings;

use Mac::CoreMIDI::Object;

our $VERSION = '0.01';
our @ISA = qw(Mac::CoreMIDI::Object);

sub GetSources {
    my ($self) = @_;

    my $numSources = $self->GetNumberOfSources();
    my @sources = map { $self->GetSource($_) } 0..$numSources-1;

    return @sources;
}

sub GetDestinations {
    my ($self) = @_;

    my $numDestinations = $self->GetNumberOfDestinations();
    my @destination = map { $self->GetDestination($_) } 0..$numDestinations-1;

    return @destination;
}

1;
__END__

=head1 NAME

Mac::CoreMIDI::Entity - Encapsulate a CoreMIDI Entity

=head1 METHODS

=over

=item C<my @src = $self->GetSources()>

Returns a list of source endpoints for this entity.

=item C<my $n = $self->GetNumberOfSources()>

Returns the number of sources.

=item C<my $src = $self->GetSource($i)>

Returns the C<$i>'th source (starting from 0).

=item C<my @dest = $self->GetDestinations()>

Returns a list of destination endpoints for this entity.

=item C<my $n = $self->GetNumberOfDestinations()>

Returns the number of destinations.

=item C<my $dest = $self->GetDestination($i)>

Returns the C<$i>'th destination (starting from 0).

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
