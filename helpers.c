#include "helpers.h"

SV * MIDIGetStringProperty(Mac_CoreMIDI_Object dev, CFStringRef propname) {
    char buf[300];
    CFStringRef str;

    OSStatus s = MIDIObjectGetStringProperty(dev, propname, &str);
    Boolean b = CFStringGetCString(str, buf, 300, kCFStringEncodingUTF8);
    CFRelease(str);

    SV      *perl_str;
    perl_str = newSVpv(buf, 0);
    return perl_str;
}

SV * MIDIGetIntegerProperty(Mac_CoreMIDI_Object dev, CFStringRef propname) {
    SInt32 val;

    OSStatus s = MIDIObjectGetIntegerProperty(dev, propname, &val);

    SV      *perl_val;
    perl_val = newSViv(val);
    return perl_val;
}
