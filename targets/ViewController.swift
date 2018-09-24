//
//  ViewController.swift
//  targets
//
//  Created by Shane McCully on 21/09/2018.
//  Copyright © 2018 Shane McCully. All rights reserved.
//

import UIKit
import Foundation


extension String {
    static var Empty = ""
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

       // print(Config.endpoint)

        #if targetsOne
        print("RUNNING TARGETS ONE")
        #else
        print("RUNNING TARGETS TWO")
        #endif
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPrint(_ sender: Any) {

        print(Config.endpoint)
       // printEndpoint()
    }

//    func printEndpoint() {
//
//        if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
//            if let dic = NSDictionary(contentsOfFile: path){
//               print(dic)
//            }
//        }
//
//    }
}




class Config {

    static var endpoint: String {
        get {

            if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
                if let dic = NSDictionary(contentsOfFile: path) {
                    return dic["ENDPOINT_URL"] as? String ?? String.Empty
                }
            }

            return String.Empty

        }
    }
}

