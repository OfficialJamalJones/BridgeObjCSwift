//
//  CustomViewModel.m
//  BridgeObjCSwift
//
//  Created by Consultant on 1/11/23.
//

#import <Foundation/Foundation.h>


@implementation CustomViewModel: NSObject


-(void)getData:(NSString*)urlString completionHandler:(void (^)(NSMutableArray* result))completionHandler{

    // 1
    NSURL *url = [NSURL URLWithString:urlString];
    //NSLog(@"url = %@",url);
        
    // 2
    NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession]
      dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
      // 4: Handle response here
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    
        NSMutableArray* array = [[NSMutableArray alloc] init];
        for (NSMutableDictionary *tempObject in json) {
            NSMutableDictionary *post = [NSMutableDictionary dictionary];
            post = tempObject;
            [array addObject:post];
            //NSLog(@"Single element: %@", post);
        }
        NSLog(@"Testing");
        NSLog(@"array = %@",array);
        completionHandler(array);

    }];
        
    // 3
    [downloadTask resume];
    
}


//static func getData(urlString: String, completion: @escaping ([Post]) -> ()) {
//    guard let url = URL(string: urlString) else {
//        return
//    }
//    URLSession.shared.dataTask(with: url) { data, response, error in
//        do {
//            let results = try JSONDecoder().self.decode([Post].self, from: data!)
//            DispatchQueue.main.async {
//                completion(results)
//            }
//        } catch {
//            print(error.localizedDescription)
//        }
//    }.resume()
//}


@end

struct Post {
   int *userId;
   int *postId;
   NSString *title;
    NSString  *body;
};



