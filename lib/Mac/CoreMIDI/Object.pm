package Mac::CoreMIDI::Object;

use 5.006;
use strict;
use warnings;

our $VERSION = '0.02';

sub Dump {
    my ($self) = @_;
    (my $type = ref $self) =~ s/^Mac::CoreMIDI:://;
    my ($name, $manufacturer, $model, $uniqueID, $deviceID,
        $receiveCh, $transmitCh, $sysexspd, $schedule,
        $isembedded, $isbroadcast, $isrtent, $isoffline,
        $isprivate, $driverowner, $driverversion) = (
        $self->GetName() || '',
        $self->GetManufacturer() || '',
        $self->GetModel() || '',
        $self->GetUniqueID(),
        $self->GetDeviceID(),
        $self->GetReceiveChannels(),
        $self->GetTransmitChannels(),
        $self->GetMaxSysExSpeed(),
        $self->GetAdvanceScheduleTimeMuSec(),
        $self->IsEmbeddedEntity(),
        $self->IsBroadcast(),
        $self->IsSingleRealtimeEntity(),
        $self->IsOffline(),
        $self->IsPrivate(),
        $self->GetDriverOwner() || '',
        $self->GetDriverVersion(),
    );

    print <<EOT;
$type
    Name:                        $name
    Manufacturer:                $manufacturer
    Model:                       $model
    Unique ID:                   $uniqueID
    Device ID:                   $deviceID
    Receive channels:            $receiveCh
    Transmit channels:           $transmitCh
    Max. Sysex speed:            $sysexspd
    Schedule time:               $schedule
    Is embedded entity:          $isembedded
    Is broadcast:                $isbroadcast
    Is single real-time entity:  $isrtent
    Is offline:                  $isoffline
    Is private:                  $isprivate
    Driver owner:                $driverowner
    Driver version:              $driverversion

EOT
}

1;

__END__

=head1 NAME

Mac::CoreMIDI::Object - Encapsulates a CoreMIDI Object

=head1 DESCRIPTION

Mac::CoreMIDI::Object is the base class for most other CoreMIDI objects.

=head1 METHODS

Mac::CoreMIDI::Object has a lot of properties that will be documented when the implementation is complete. For now, see the source.

=over

=item C<$self-E<gt>dump()>

Prints a lot of information on the object.

=back

=head1 SEE ALSO

L<CoreMIDI>

=head1 AUTHOR

Christian Renz, E<lt>crenz@web42.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2004 by Christian Renz

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
