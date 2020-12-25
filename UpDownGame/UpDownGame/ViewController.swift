//
//  ViewController.swift
//  UpDownGame
//
//  Created by Jasper Park on 2020/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    var randomValue: Int = 0
    var tryCount: Int = 0
    
    // 요소와 연결
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel: UILabel!
    @IBOutlet weak var SliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLable: UILabel!
    @IBOutlet weak var maximumValueLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.value = 15
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
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
        reset()
    }
    
    func reset(){
        print("reset!")
        // ... => 범위 연산자
        randomValue = Int.random(in: 0...30)
        print(randomValue)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLable.text = "0"
        maximumValueLable.text = "30"
        SliderValueLabel.text = "15"
    }
    
}

