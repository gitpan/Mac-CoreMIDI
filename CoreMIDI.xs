#include "helpers.h"

MODULE = Mac::CoreMIDI    PACKAGE = Mac::CoreMIDI::Object      PREFIX=MIDI

SV *
MIDIGetName(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetStringProperty(dev, kMIDIPropertyName);
    OUTPUT:
        RETVAL

SV *
MIDIGetManufacturer(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetStringProperty(dev, kMIDIPropertyManufacturer);
    OUTPUT:
        RETVAL


SV *
MIDIGetModel(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetStringProperty(dev, kMIDIPropertyModel);
    OUTPUT:
        RETVAL

SV*
MIDIGetUniqueID(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev, kMIDIPropertyUniqueID);
    OUTPUT:
        RETVAL

SV*
MIDIGetDeviceID(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev, kMIDIPropertyDeviceID);
    OUTPUT:
        RETVAL

SV*
MIDIGetReceiveChannels(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev, kMIDIPropertyReceiveChannels);
    OUTPUT:
        RETVAL

SV*
MIDIGetTransmitChannels(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev, kMIDIPropertyTransmitChannels);
    OUTPUT:
        RETVAL

SV*
MIDIGetMaxSysExSpeed(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev, kMIDIPropertyMaxSysExSpeed);
    OUTPUT:
        RETVAL

SV*
MIDIGetAdvanceScheduleTimeMuSec(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev, 
            kMIDIPropertyAdvanceScheduleTimeMuSec);
    OUTPUT:
        RETVAL

SV*
MIDIIsEmbeddedEntity(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev,
            kMIDIPropertyIsEmbeddedEntity);
    OUTPUT:
        RETVAL

SV*
MIDIIsBroadcast(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev,
            kMIDIPropertyIsBroadcast);
    OUTPUT:
        RETVAL

SV*
MIDIIsSingleRealtimeEntity(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev,
            kMIDIPropertySingleRealtimeEntity);
    OUTPUT:
        RETVAL

# ConnectionUniqueID not yet implemented -- may also be data

SV*
MIDIIsOffline(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev,
            kMIDIPropertyOffline);
    OUTPUT:
        RETVAL

SV*
MIDIIsPrivate(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev,
            kMIDIPropertyPrivate);
    OUTPUT:
        RETVAL

SV *
MIDIGetDriverOwner(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetStringProperty(dev,
            kMIDIPropertyDriverOwner);
    OUTPUT:
        RETVAL

SV*
MIDIGetDriverVersion(dev)
        Mac_CoreMIDI_Object dev
    CODE:
        RETVAL = MIDIGetIntegerProperty(dev,
            kMIDIPropertyDriverVersion);
    OUTPUT:
        RETVAL


MODULE = Mac::CoreMIDI    PACKAGE = Mac::CoreMIDI::Device     PREFIX = MIDIDevice

ItemCount
MIDIDeviceGetNumberOfEntities(device)
        Mac_CoreMIDI_Device  device
    OUTPUT:
        RETVAL

Mac_CoreMIDI_Entity
MIDIDeviceGetEntity(device, entityIndex0)
        Mac_CoreMIDI_Device  device
        ItemCount            entityIndex0
    OUTPUT:
        RETVAL


MODULE = Mac::CoreMIDI    PACKAGE = Mac::CoreMIDI::Entity     PREFIX = MIDIEntity

ItemCount
MIDIEntityGetNumberOfSources(entity)
        Mac_CoreMIDI_Entity  entity
    OUTPUT:
        RETVAL

Mac_CoreMIDI_Endpoint
MIDIEntityGetSource(entity, sourceIndex0)
        Mac_CoreMIDI_Entity  entity
        ItemCount            sourceIndex0
    OUTPUT:
        RETVAL

ItemCount
MIDIEntityGetNumberOfDestinations(entity)
        Mac_CoreMIDI_Entity  entity
    OUTPUT:
        RETVAL

Mac_CoreMIDI_Endpoint
MIDIEntityGetDestination(entity, destIndex0)
        Mac_CoreMIDI_Entity  entity
        ItemCount            destIndex0
    OUTPUT:
        RETVAL


MODULE = Mac::CoreMIDI    PACKAGE = Mac::CoreMIDI      PREFIX=MIDI

ItemCount
MIDIGetNumberOfDevices()
    OUTPUT:
        RETVAL

Mac_CoreMIDI_Device
MIDIGetDevice(deviceIndex0)
        ItemCount deviceIndex0
    OUTPUT:
        RETVAL

ItemCount
MIDIGetNumberOfSources()
    OUTPUT:
        RETVAL

Mac_CoreMIDI_Endpoint
MIDIGetSource(sourceIndex0)
        ItemCount  sourceIndex0
    OUTPUT:
        RETVAL

ItemCount
MIDIGetNumberOfDestinations()
    OUTPUT:
        RETVAL

Mac_CoreMIDI_Endpoint
MIDIGetDestination(destIndex0)
        ItemCount  destIndex0
    OUTPUT:
        RETVAL

ItemCount
MIDIGetNumberOfExternalDevices()
    OUTPUT:
        RETVAL

Mac_CoreMIDI_Device
MIDIGetExternalDevice(deviceIndex0)
        ItemCount  deviceIndex0
    OUTPUT:
        RETVAL

OSStatus
MIDIRestart()
    OUTPUT:
        RETVAL
