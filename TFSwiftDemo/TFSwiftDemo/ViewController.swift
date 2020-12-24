//
//  ViewController.swift
//  TFSwiftDemo
//
//  Created by Ricky on 2020/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func clickHere(_ sender: Any) {
        TFThisshopManager.sharedInstance().startRecharge(withOrderId: "tf000004", andProductId: "5452400", andCount: "33") { (_: [AnyHashable : Any]) in
            
        } andFailed: { (Error) in
            
        }

        
    }
    


}

