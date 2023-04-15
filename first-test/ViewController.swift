//
//  ViewController.swift
//  first-test
//
//  Created by Macvps on 4/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var plusBtnView: UIButton!
    @IBOutlet var numLabel: UILabel!
    @IBOutlet var minusBtnView: UIButton!
    private var count: Int = 0
    
    private func add() {
        if (count > 99) {
            count = 0
        }else{
            count += 1
        }
        self.numLabel.text = String(count)
    }
    
    private func minus() {
        if (count < 1) {
            count = 100
        }else{
            count -= 1
        }
        self.numLabel.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupView()
    }
    
    private func setupView() {
        self.numLabel.text = String(count)
        self.plusBtnView.layer.cornerRadius = 10
        self.minusBtnView.layer.cornerRadius = 10
    }

    @IBAction func plusBtnAction(_ sender: Any) {
        self.add()
    }
    
    
    @IBAction func minusBtnAction(_ sender: Any) {
        minus()
    }
    
    
    
}

