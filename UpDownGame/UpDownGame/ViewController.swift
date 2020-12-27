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
        let integerValue: Int = Int(sender.value)
        SliderValueLabel.text = String(integerValue)
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: nil , message: message,preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) {
            (action) in self.reset()
        }
        
        alert.addAction(okAction)
        present(alert,
                animated: true,
                completion: nil )
    }
    
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
        let hitValue: Int = Int(slider.value) // 소수점 제거
        slider.value = Float(hitValue) // slider는 실수만 받음. slider only Float
        
        tryCount = tryCount + 1
        tryCountLabel.text = "\(tryCount) / 5"
        
        
        if randomValue == hitValue {
            //print("YOU HIT!!")
            showAlert(message: "YOU HIT!")
            reset()
            return
        } else if  tryCount >= 5 {
            //print("You Lose...")
            showAlert(message: "You lose...")
            reset()
            return
        } else if randomValue > hitValue {
            slider.minimumValue = Float(hitValue)
            minimumValueLable.text = String(hitValue)
        } else {
            slider.maximumValue = Float(hitValue)
            maximumValueLable.text = String(hitValue)
        }
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

