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
        
        //---- initialise CommonView
        let commonView = UINib(nibName: "CommonView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! CommonView
        secondView.addSubview(commonView)  //---- to add "commonView" as subview
        
    }
}
