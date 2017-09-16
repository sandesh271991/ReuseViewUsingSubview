//
//  ViewController.swift
//  ReuseViewUsingSubview
//
//  Created by sandesh sardar on 16/09/17.
//  Copyright © 2017 sandesh sardar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //---- to add "commonView" as subview in "firstView"
        let commonView = CommonView.instanceFromNib()
        firstView.addSubview(commonView)
        
        
        //--- change label text or button action according screen -------------
        let lblCommon =  commonView.viewWithTag(100) as! UILabel
        lblCommon.text = "We can change label in particular Screen"
        
        let btnCommon = commonView.viewWithTag(200) as! UIButton
        btnCommon.addTarget(self, action: #selector(btnCommonClick), for: UIControlEvents.touchUpInside)

    }
    

    @objc func btnCommonClick(sender: UIButton){
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

