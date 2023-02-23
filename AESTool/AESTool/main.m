//
//  main.m
//  AESTool
//
//  Created by hy on 2023/2/23.
//

#import <Foundation/Foundation.h>
#import "MIUGTMDefines.h"
#import "MIUAES.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *originalStr = @"123456";
        NSString *encryptKey = @"0000000000000000";
        NSString *iv = nil;

        NSString *enStr = [MIUAES MIUAESEncrypt:originalStr mode:kCCModeECB key:encryptKey keySize:MIUKeySizeAES128 iv:iv padding:MIUCryptorPKCS7Padding];
        NSString *deStr = [MIUAES MIUAESDecrypt:enStr mode:kCCModeECB key:encryptKey keySize:MIUKeySizeAES128 iv:iv padding:MIUCryptorPKCS7Padding];
//
        NSLog(@"\n加密前：%@\n加密后：%@\n解密后：%@\n",originalStr,enStr,deStr);
        
    }
    return 0;
}
