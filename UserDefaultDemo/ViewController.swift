//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by Yudiz Solutions Pvt.Ltd. on 06/01/17.
//  Copyright © 2017 Yudiz Solutions Pvt.Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    @IBAction func btnSetTap(_ sender: UIButton) {
        UserDefaults.Main.set(true, forKey: .boolKey)
        UserDefaults.Main.set(10.2, forKey: .doubleKey)
        UserDefaults.Main.set(Float(10.55), forKey: .floatKey)
        UserDefaults.Main.set(110792, forKey: .IntKey)
        UserDefaults.Main.set("yudiz", forKey: .strKey1)
        
        let dict  = ["name" : "Yogesh Makwana",
            "id":1339,
            "dept":"iOS"
        ] as [String : Any]
        
        UserDefaults.Main.set(dict, forKey: .objKey)
    }

    @IBAction func btnGetTap(_ sender: UIButton) {
        let dict = UserDefaults.Main.object(forKey: .objKey)
        let name = UserDefaults.Main.string(forKey: .strKey1)
        
        print(dict ?? "nil",name)
        
        UserDefaults.Main.removeObj(forKey: .doubleKey)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

