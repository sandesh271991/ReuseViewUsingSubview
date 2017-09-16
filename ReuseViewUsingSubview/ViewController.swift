//
//  ViewController.swift
//  ReuseViewUsingSubview
//
//  Created by sandesh sardar on 16/09/17.
//  Copyright © 2017 sandesh sardar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CommonViewDeleget {
   
    @IBOutlet weak var firstView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //---- initialise CommonView
        let commonView = UINib(nibName: "CommonView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! CommonView
        firstView.addSubview(commonView)  //---- to add "commonView" as subview
        
        commonView.deleget = self   //---- delegete
        
        commonView.lblCommon.text = "We can change label in particular Screen"
    }
    
    
    //MARK: commonViewDeleget
    func btnCommonClick() {
        
        print("Button Click")
    }
}

