#ifndef MAC_COREMIDI_HELPERS_H
#define MAC_COREMIDI_HELPERS_H

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

// from Mac::Carbon -- these are defined by Perl, too
#undef Move
#undef I_POLL
#undef DEBUG

#include <CoreMIDI/MIDIServices.h>
#include <CoreFoundation/CFRunLoop.h>

typedef MIDIObjectRef   Mac_CoreMIDI_Object;
typedef MIDIDeviceRef   Mac_CoreMIDI_Device;
typedef MIDIEntityRef   Mac_CoreMIDI_Entity;
typedef MIDIEndpointRef Mac_CoreMIDI_Endpoint;

SV * MIDIGetStringProperty(Mac_CoreMIDI_Object dev, CFStringRef propname);
SV * MIDIGetIntegerProperty(Mac_CoreMIDI_Object dev, CFStringRef propname);

#endif