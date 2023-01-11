//
//  ViewController.swift
//  BridgeObjCSwift
//
//  Created by Consultant on 1/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var data = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        let model = CustomViewModel()
        model.getData(postsURL) { data in
            print("Getting Data")
            guard let returnData = data else {
                return
            }
            DispatchQueue.main.async {
                self.data = returnData
            }
            
        }
        
    }
    


}

