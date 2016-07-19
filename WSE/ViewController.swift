//
//  ViewController.swift
//  WSE
//
//  Created by Kai.Li on 7/19/16.
//  Copyright © 2016 Linkin. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonClick(sender: UIButton) {
        Alamofire.request(.GET, "http://mapi.wsi.com.cn:8088/", parameters: ["a": "GetUser"])
            .responseJSON { resp in
                print(resp.data)
                if let JSON = resp.result.value {
                    print("JSON: \(JSON)")
                    
                }
        }
    }

}

