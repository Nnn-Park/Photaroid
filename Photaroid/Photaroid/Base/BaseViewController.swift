//
//  BaseViewController.swift
//  Photaroid
//
//  Created by 박재형 on 7/22/24.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureLayout()
        configureUI()
        configureAction()
        
        view.backgroundColor = .white
    }
    
    func configureHierarchy() { }
    
    func configureLayout() { }
    
    func configureUI() { }
    
    func configureAction() { }
    
}
