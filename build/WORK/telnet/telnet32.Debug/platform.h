/*-------------------------------------------------------------------*/
/*  platform.h  --  primary build header. Should be first #include.  */
/*-------------------------------------------------------------------*/

#ifndef _PLATFORM_H_
#define _PLATFORM_H_

/*-------------------------------------------------------------------*/
/*  Include primary system headers according to build platform.      */
/*-------------------------------------------------------------------*/

#ifdef _MSC_VER                         /* Microsoft Visual C/C++    */

  #ifndef   _WIN32_WINNT                /* see cmake's targetver.txt */
    #define _WIN32_WINNT  0x0601        /* Windows 7 Service Pack 1  */
    #define WINVER        _WIN32_WINNT  /* Windows 7 Service Pack 1  */
    #define _WIN32_IE     0x0800        /* Internet Explorer 8.0     */
  #endif

  /* Need <SDKDDKVer.h> header with later versions of Visual Studio. */

  #if _MSC_VER >= 1600                  /* If VS2010 or greater,     */
    #include <SDKDDKVer.h>              /* then need this header     */
  #endif

  #include <windows.h>                  /* Primary Windows header    */
  #include <stdio.h>                    /* Standard I/O routines     */
  #include <stdarg.h>                   /* variable argument macros  */

#else /* non-Windows                                                 */

  #include <unistd.h>                   /* standard constants/types  */
  #include <stdio.h>                    /* Standard I/O routines     */
  #include <stdarg.h>                   /* variable argument macros  */
  #include <stdlib.h>                   /* need malloc/free, etc     */
  #include <errno.h>                    /* need 'errno', etc         */
  #include <string.h>                   /* need memcpy/memset, etc   */
  #include <sys/select.h>               /* fd_set and select(), etc  */
  #include <sys/socket.h>               /* send(), recv(), etc       */

  typedef unsigned char BYTE;           /* need 'BYTE' typedef       */

#endif /* Windows or not                                             */

/*-------------------------------------------------------------------*/
/*  Use fallback if system headers not found.                        */
/*-------------------------------------------------------------------*/

#define HAVE_STDBOOL_H             /* (determined by CMake)     */
#define HAVE_STDINT_H              /* (determined by CMake)     */

#ifdef HAVE_STDBOOL_H
  #include <stdbool.h>
#else
  /* minimum stdbool.h #defines needed by package */ 
  #define false                         0
  #define true                          1
  #define __bool_true_false_are_defined 1
  #define _Bool                         int
  #define bool                          _Bool
#endif

#ifdef HAVE_STDINT_H
  #include <stdint.h>
#else
  /* minimum stdint.h typedefs needed by package */ 
  typedef char                          int8_t; 
  typedef short                         int16_t; 
  typedef int                           int32_t; 
  typedef long long                     int64_t; 

  typedef unsigned char                 uint8_t; 
  typedef unsigned short                uint16_t; 
  typedef unsigned int                  uint32_t; 
  typedef unsigned long long            uint64_t; 

  typedef char                          int_fast8_t;
  typedef int                           int_fast16_t;
  typedef int                           int_fast32_t;
  typedef long long                     int_fast64_t;

  typedef unsigned char                 uint_least8_t;
  typedef unsigned char                 uint_fast8_t;
  typedef unsigned int                  uint_fast16_t;
  typedef unsigned int                  uint_fast32_t;
  typedef unsigned long long            uint_fast64_t;

  #define INT32_MAX                     0x7fffffff
  #define UINT32_MAX                    0xffffffff
  #define INT64_MAX                     0x7fffffffffffffff
  #define UINT64_MAX                    0xffffffffffffffffU

  #define INT32_C(x)                    ((x) + (INT32_MAX - INT32_MAX))
  #define INT64_C(x)                    ((x) + (INT64_MAX - INT64_MAX))
  #define UINT32_C(x)                   ((x) + (UINT32_MAX - UINT32_MAX))
  #define UINT64_C(x)                   ((x) + (UINT64_MAX - UINT64_MAX))

  /* Indicate #include <stdint.h> is now NOT needed by package */
  #define int32_t                       int32_t

#endif

/*-------------------------------------------------------------------*/
/*  Helper macros                                                    */
/*-------------------------------------------------------------------*/

#ifndef ATTR_PRINTF
  #ifdef _MSC_VER              /* If Microsoft Visual C/C++,         */
    #define ATTR_PRINTF(f,v)   /* then define to nothing             */
  #else                        /* else define to GCC __attribute__   */
    #define ATTR_PRINTF(f,v)  __attribute__ (( format( printf, f, v )))
  #endif
#endif

#if !defined( va_copy )
  #if defined( __va_copy )
    #define  va_copy            __va_copy
  #elif defined( _MSVC_ )
    #define  va_copy(to,from)   (to) = (from)
  #else
    #define  va_copy(to,from)   memcpy((to),(from),sizeof(va_list))
  #endif
#endif

#endif /* _PLATFORM_H_ */
