//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Senghuot Lim on 3/27/16.
//  Copyright © 2016 Home Brew. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController {

    var happiness: Int = 5 {
        didSet {
            happiness = min(max(0, happiness), 100)
            updateUI()
        }
    }
    
    func updateUI() {
        
    }

}
