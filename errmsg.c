/*
errmsg.c
last touched in Par 1.53.0
last meaningful change in Par 1.40
Copyright 1993 Adam M. Costello
Modified by Jérôme Pouiller

This is ANSI C code (C89).

*/


#include "errmsg.h"  /* Makes sure we're consistent with the declarations. */


const wchar_t * const outofmem =
  L"Out of memory.\n";

const wchar_t * const mbserror =
  L"Error in input multibyte string.\n";

const wchar_t * const impossibility =
  L"Impossibility #%d has occurred.  Please report it.\n";
