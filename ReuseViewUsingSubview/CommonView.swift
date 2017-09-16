//
//  CommonView.swift
//  ReuseViewUsingSubview
//
//  Created by sandesh sardar on 16/09/17.
//  Copyright © 2017 sandesh sardar. All rights reserved.
//

import UIKit

class CommonView: UIView {
    
    @IBOutlet weak var lblCommon: UILabel!
    
    @IBAction func btnCommon(_ sender: Any) {
    
    }
    
    //to create instance of UIView class using nibName
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "CommonView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}
