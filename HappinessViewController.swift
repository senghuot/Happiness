//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Senghuot Lim on 3/27/16.
//  Copyright © 2016 Home Brew. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource {

    var happiness: Int = 0 {
        didSet {
            happiness = min(max(0, happiness), 100)
            updateUI()
        }
    }
    
    func updateUI() {
        faceView?.setNeedsDisplay()
    }
    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
            faceView.addGestureRecognizer(UIPinchGestureRecognizer(target: faceView, action: "scale:"))
        }
    }
    
    @IBAction func changeHappiness(gesture: UIPanGestureRecognizer) {
        switch gesture.state {
        case .Ended: fallthrough
        case .Changed:
            let traslation = gesture.translationInView(faceView)
            let happinessChange = -Int(traslation.y / 4)
            
            if happinessChange != 0 {
                happiness += happinessChange
                gesture.setTranslation(CGPointZero, inView: faceView)
            }
            
        default: break
        }
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness-50)/50
    }

}
