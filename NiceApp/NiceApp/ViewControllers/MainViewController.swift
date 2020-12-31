//
//  ViewController.swift
//  NiceApp
//
//  Created by Jasper Park on 2020/12/30.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Mary Christmas"
        label.font = UIFont.boldSystemFont(ofSize: 50)
        return label
    
    }()
 
    let animationView : AnimationView = {
        let animationView = AnimationView(name: "12358-christmas-loading")
        animationView.frame = CGRect(x: 0, y:0, width: 400, height: 400)
        
        animationView.contentMode = .scaleAspectFill
        return animationView
        
    }()
    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        // 애니메이션 이후 실행
        animationView.play{ (finish) in
            print("애니메이션이 끝났다.")
            
            self.view.backgroundColor = .white
            // 애니메이션 끝난 후 제거됨.
            self.animationView.removeFromSuperview( )
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


}

