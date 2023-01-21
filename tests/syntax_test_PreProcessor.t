// SYNTAX TEST "Packages/ST4-TADS3/TADS3.sublime-syntax"


/* TADS 3 provides a macro preprocessor that's essentially equivalent
 * to the standard ANSI C preprocessor.
 *      https://www.tads.org/t3doc/doc/sysman/preproc.htm
 */

    #charset "us-ascii"
//  ^^^^^^^^^^^^^^^^^^^   meta.preprocessor.charset
//   ^^^^^^^              keyword.other.preprocessor.charset
//           ^^^^^^^^^^   string.quoted.double.charset

/************************
 *  Include directives
 ************************/

    #include "adv3.h"
//  ^^^^^^^^^^^^^^^^^^      meta.preprocessor.include.double
//   ^^^^^^^                keyword.other.preprocessor.include
//           ^^^^^^^^       string.quoted.double.include
   # include "adv3.h"
// ^^^^^^^^^^^^^^^^^^^      meta.preprocessor.include.double
//   ^^^^^^^                keyword.other.preprocessor.include
    #include <reflect.h>
//  ^^^^^^^^^^^^^^^^^^^^    meta.preprocessor.include.lt-gt
//   ^^^^^^^                keyword.other.preprocessor.include
//           ^^^^^^^^^^^    string.quoted.other.lt-gt.include

/************
 *  Defines
 ************/

    #define XYZ
//  ^^^^^^^^^^^     meta.preprocessor.define.simple
//   ^^^^^^         keyword.other.preprocessor.define
//          ^^^     entity.name.function.preprocessor

    #undef XYZ
//  ^^^^^^^^^^      meta.preprocessor.undef
//   ^^^^^          keyword.other.preprocessor.undef
//         ^^^      entity.other.function.preprocessor.undef

    #define dbgSome(xyz) Some(xyz)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.preprocessor.define.function
//   ^^^^^^                             keyword.other.preprocessor.define
//          ^^^^^^^                     entity.name.function.preprocessor
//                       ^^^^           support.function
//                  ^^^                 variable.parameter.preprocessor

    # define objABC(which, action) \
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.preprocessor.define.function
//    ^^^^^^                            keyword.other.preprocessor.define
//                  ^^^^^               variable.parameter.preprocessor
//                         ^^^^^^       variable.parameter.preprocessor
    sentinel##which##action = __objref(action##Action, warn)
//          ^^                          keyword.operator.preprocessor.token-paste
//                          ^           keyword.operator.assign
//                            ^^^^^^^^  support.function

/************
 *  Pragmas
 ************/

    #pragma message ( TOKEN )
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^      meta.preprocessor.pragma.tads3.message
//   ^^^^^^                         keyword.other.preprocessor.pragma
//          ^^^^^^^                 keyword.other.preprocessor.pragma-message
    #pragma message ( "token" )
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^     meta.preprocessor.pragma.tads3.message
//                    ^^^^^^^       string.quoted.double
    #pragma message ( 'token' )
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^     meta.preprocessor.pragma.tads3.message
//                    ^^^^^^^       string.quoted.single
    #pragma message ( 666 )
//  ^^^^^^^^^^^^^^^^^^^^^^^         meta.preprocessor.pragma.tads3.message
//                    ^^^           constant.numeric.decimal

    #pragma newline_spacing(collapse)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  meta.preprocessor.pragma.tads3.newline-spacing
//   ^^^^^^                             keyword.other.preprocessor.pragma
//          ^^^^^^^^^^^^^^^             keyword.other.preprocessor.pragma-newline-spacing
//                          ^^^^^^^^    keyword.other.preprocessor.pragma-newline-spacing-value

    #pragma sourceTextGroup(on)
//  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^    meta.preprocessor.pragma.tads3.stg
//          ^^^^^^^^^^^^^^^         keyword.other.preprocessor.pragma-stg
//                          ^^      keyword.other.preprocessor.pragma-stg-value

    #pragma once
//  ^^^^^^^^^^^^^   meta.preprocessor.pragma.tads3.once
//          ^^^^    keyword.other.preprocessor.pragma-once


/*
 * Missing pragmas:
 */

    #pragma all_once


/****************
 *  Miscellanea
 ****************/

    #line 666 'filename'
//  ^^^^^^^^^^^^^^^^^^^^^   meta.preprocessor.line
//   ^^^^                   keyword.other.preprocessor.line
//        ^^^               constant.numeric.line
//            ^^^^^^^^^^    string.quoted.single.line

/* Doesn't work with DQuotes:
 *  #line 666 "filename"
 */


/***************************
 *  Conditional directives
 ***************************/

    #ifndef ADV3_H
//  ^^^^^^^^^^^^^^^     meta.preprocessor.if-block.ifndef
//   ^^^^^^             keyword.other.preprocessor.ifndef
//          ^^^^^^      entity.other.function.preprocessor.ifndef

        #define ADV3_H
    //  ^^^^^^^^^^^^^^      meta.preprocessor.define.simple
    //  ^^^^^^^^^^^^^^      meta.preprocessor.if-block.ifndef
    //   ^^^^^^             keyword.other.preprocessor.define
    //          ^^^^^^      entity.name.function.preprocessor

    #else
//  ^^^^^^      meta.preprocessor.if-block.ifndef
//  ^^^^^^      meta.preprocessor.else
//   ^^^^       keyword.other.preprocessor.else

        #define XWYZZY
    //  ^^^^^^^^^^^^^^      meta.preprocessor.define.simple
    //  ^^^^^^^^^^^^^^      meta.preprocessor.if-block.ifndef
    //   ^^^^^^             keyword.other.preprocessor.define
    //          ^^^^^^      entity.name.function.preprocessor

    #endif
//   ^^^^^              meta.preprocessor.if-block.ifndef
//   ^^^^^             -meta.preprocessor.else
//   ^^^^^              keyword.other.preprocessor.endif

    #define PARSER_DEBUG
//  ^^^^^^^^^^^^^^^^^^^^    meta.preprocessor.define.simple
//  ^^^^^^^^^^^^^^^^^^^^   -meta.preprocessor.if-block.ifndef
//  ^^^^^^^^^^^^^^^^^^^^   -meta.preprocessor.else
//   ^^^^^^                 keyword.other.preprocessor.define
//          ^^^^^^^^^^^^    entity.name.function.preprocessor

    #if 1
//  ^^^^^^                  meta.preprocessor.if-block.if
//   ^^                     keyword.other.preprocessor.ifdef
//      ^                   constant.numeric.decimal
        #error "Blah"
    //  ^^^^^^^^^^^^^       meta.preprocessor.error
    //   ^^^^^              keyword.other.preprocessor.error
    //         ^^^^^^       string.quoted.double

    #elif XXX > 3
//  ^^^^^^^^^^^^^           meta.preprocessor.elif
//   ^^^^                   keyword.other.preprocessor.elif
//            ^             keyword.operator.gt
//              ^           constant.numeric.decimal
    #elif defined(GHIJ)
//  ^^^^^^^^^^^^^^^^^^^     meta.preprocessor.elif
    #endif
