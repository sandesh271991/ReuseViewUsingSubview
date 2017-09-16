//
//  SecondViewController.swift
//  ReuseViewUsingSubview
//
//  Created by sandesh sardar on 16/09/17.
//  Copyright © 2017 sandesh sardar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //---- to add "commonView" as subview in "secondView"
        let commonView = CommonView.instanceFromNib()
        secondView.addSubview(commonView)
        
    }

}
