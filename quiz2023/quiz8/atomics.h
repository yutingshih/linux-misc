#pragma once

/* TODO: rewrite in C11 Atomics */
#if !defined(__x86_64__) || defined(__i386)
#error "This implementation is specific to x86(-64)"
#endif

#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#ifndef asm
#define asm __asm
#endif

#define cmpxchg(ptr, _old, _new)                                \
    {                                                           \
        volatile uint32_t *__ptr = (volatile uint32_t *) (ptr); \
        uint32_t __ret;                                         \
        asm volatile("lock; cmpxchgl %2,%1"                     \
                     : "=a"(__ret), "+m"(*__ptr)                \
                     : "r"(_new), "0"(_old)                     \
                     : "memory");                               \
  );                                                            \
        __ret;                                                  \
    }

#define ATOMIC_SET __sync_lock_test_and_set
#define ATOMIC_RELEASE __sync_lock_release

#define ATOMIC_SUB __sync_sub_and_fetch
#define ATOMIC_SUB64 ATOMIC_SUB
#define CAS __sync_bool_compare_and_swap

/* The 2nd argument is limited to 1 on machines with TAS but not XCHG.
 * On x86 it is an arbitrary value.
 */
#define XCHG __sync_lock_test_and_set

#define ATOMIC_ADD __sync_add_and_fetch
#define ATOMIC_ADD64 ATOMIC_ADD
#define mb __sync_synchronize

/* compiler barrier only: runtime reordering is impossible on x86 */
#define lmb() asm volatile("" ::: "memory")
#define smb() asm volatile("" ::: "memory")
