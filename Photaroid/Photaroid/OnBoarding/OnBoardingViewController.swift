//
//  OnBoardingViewController.swift
//  Photaroid
//
//  Created by 박재형 on 7/22/24.
//

import UIKit

final class OnBoardingViewController: BaseViewController {
    
    private let onBoardingView = OnBoardingView()
    
    override func loadView() {
        view = onBoardingView
        view.backgroundColor = .white
    }
    
    override func configureAction() {
        onBoardingView.startButton.addTarget(self, action: #selector(startButtonClicked), for: .touchUpInside)
    }
    
    @objc func startButtonClicked() {
        let profileSettingVC = ProfileSettingViewController()
        
        navigationController?.pushViewController(profileSettingVC, animated: true)
    }
}
