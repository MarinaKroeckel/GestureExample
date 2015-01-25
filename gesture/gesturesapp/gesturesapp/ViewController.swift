//
//  ViewController.swift
//  gesturesapp
//
//  Created by student on 17.01.15.
//  Copyright (c) 2015 student. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var rotateView: UIView!
    @IBOutlet weak var tapView: UIView!
    @IBOutlet weak var longPressView: UIView!
    @IBOutlet weak var panView: UIView!
    @IBOutlet weak var pinchView: UIView!
    @IBOutlet weak var swipeView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tapGesture = UITapGestureRecognizer(target: self, action: "tappedView:")
        tapGesture.numberOfTapsRequired = 1
        tapView.addGestureRecognizer(tapGesture)
        
        var longPress = UILongPressGestureRecognizer(target: self, action: "longPressAction:")
        longPress.numberOfTapsRequired =  1
        longPressView.addGestureRecognizer(longPress)
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tappedView(marinasGestureRecognizer: UITapGestureRecognizer){
        println("Tap")
    }
    
    func longPressAction(sender: UILongPressGestureRecognizer) {
        println("LongPress")
    }
    
    @IBAction func rotateAction(sender: UIRotationGestureRecognizer) {
        println("Rotate")
       
        sender.view!.transform = CGAffineTransformRotate(sender.view!.transform, sender.rotation)
        sender.rotation = 0

    }
    
    @IBAction func panAction(sender: UIPanGestureRecognizer) {
        println("Pan")
        
        let translation = sender.translationInView(self.view)
        sender.view!.center = CGPoint(x:sender.view!.center.x + translation.x,
            y:sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: self.view)
    }

    @IBAction func pinchAction(sender: UIPinchGestureRecognizer) {
        println("Pinch")
        
        sender.view!.transform = CGAffineTransformScale(sender.view!.transform,
            sender.scale, sender.scale)
        sender.scale = 1
    }
    
    @IBAction func swipeGesture(sender: UISwipeGestureRecognizer) {
        println("Swipe")

    }
    
    @IBAction func b(sender: AnyObject) {
    }
    
}

