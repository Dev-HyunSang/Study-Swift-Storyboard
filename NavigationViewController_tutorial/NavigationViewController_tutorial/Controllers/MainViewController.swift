//
//  MainViewController.swift
//  NavigationViewController_tutorial
//
//  Created by Jasper Park on 2021/01/02.
//  Copyright © 2021 Tuentuenna. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //Title
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "메인화면"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.textColor = UIColor.white
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
