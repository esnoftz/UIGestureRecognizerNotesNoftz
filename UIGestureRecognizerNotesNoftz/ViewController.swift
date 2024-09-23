//
//  ViewController.swift
//  UIGestureRecognizerNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 9/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // add the gesture recognizers to whatever element you want them to be recognizing from
        

    }

    
    // Tap gesture recognizer
    @IBAction func tapScreenAction(_ sender: UITapGestureRecognizer) {
        
        view.backgroundColor = UIColor.red
        // gets location of where the user taps in view
        var tappedLoc = sender.location(in: view)
        // changes center of the label to be at the place where the user tapped
        labelOutlet.center = tappedLoc
        // debugging
        print("tapped")
        
        // gets rid of keyboard when the user taps anywhere on the screen
        textFieldOutlet.resignFirstResponder()
        
    }
    
    
    // Pan gesture recognizer
    @IBAction func panAction(_ sender: UIPanGestureRecognizer) {
        
        // Gets called a LOT
        var pannedLoc = sender.location(in: view)
        imageOutlet.center = pannedLoc
        // debugging
        print("panning")
        
        // MUST MAKE USER INTERACTION ENABLED IN INSPECTOR PANEL!!!
        
    }
    
    
    
    
    
}

