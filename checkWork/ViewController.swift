//
//  ViewController.swift
//  checkWork
//
//  Created by Tommy on 2020/12/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func add() {
        count += 1
        updateUI()
    }

    @IBAction func minus() {
        count -= 1
        updateUI()
    }
    
    @IBAction func double() {
        count *= 2
        updateUI()
    }
    
    @IBAction func half() {
        count /= 2
        updateUI()
    }
    
    @IBAction func clear() {
        count = 0
        updateUI()
    }
    
    func updateUI() {
        label.text = String(count)
        if count < 0 {
            label.textColor = .blue
        } else if count >= 10 {
            label.textColor = .red
        } else {
            label.textColor = .black
        }
    }
}

