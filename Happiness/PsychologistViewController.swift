//
//  PsychologistViewController.swift
//  Happiness
//
//  Created by Senghuot Lim on 3/30/16.
//  Copyright © 2016 Home Brew. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let hvc = segue.destinationViewController as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "showSad":
                    hvc.happiness = 0
                case "showHappy":
                    hvc.happiness = 100
                default:
                    hvc.happiness = 50
                    break
                }
            }
        }
    }
}
