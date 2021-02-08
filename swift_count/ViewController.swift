//
//  ViewController.swift
//  swift_count
//
//  Created by 神山駿 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var count_label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count_label.text = "0"
        
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        count_label.text = String(count)
        
        if (count >= 10){
            changeColor()
        }
    }
    
    @IBAction func minas(_ sender: Any) {
        count -= 1
        count_label.text = String(count)
        if (count < 9) {
            resetColor()
        }
    }
    
    func changeColor() {
        count_label.textColor = .yellow
    }
    
    func resetColor(){
        count_label.textColor = .white
    }
}

