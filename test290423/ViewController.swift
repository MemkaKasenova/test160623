//
//  ViewController.swift
//  test290423
//
//  Created by merim kasenova on 29/4/23.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    let userDefaults = UserDefaults.standard
    
    lazy var icon: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(contentsOfFile: "ic_icon")
        return view
    }()
    
    lazy var label: UILabel = {
        let view = UILabel()
        view.text = "Welcome to our application APP!"
        return view
    }()
    
    lazy var button: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Start!", for: .normal)
        view.backgroundColor = .systemRed
        view.setTitleColor(.white, for: .normal)
        view.tintColor = .white
        view.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
        
    }
    
    @objc func goToNextPage() {
        
        userDefaults.set(true, forKey: "saw")
        
        let second = SecondViewController()
        navigationController?.pushViewController(second, animated: false)
        
    }
    
    func setupSubviews() {
        
        view.addSubview(icon)
        icon.snp.makeConstraints{make in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        view.addSubview(label)
        label.snp.makeConstraints{make in
            make.center.equalToSuperview()
        }
        
        view.addSubview(button)
        button.snp.makeConstraints{make in
            make.bottom.equalToSuperview().offset(-50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(44)
        }
    }
}


