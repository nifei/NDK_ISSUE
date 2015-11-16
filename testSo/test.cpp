#include <jni.h>

#include <string.h>
#include <iostream>
#include "testA/testa.h"
#include "testB/testb.h"
#include "testC/testc.h"

/* This is a trivial JNI example where we use a native method
 * to return a new VM String. See the corresponding Java source
 * file located at:
 *
 *   apps/samples/hello-jni/project/src/com/example/hellojni/HelloJni.java
 */
#ifdef __cplusplus
extern "C" {
#endif

jstring
Java_com_baidu_test1_Jni_stringFromJni(JNIEnv *env,
                                       jobject thiz) {
#if defined(__arm__)
    #if defined(__ARM_ARCH_7A__)
      #if defined(__ARM_NEON__)
        #if defined(__ARM_PCS_VFP)
          #define ABI "armeabi-v7a/NEON (hard-float)"
        #else
          #define ABI "armeabi-v7a/NEON"
        #endif
      #else
        #if defined(__ARM_PCS_VFP)
          #define ABI "armeabi-v7a (hard-float)"
        #else
          #define ABI "armeabi-v7a"
        #endif
      #endif
    #else
     #define ABI "armeabi"
    #endif
#elif defined(__i386__)
    #define ABI "x86"
#elif defined(__x86_64__)
    #define ABI "x86_64"
#elif defined(__mips64)  /* mips64el-* toolchain defines __mips__ too */
    #define ABI "mips64"
#elif defined(__mips__)
    #define ABI "mips"
#elif defined(__aarch64__)
    #define ABI "arm64-v8a"
#else
#define ABI "unknown"
#endif

    int lib_a_result = a_func(4, 2);
    int lib_b_result = b_func(4, 2);
    std::string lib_a = a_func();
    std::string lib_b = b_func();
    std::string static_lib_str;
    static_lib_str += "a_func:";
    static_lib_str += lib_a;
    static_lib_str += "\nb_func:";
    static_lib_str += lib_b;
    static_lib_str += "\nc_func:";
    static_lib_str += c_func();
    return (*env).NewStringUTF(static_lib_str.c_str());
}

#ifdef __cplusplus
}
#endif
