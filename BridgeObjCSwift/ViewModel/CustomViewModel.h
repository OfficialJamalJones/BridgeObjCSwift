//
//  CustomViewModel.h
//  BridgeObjCSwift
//
//  Created by Consultant on 1/11/23.
//

#ifndef CustomViewModel_h
#define CustomViewModel_h
#import <Foundation/Foundation.h>
//#import <

@interface CustomViewModel : NSObject 

//@property(nonatomic, strong) NSMutableArray<NSMutableDictionary *> *posts;

-(void)getData:(NSString*)urlString completionHandler:(void (^)(NSMutableArray* result))completionHandler;

@end

#endif /* CustomViewModel_h */
