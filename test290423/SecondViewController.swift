//
//  SecondViewController.swift
//  test290423
//
//  Created by merim kasenova on 29/4/23.
//

import Foundation
import SnapKit

class SecondViewController: UIViewController {
    
    lazy var secondLabel: UILabel = {
        let view = UILabel()
        view.text = "Главная"
        view.textColor = .white
        view.font = .boldSystemFont(ofSize: 30)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondSetupSubviews()
        
        view.backgroundColor = .systemPink
        
    }
    func secondSetupSubviews() {
        
        view.addSubview(secondLabel)
        secondLabel.snp.makeConstraints{make in
            make.center.equalToSuperview()
        }
        
    }
}
