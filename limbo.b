// Limbo
implement Hello;

include "sys.m";
    sys: Sys;
include "draw.m";

Hello: module
{
    init: fn(ctxt: ref Draw->Context, argv: list of string): int;
};

init(ctxt: ref Draw->Context, argv: list of string): int
{
    sys = load Sys Sys->PATH;
    sys->print("Hello, World!\n");
    return 0;
} 