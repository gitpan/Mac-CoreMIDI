#include "helpers.h"

SV * MIDIGetStringProperty(Mac_CoreMIDI_Object dev, CFStringRef propname) {
    char buf[300];
    CFStringRef str;
    SV *sv;

    OSStatus s = MIDIObjectGetStringProperty(dev, propname, &str);
    if (s != 0) {
        sv = &PL_sv_undef;
    } else {
        Boolean b = CFStringGetCString(str, buf, 300, kCFStringEncodingUTF8);
        CFRelease(str);
        sv = newSVpv(buf, 0);
    }

    return sv;
}

SV * MIDIGetIntegerProperty(Mac_CoreMIDI_Object dev, CFStringRef propname) {
    SInt32 val;

    OSStatus s = MIDIObjectGetIntegerProperty(dev, propname, &val);

    SV      *perl_val;
    perl_val = newSViv(val);
    return perl_val;
}

/* Callbacks ************************************************************/

void MIDIClientNotify(const MIDINotification* message, void *refCon) {
    if (!sv_isobject(refCon)) {
        return;
    }
    dSP;

    ENTER;
    SAVETMPS;

    PUSHMARK(SP);
    XPUSHs((SV *) refCon);

    PUTBACK;

    call_method("Update", G_DISCARD);

    FREETMPS;
    LEAVE;
}

void MIDIReader(const MIDIPacketList * pktlist,
    void *readProcRefCon, void *srcConnRefCon) {
    if (!sv_isobject(readProcRefCon)) {
        return;
    }

    // read not yet implemented -- we are in a different thread!
    return;
    dSP;

    ENTER;
    SAVETMPS;

    PUSHMARK(SP);
//    XPUSHs((SV *) readProcRefCon);

    PUTBACK;

//    call_method("Read", G_DISCARD);
//    call_pv("MyEndpoint::Read", G_DISCARD);

    FREETMPS;
    LEAVE;
}
