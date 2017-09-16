//
//  CommonView.swift
//  ReuseViewUsingSubview
//
//  Created by sandesh sardar on 16/09/17.
//  Copyright © 2017 sandesh sardar. All rights reserved.
//

import UIKit

protocol CommonViewDeleget {
    func btnCommonClick()
}

class CommonView: UIView {
    
    var deleget : CommonViewDeleget?
    
    @IBOutlet weak var lblCommon: UILabel!
        
    @IBAction func btnCommon(_ sender: Any) {
    
        self.deleget?.btnCommonClick()
    }
}
