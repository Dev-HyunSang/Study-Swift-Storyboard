//
//  ViewController.swift
//  UpDownGame
//
//  Created by Jasper Park on 2020/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    // 요소와 연결
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 이벤트에 반응
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    
    }
    
    //
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_sender: UIButton) {
        print("touch up reset button")
    }
}

