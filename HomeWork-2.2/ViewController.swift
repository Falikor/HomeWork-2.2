//
//  ViewController.swift
//  HomeWork-2.2
//
//  Created by Татьяна Татьяна on 20.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewPrint: UIView!
    @IBOutlet weak var redLabel: UILabel! 
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alfaLabel: UILabel!
    
    @IBOutlet weak var rSlider: UISlider! {
        didSet {
            rSlider.tintColor = UIColor.red
            rSlider.value = 0
        }
    }
    @IBOutlet weak var gSlaider: UISlider! {
        didSet {
            gSlaider.tintColor = UIColor.green
            gSlaider.value = 0
        }
    }
    
    @IBOutlet weak var bSlaider: UISlider! {
        didSet {
            bSlaider.tintColor = UIColor.blue
            bSlaider.value = 0
        }
    }
    
    @IBOutlet weak var aSlaider: UISlider! {
        didSet {
            aSlaider.tintColor = UIColor.black
            aSlaider.value = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func changColor() {
        viewPrint.backgroundColor = UIColor(displayP3Red: CGFloat(rSlider.value), green: CGFloat(gSlaider.value), blue: CGFloat(bSlaider.value), alpha: CGFloat(aSlaider.value))
    }
    
    @IBAction func redSender(_ sender: UISlider) {
        changColor()
        redLabel.text = String((sender.value * 100).rounded() / 100)
        
    }
    
    @IBAction func greenSender(_ sender: UISlider) {
        changColor()
        greenLabel.text = String((sender.value * 100).rounded() / 100)
    }
    
    @IBAction func blueSender(_ sender: UISlider) {
        changColor()
        blueLabel.text = String((sender.value * 100).rounded() / 100)
    }
    
    @IBAction func alfaSender(_ sender: UISlider) {
        changColor()
        alfaLabel.text = String((sender.value * 100).rounded() / 100)
    }
}

