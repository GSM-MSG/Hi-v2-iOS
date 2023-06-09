//
//  BaseViewController.swift
//  Hiv2
//
//  Created by 정윤서 on 2023/05/11.
//

import UIKit
import SnapKit
import Then

class BaseVC: UIViewController {
    let bound = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addView()
        setLayout()
        addTarget()
        delegate()
        configNavigation()
        setupBackgroundIfNotSet()
    }
    
    private func setupBackgroundIfNotSet() {
        if self.view.backgroundColor == nil {
            self.view.backgroundColor = .white
        }
    }
    
    func addView() {}
    func setLayout() {}
    func addTarget() {}
    func delegate() {}
    func configNavigation() {}
}
